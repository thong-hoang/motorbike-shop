package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Brand;
import edu.nlu.motorbike_shop.entity.Category;
import org.junit.Test;

import java.util.HashMap;
import java.util.Map;

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

    @Test
    public void test() {
        Map<Category, String> categoryMap = new HashMap<>();

        CategoryDAO.getInstance().findAllChildCategory().forEach(category -> categoryMap.put(category, ""));
        Brand brand = brandDAO.findById(1);
        System.out.println(brand);
        brand.getCategories().forEach(category -> categoryMap.put(category, "checked"));

        for (Map.Entry<Category, String> categoryStringEntry : categoryMap.entrySet()) {
            System.out.println(categoryStringEntry.getKey() + " " + categoryStringEntry.getValue());
        }
    }
}
