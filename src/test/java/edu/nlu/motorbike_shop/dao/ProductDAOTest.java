package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Brand;
import edu.nlu.motorbike_shop.entity.Category;
import edu.nlu.motorbike_shop.entity.Product;
import edu.nlu.motorbike_shop.entity.Status;
import org.junit.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

public class ProductDAOTest {

    private final ProductDAO productDAO = ProductDAO.getInstance();

    @Test
    public void testFindAll() {
        String sortType = "ASC";
        int pageSize = 2;
        String sortField = "id";
        int index = 1;

        productDAO.findAll("", sortField, sortType, pageSize, index).forEach(System.out::println);

        assertTrue(productDAO.findAll("", sortField, sortType, pageSize, index).size() > 0);
    }

    @Test
    public void testSave() {
        Brand brand = new Brand();
        brand.setId(1);
        Category category = new Category();
        category.setId(3);
        Product product = new Product("winner-x-tieuchuan-2022.jpg", "Xe máy Winner X Tiêu chuẩn 2022",
                "Xe-máy-Winner-X-Tiêu-chuẩn-2022", brand, category, "Mô tả", 50000,  0,  10);

        Status status = new Status();
        status.setId(1);
        Status status1 = new Status();
        status1.setId(2);

        product.addStatus(status);
        product.addStatus(status1);

        assertTrue(productDAO.save(product));
    }

    @Test
    public void testFindById() {
        Product product = productDAO.findById(1);
        assertEquals("honda winner x 2022", product.getName());
    }

    @Test
    public void testUpdate() {
        Product product = productDAO.findById(1);

        Status status = new Status();
        status.setId(2);
        Status status1 = new Status();
        status1.setId(3);

        List<Status> statuses = new ArrayList<>();
        statuses.add(status);
        statuses.add(status1);

        product.setStatuses(statuses);

        assertTrue(productDAO.update(product));
    }

    @Test
    public void testDelete() {
        productDAO.delete(1);

        assertNull(productDAO.findById(1));
    }

    @Test
    public void testFindByName() {
        System.out.println(productDAO.findByName("Winner X tiêu chuẩn 2022"));
    }

    @Test
    public void testFindAllActive() {
        String sortType = "DESC";
        int pageSize = 9;
        String sortField = "last_updated_time";
        int index = 1;

        productDAO.findAllActive("", sortField, sortType, pageSize, index).forEach(System.out::println);

        assertTrue(productDAO.findAll("", sortField, sortType, pageSize, index).size() > 0);
    }

    @Test
    public void testCountActive() {
        System.out.println(productDAO.countActive());
    }

    @Test
    public void testCountByKeywordActive() {
        System.out.println(productDAO.countByKeywordActive(""));
    }
}