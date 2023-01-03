package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Category;
import org.junit.Test;

import static org.junit.Assert.*;

public class CategoryDAOTest {
    private final CategoryDAO categoryDAO = CategoryDAO.getInstance();

    @Test
    public void testFindAll() {
        String sortType = "ASC";
        int pageSize = 4;
        String sortField = "id";
        int index = 1;
        String keyword = "";

        categoryDAO.findAll(keyword, sortField, sortType, pageSize, index).forEach(System.out::println);

        assertTrue(categoryDAO.findAll(keyword, sortField, sortType, pageSize, index).size() > 0);
    }

    @Test
    public void testCountByKeyword() {
        String keyword = "";
        assertTrue(categoryDAO.countByKeyword(keyword) > 0);
    }

    @Test
    public void testCreateRootCategory() {
        Category category = new Category("Xe máy", "xe-may", 0, true);

        assertTrue(categoryDAO.save(category));
    }

    @Test
    public void testCreateChildCategory() {
        Category category = new Category("Xe số", "Xe-số", 1, true);

        assertTrue(categoryDAO.save(category));
    }

    @Test
    public void testFindCategoryById() {
        Integer id = 1;
        Category category = categoryDAO.findById(id);

        assertEquals("Xe máy", category.getName());
    }

    @Test
    public void testUpdateCategory() {
        Integer id = 1;
        Category category = categoryDAO.findById(id);
        category.setAlias("Xe-máy");

        categoryDAO.update(category);

        assertEquals("Xe-máy", category.getAlias());
    }

    @Test
    public void testUpdateStatus() {
        Integer id = 1;

        categoryDAO.updateEnabledStatus(id, false);

        assertFalse(categoryDAO.findById(id).isEnabled());
    }

    @Test
    public void testGetListCategories() {
        categoryDAO.findAllCategory().forEach(System.out::println);
    }
}