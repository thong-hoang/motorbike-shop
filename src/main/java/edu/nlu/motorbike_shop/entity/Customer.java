package edu.nlu.motorbike_shop.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Customer {
    private Integer id;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private Address address;
    private String email;
    private String password;
    private Date createdTime;
    private String authenticationType;
    private String verificationCode;
    private boolean enabled;

    public Customer(String firstName, String lastName, String phoneNumber, Address address, String email, String password, boolean enabled) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.email = email;
        this.password = password;
        this.enabled = enabled;
    }

    public Customer(Integer id, String firstName, String lastName, String phoneNumber, String email, Address address, boolean enabled) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.enabled = enabled;
    }

    public Customer(Integer id, String firstName, String lastName, String phoneNumber, Address address, String email, Date createdTime, boolean enabled) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.email = email;
        this.createdTime = createdTime;
        this.enabled = enabled;
    }

    public Customer(Integer id, String firstName, String lastName, String phoneNumber, Address address, String email, String password, boolean enabled) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.email = email;
        this.password = password;
        this.enabled = enabled;
    }
}