package edu.nlu.motorbike_shop.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Base64;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Employee {
    private Integer id;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private byte[] image;
    private String email;
    private String password;
    private boolean enabled;
    private Set<Role> roles = new HashSet<>();
    private Address address;
    private String base64Image;

    public Employee(Integer id, String firstName, String lastName, String phoneNumber, Address address, byte[] image,
                    String email, boolean enabled) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.image = image;
        this.email = email;
        this.enabled = enabled;
    }

    public Employee(String firstName, String lastName, String phoneNumber, Address address, byte[] image, String email,
                    String password, boolean enabled) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.image = image;
        this.email = email;
        this.password = password;
        this.enabled = enabled;
    }

    public Employee(Integer id, String firstName, String lastName, String phoneNumber, Address address, byte[] image,
                    String email, String password, boolean enabled) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.image = image;
        this.email = email;
        this.password = password;
        this.enabled = enabled;
    }

    public Employee(Integer id, String firstName, String lastName, String email, byte[] image) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.image = image;
    }

    public Employee(Integer id, String firstName, String lastName, String email) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    public Employee(String firstName, String lastName, String phoneNumber, Address address, String email, String password, boolean enabled) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.email = email;
        this.password = password;
        this.enabled = enabled;
    }

    public void addRole(Role role) {
        this.roles.add(role);
    }

    public String getBase64Image() {
        return (this.image == null) ? null : Base64.getEncoder().encodeToString(this.image);
    }

    @Override
    public String toString() {
        return "Employee{" + "id=" + id + ", firstName='" + firstName + '\'' + ", lastName='" + lastName + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' + ", email='" + email + '\'' + ", password='" + password + '\'' +
                ", enabled=" + enabled + ", roles=" + roles + ", address=" + address + '}';
    }
}
