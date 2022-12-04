package edu.nlu.motorbike_shop.entity;


import java.util.Date;

public class Customer {
    private Integer id;
    private String firstName;
    private String lastName;
    private Integer phoneNumber;
    private String address;
    private String email;
    private String password;
    private Date createdTime;
    private String authenticationType;
    private String verificationCode;
    private int enable;

    public Customer(Integer id, String firstName, String lastName, int phoneNumber, String address, String email, String password, Date createdTime, String authenticationType, String verificationCode, int enable) {
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
        this.enable = enable;
    }
}
