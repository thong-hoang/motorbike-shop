package edu.nlu.motorbike_shop.dao;

import org.junit.Test;

import static org.junit.Assert.assertTrue;

public class BrandDAOTest {
    private final BrandDAO brandDAO = BrandDAO.getInstance();

    @Test
    public void testFindAll() {
        String sortType = "ASC";
        int pageSize = 5;
        String sortField = "id";
        int index = 1;
        String keyword = "";

        brandDAO.findAll(keyword, sortField, sortType, pageSize, index).forEach(System.out::println);

        assertTrue(brandDAO.findAll(keyword, sortField, sortType, pageSize, index).size() > 0);
    }

    @Test
    public void testCountByKeyword() {
        String keyword = "";
        assertTrue(brandDAO.countByKeyword(keyword) > 0);
    }

//    @Test
//    public void testCreateRootCategory() {
//        Category category = new Category("Xe máy", "xe-may", 0, true);
//
//        assertTrue(brandDAO.save(category));
//    }
//
//    @Test
//    public void testCreateChildCategory() {
//        Category category = new Category("Xe số", "Xe-số", 1, true);
//
//        assertTrue(brandDAO.save(category));
//    }
//
//    @Test
//    public void testFindCategoryById() {
//        Integer id = 1;
//        Category category = brandDAO.findById(id);
//
//        assertEquals("Xe máy", category.getName());
//    }
//
//    @Test
//    public void testUpdateCategory() {
//        Integer id = 1;
//        Category category = brandDAO.findById(id);
//        category.setAlias("Xe-máy");
//
//        brandDAO.update(category);
//
//        assertEquals("Xe-máy", category.getAlias());
//    }
//
//    @Test
//    public void testUpdateStatus() {
//        Integer id = 1;
//
//        brandDAO.updateEnabledStatus(id, false);
//
//        assertFalse(brandDAO.findById(id).isEnabled());
//    }
//
//    @Test
//    public void testGetListCategories() {
//        brandDAO.findAllCategory().forEach(System.out::println);
//    }
}
