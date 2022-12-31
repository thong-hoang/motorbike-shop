package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Banner;
import org.junit.Test;

import static org.junit.Assert.*;

public class BannerDAOTest {
    private final BannerDAO bannerDAO = BannerDAO.getInstance();

    @Test
    public void testFindAll() {
        String sortType = "DESC";
        int pageSize = 5;
        String sortField = "created_time";
        int index = 1;
        String keyword = "";

        bannerDAO.findAll(keyword, sortField, sortType, pageSize, index).forEach(System.out::println);

        assertTrue(bannerDAO.findAll(keyword, sortField, sortType, pageSize, index).size() > 0);
    }

    @Test
    public void testCreateBanner() {
        Banner banner = new Banner("elite", "Vui cùng elite", true);

        assertTrue(bannerDAO.save(banner));
    }

    @Test
    public void testFindBannerById() {
        Integer id = 1;
        Banner banner = bannerDAO.findById(id);

        assertEquals("Vui cùng elite", banner.getName());
    }

    @Test
    public void testUpdateBanner() {
        Integer id = 1;
        Banner banner = bannerDAO.findById(id);
        banner.setImagePath("elite.jpg");

        assertTrue(bannerDAO.update(banner));

        assertEquals("elite.jpg", bannerDAO.findById(id).getImagePath());
    }

    @Test
    public void testDeleteBanner() {
        Integer id = 1;

        bannerDAO.delete(id);

        assertNull(bannerDAO.findById(id));
    }

    @Test
    public void testCheckImagePathExists() {
        String imagePath = "elite.jpg";
        assertTrue(bannerDAO.checkImagePathExists(imagePath));
    }

    @Test
    public void testUpdateEnabledStatus() {
        Integer id = 1;
        boolean enabled = false;
        bannerDAO.updateEnabledStatus(id, enabled);
        assertFalse(bannerDAO.findById(id).isEnabled());
    }

    @Test
    public void testCountByKeyword() {
        String keyword = "";
        assertTrue(bannerDAO.countByKeyword(keyword) > 0);
    }
}