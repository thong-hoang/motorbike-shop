package edu.nlu.motorbike_shop.dao;

import edu.nlu.motorbike_shop.entity.Address;
import edu.nlu.motorbike_shop.entity.Customer;
import org.junit.Test;

import java.io.IOException;

import static org.junit.Assert.*;

public class CustomerDAOTest {

    private final CustomerDAO customerDAO = CustomerDAO.getInstance();
    @Test
    public void testFindAll() {
        String sortType = "ASC";
        int pageSize = 5;
        String sortField = "id";
        int index = 1;
        String keyword = "";

        customerDAO.findAll(keyword, sortField, sortType, pageSize, index).forEach(System.out::println);

        assertTrue(customerDAO.findAll(keyword, sortField, sortType, pageSize, index).size() > 0);
    }
    @Test
    public void testCreateCustomer() throws IOException {
        Address address = new Address("đường số 7", "mỹ nhơn", "ba tri", "bến tre");
        Customer customer = new Customer("Vinh", "Hoàng", "0377", address,
                "vinh@gmail.com", "vinh123", true);

        assertTrue(customerDAO.save(customer));
    }
    @Test
    public void testFindCustomerById() {
        Integer id = 1;
        Customer customer = customerDAO.findById(id);
        System.out.println(customer);

        assertEquals("vinh@gmail.com", customer.getEmail());
    }
    @Test
    public void testUpdateCustomer() {
        Integer id = 1;
        Customer customer = customerDAO.findById(id);
        customer.setLastName("Hoàng Nguyễn");
        customer.setAddress(new Address(1, "217/NQ đường số 7", "mỹ nhơn", "ba tri", "bến tre"));

        assertTrue(customerDAO.update(customer));

        assertEquals("Hoàng Nguyễn", customerDAO.findById(id).getLastName());
        assertEquals("217/NQ đường số 7", customerDAO.findById(id).getAddress().getStreet());
    }
    @Test
    public void testDeleteCustomer() {
        Integer id = 1;

        customerDAO.delete(id);

        assertNull(customerDAO.findById(id));
    }
    @Test
    public void testCheckEmailExists() {
        String email = "vinh@gmail.com";
        assertTrue(customerDAO.checkEmailExists(email));
    }
    @Test
    public void testUpdateEnabledStatus() {
        Integer id = 1;
        boolean enabled = false;
        customerDAO.updateEnabledStatus(id, enabled);
        assertFalse(customerDAO.findById(id).isEnabled());
    }
    @Test
    public void testCountByKeyword() {
        String keyword = "";
        assertTrue(customerDAO.countByKeyword(keyword) > 0);
    }
}