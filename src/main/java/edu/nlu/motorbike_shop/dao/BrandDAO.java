package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Brand;
import edu.nlu.motorbike_shop.util.DBUtils;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.List;

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


                    brands.add(new Brand(id, name, imagePath, enabled));
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

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {

            stm.setString(1, brand.getName());
            stm.setString(2, brand.getImagePath());
            stm.setBoolean(3, brand.isEnabled());

            return stm.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Check if the image path is already used.
     *
     * @param name The image path to be checked.
     * @return True if the image path is already in use, false otherwise.
     */
    public boolean checkNameExists(String name) {
        String sql = "SELECT COUNT(name) FROM brands WHERE name = ?";
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, name);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1) > 0;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    /**
     * Update a brand in the database.
     *
     * @param brand The brand entity to be updated.
     * @return True if the brand is updated successfully, false otherwise.
     * @throws SQLIntegrityConstraintViolationException If the name is already in use.
     */
    public boolean update(Brand brand) {
        String sql = "UPDATE brands SET name = ?, image_path = ?, enabled = ? WHERE id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, brand.getName());
            stm.setString(2, brand.getImagePath());
            stm.setBoolean(3, brand.isEnabled());
            stm.setInt(4, brand.getId());

            return stm.executeUpdate() > 0;

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

                    return new Brand(id, name, imagePath, enabled);
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
}
