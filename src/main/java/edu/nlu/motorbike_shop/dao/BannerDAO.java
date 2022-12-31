package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Banner;
import edu.nlu.motorbike_shop.util.DBUtils;

import java.io.Serializable;
import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Provides APIs for manipulating data with the database
 *
 * @author Hoang Pham Thong
 * @version 1.0
 * @since 2022-11-9
 */
public class BannerDAO implements Serializable {
    private static BannerDAO instance;

    private BannerDAO() {

    }

    public static BannerDAO getInstance() {
        if (instance == null)
            instance = new BannerDAO();

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
    public List<Banner> findAll(String keyword, String sortField, String sortType, int pageSize, int index) {
        List<Banner> banners = new ArrayList<>();
        String sql = "SELECT id, image_path, name, created_time, enabled FROM banners WHERE name LIKE ? " +
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
                    String imagePath = rs.getString(2);
                    String name = rs.getString(3);
                    Date createdTime = rs.getTimestamp(4);
                    boolean enabled = rs.getBoolean(5);


                    banners.add(new Banner(id, imagePath, name, createdTime, enabled));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return banners;
    }

    /**
     * Save a banner to the database.
     *
     * @param banner The banner entity to be saved.
     * @return True if the banner is saved successfully, false otherwise.
     */
    public boolean save(Banner banner) {
        String sql = "INSERT INTO banners (image_path, name, created_time, enabled) VALUES (?, ?, ?, ?)";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {

            stm.setString(1, banner.getImagePath());
            stm.setString(2, banner.getName());
            stm.setTimestamp(3, new Timestamp(System.currentTimeMillis()));
            stm.setBoolean(4, banner.isEnabled());

            return stm.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /**
     * Check if the image path is already used.
     *
     * @param imagePath The image path to be checked.
     * @return True if the image path is already in use, false otherwise.
     */
    public boolean checkImagePathExists(String imagePath) {
        String sql = "SELECT COUNT(image_path) FROM banners WHERE image_path = ?";
        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, imagePath);

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
     * Update a banner in the database.
     *
     * @param banner The banner entity to be updated.
     * @return True if the banner is updated successfully, false otherwise.
     * @throws SQLIntegrityConstraintViolationException If the name is already in use.
     */
    public boolean update(Banner banner) {
        String sql = "UPDATE banners SET image_path = ?, name = ?, enabled = ? WHERE id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setString(1, banner.getImagePath());
            stm.setString(2, banner.getName());
            stm.setBoolean(3, banner.isEnabled());
            stm.setInt(4, banner.getId());

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
    public Banner findById(Integer id) {
        String sql = "SELECT * FROM banners WHERE id = ?";

        try (Connection conn = DBUtils.makeConnection();
             PreparedStatement stm = conn.prepareStatement(sql)) {
            stm.setInt(1, id);

            try (ResultSet rs = stm.executeQuery()) {
                if (rs.next()) {
                    String imagePath = rs.getString(2);
                    String name = rs.getString(3);
                    Date createdTime = rs.getTimestamp(4);
                    boolean enabled = rs.getBoolean(5);

                    return new Banner(id, imagePath, name, createdTime, enabled);
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
        String sql = "DELETE FROM banners WHERE id = ?";

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
        String sql = "SELECT COUNT(id) FROM banners";
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
        String sql = "SELECT COUNT(id) FROM banners WHERE name LIKE ?";
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
     * Update enabled status of a banner.
     *
     * @param id      The id of the banner to be updated.
     * @param enabled The updated enabled status.
     */
    public void updateEnabledStatus(Integer id, boolean enabled) {
        String sql = "UPDATE banners SET enabled = ? WHERE id = ?";

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