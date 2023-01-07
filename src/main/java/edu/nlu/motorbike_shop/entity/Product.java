package edu.nlu.motorbike_shop.entity;

import lombok.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Product {
    private Integer id;
    private String mainImagePath;
    private String name;
    private String alias;
    private Brand brand;
    private Category category;
    private String description;
    private Date updatedTime;
    private int price;
    private int percentDiscount;
    private int quantity;
    private List<Status> statuses = new ArrayList<>();
    private List<Review> reviews = new ArrayList<>();
    private List<OrderDetail> orderDetails = new ArrayList<>();

    public Product(String mainImagePath, String name, String alias, Brand brand, Category category,
                   String description, int price, int percentDiscount, int quantity) {
        this.mainImagePath = mainImagePath;
        this.name = name;
        this.alias = alias;
        this.brand = brand;
        this.category = category;
        this.description = description;
        this.price = price;
        this.percentDiscount = percentDiscount;
        this.quantity = quantity;
    }

    public Product(Integer id, String mainImagePath, String name, String alias, Brand brand, Category category,
                   String description, Date updatedTime, int price, int percentDiscount, int quantity) {
        this.id = id;
        this.mainImagePath = mainImagePath;
        this.name = name;
        this.alias = alias;
        this.brand = brand;
        this.category = category;
        this.description = description;
        this.updatedTime = updatedTime;
        this.price = price;
        this.percentDiscount = percentDiscount;
        this.quantity = quantity;
    }

    public Product(Integer id, String mainImagePath, String name, Brand brand, int price, int percentDiscount, int quantity) {
        this.id = id;
        this.mainImagePath = mainImagePath;
        this.name = name;
        this.brand = brand;
        this.price = price;
        this.percentDiscount = percentDiscount;
        this.quantity = quantity;
    }

    public void addStatus(Status status) {
        this.statuses.add(status);
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", mainImagePath='" + mainImagePath + '\'' + ", name='" + name + '\'' +
                ", alias='" + alias + '\'' + ", brand=" + brand + ", category=" + category +
                ", description='" + description + '\'' + ", updatedTime=" + updatedTime + ", price=" + price +
                ", percentDiscount=" + percentDiscount + ", quantity=" + quantity + ", statuses=" + statuses + '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return Objects.equals(id, product.id) && Objects.equals(name, product.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }
}
