package edu.nlu.motorbike_shop.entity;

import lombok.*;

import java.sql.Date;

@Getter
@Setter
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

    public Customer(Integer id, String firstName, String lastName, String phoneNumber, Address address, String email, String password, Date createdTime, String authenticationType, String verificationCode, boolean enabled) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.address = address;
        this.email = email;
        this.password = password;
        this.createdTime = createdTime;
        this.authenticationType = authenticationType;
        this.verificationCode = verificationCode;
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

    @Override
    public String toString() {
        return "Customer{" + "id='" + id + '\'' + ", firstName='" + firstName + '\'' + ", lastName='" + lastName + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' + ", address='" + address + '\'' + ", email='" + email + '\''
                + '\'' + ", password='" + password + '\'' + ", createdTime='" + createdTime + ", authenticationType='"
                + authenticationType + ", verificationCode='" + verificationCode + ", enabled=" + enabled + '}';
    }
}