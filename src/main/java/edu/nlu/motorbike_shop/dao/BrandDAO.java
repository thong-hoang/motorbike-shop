package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Brand;
import edu.nlu.motorbike_shop.entity.Category;
import edu.nlu.motorbike_shop.entity.Role;
import edu.nlu.motorbike_shop.util.DBUtils;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Provides APIs for manipulating data with the database
 *
 * @author Hoang Pham Thong
 * @version 1.0
 * @since 2022-11-9
 */
public class BrandDAO implements Serializable {
    private static BrandDAO instance;

    private BrandDAO() {

    }

    public static BrandDAO getInstance() {
        if (instance == null)
            instance = new BrandDAO();

        return instance;
    }

    /**
     * Return list of categories by brand id.
     *
     * @param id The id of the brand.
     * @return List of brand entities.
     */
    public List<Category> findCategoriesByBrandId(Integer id) {
        List<Category> categories = new ArrayList<>();
        String sql = "SELECT c.* FROM brand_category br INNER JOIN categories c ON br.category_id = c.id " +
                "WHERE br.brand_id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    Integer categoryId = rs.getInt(1);
                    String categoryName = rs.getString(2);

                    Category category = new Category();
                    category.setId(categoryId);
                    category.setName(categoryName);

                    categories.add(category);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return categories;
    }

    /**
     * Returns all instance of banner with pagination
     *
     * @param sortType  Specify the sort type, ASC or DESC.
     * @param pageSize  Specify the number of records per page.
     * @param sortField Specify the column name to sort.
     * @param index     Specify the page index.
     * @return List of banner entities.
     */
    public List<Brand> findAll(String keyword, String sortField, String sortType, int pageSize, int index) {
        List<Brand> brands = new ArrayList<>();
        String sql = "SELECT * FROM brands WHERE name LIKE ? " +
                "ORDER BY " + sortField + " " + sortType + " LIMIT ? OFFSET ?";

        // use try-with-resources Statement to auto close the connection.
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {

            stm.setString(1, "%" + keyword + "%");
            stm.setInt(2, pageSize);
            stm.setInt(3, (index - 1) * pageSize);

            // use try-with-resources Statement to auto close the ResultSet.
            try (ResultSet rs = stm.executeQuery()) {
                // fetch data from result set
                while (rs.next()) {
                    Integer id = rs.getInt(1);
                    String name = rs.getString(2);
                    String imagePath = rs.getString(3);
                    boolean enabled = rs.getBoolean(4);
                    Brand brand = new Brand(id, name, imagePath, enabled);
                    findCategoriesByBrandId(id).forEach(brand::addCategory);

                    brands.add(brand);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return brands;
    }

    /**
     * Save a brand to the database.
     *
     * @param brand The brand entity to be saved.
     * @return True if the brand is saved successfully, false otherwise.
     */
    public boolean save(Brand brand) {
        String sql = "INSERT INTO brands (name, image_path, enabled) VALUES (?, ?, ?)";
        String sqlInsertBrandCategory = "INSERT INTO brand_category (brand_id, category_id) value(?, ?)";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
             PreparedStatement brandCategoryStm = conn.prepareStatement(sqlInsertBrandCategory)) {

            stm.setString(1, brand.getName());
            stm.setString(2, brand.getImagePath());
            stm.setBoolean(3, brand.isEnabled());

            stm.executeUpdate();

            ResultSet rs = stm.getGeneratedKeys();
            int brandKey;

            if (rs.next()) {
                brandKey = rs.getInt(1);

                Set<Category> categories = brand.getCategories();
                for (Category category : categories) {
                    brandCategoryStm.setInt(1, brandKey);
                    brandCategoryStm.setInt(2, category.getId());
                    brandCategoryStm.addBatch();
                }

                // execute multiple commands at the same time
                if (brandCategoryStm.executeBatch().length > 0) return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Delete a brand_category record from the database.
     *
     * @param brandId The id of the user.
     */
    public void deleteBrandCategory(Integer brandId) {
        String sql = "DELETE FROM brand_category WHERE brand_id = ?";
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, brandId);

            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Update a brand in the database.
     *
     * @param brand The brand entity to be updated.
     * @return True if the brand is updated successfully, false otherwise.
     * @throws SQLIntegrityConstraintViolationException If the name is already in use.
     */
    public boolean update(Brand brand) {
        String sqlUpdate = "UPDATE brands SET name = ?, image_path = ?, enabled = ? WHERE id = ?";
        String sqlInsertBrandCategory = "INSERT INTO brand_category (brand_id, category_id) value(?, ?)";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement brandStm = conn.prepareStatement(sqlUpdate);
             PreparedStatement brandCategoryStm = conn.prepareStatement(sqlInsertBrandCategory)) {
            brandStm.setString(1, brand.getName());
            brandStm.setString(2, brand.getImagePath());
            brandStm.setBoolean(3, brand.isEnabled());
            brandStm.setInt(4, brand.getId());

            brandStm.executeUpdate();

            deleteBrandCategory(brand.getId());

            Set<Category> categories = brand.getCategories();
            for (Category category : categories) {
                brandCategoryStm.setInt(1, brand.getId());
                brandCategoryStm.setInt(2, category.getId());
                brandCategoryStm.addBatch();
            }

            // execute multiple commands at the same time
            if (brandCategoryStm.executeBatch().length > 0) return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Retrieves a banner entity by its id.
     *
     * @param id An id specifying the id of the banner.
     * @return Banner entity if the banner entity with the given id exists, null otherwise.
     */
    public Brand findById(Integer id) {
        String sql = "SELECT * FROM brands WHERE id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    String name = rs.getString(2);
                    String imagePath = rs.getString(3);
                    boolean enabled = rs.getBoolean(4);
                    Brand brand = new Brand(id, name, imagePath, enabled);
                    findCategoriesByBrandId(id).forEach(brand::addCategory);

                    return brand;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Retrieves a brand entity by its name.
     *
     * @param name A name specifying the name of the brand.
     * @return Brand entity if the brand entity with the given name exists, null otherwise.
     */
    public Brand findByName(String name) {
        String sql = "SELECT id, name FROM brands WHERE name = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, name);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    Integer id = rs.getInt(1);
                    Brand brand = new Brand();
                    brand.setId(id);
                    brand.setName(name);

                    return brand;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Delete a banner from the database.
     *
     * @param id The id of the banner to be deleted.
     */
    public void delete(Integer id) {
        String sql = "DELETE FROM brands WHERE id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Total number of banners in the database.
     *
     * @return The number of banner entities.
     */
    public int count() {
        String sql = "SELECT COUNT(id) FROM brands";
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next())
                    return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return 0;
    }

    /**
     * Total results keyword search.
     *
     * @return The number of results. 0 if no results.
     */
    public int countByKeyword(String keyword) {
        String sql = "SELECT COUNT(id) FROM brands WHERE name LIKE ?";
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, "%" + keyword + "%");
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next())
                    return rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return 0;
    }

    /**
     * Update enabled status of a brand.
     *
     * @param id      The id of the banner to be updated.
     * @param enabled The updated enabled status.
     */
    public void updateEnabledStatus(Integer id, boolean enabled) {
        String sql = "UPDATE brands SET enabled = ? WHERE id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setBoolean(1, enabled);
            stm.setInt(2, id);

            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Retrieves all brand in the database.
     *
     * @return A list of brand entities.
     */
    public List<Brand> findAll() {
        List<Brand> brands = new ArrayList<>();
        String sql = "SELECT id, name FROM brands WHERE enabled = 1";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            try (ResultSet rs = stm.executeQuery()) {
                while (rs.next()) {
                    Integer id = rs.getInt(1);
                    String name = rs.getString(2);
                    Brand brand = new Brand();
                    brand.setId(id);
                    brand.setName(name);
                    brands.add(brand);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return brands;
    }
}
