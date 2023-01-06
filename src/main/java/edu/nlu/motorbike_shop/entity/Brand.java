package edu.nlu.motorbike_shop.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashSet;
import java.util.Set;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Brand {
    private Integer id;
    private String name;
    private String imagePath;
    private boolean enabled;
    private Set<Category> categories = new HashSet<>();

    public Brand(Integer id, String name, String imagePath, boolean enabled) {
        this.id = id;
        this.name = name;
        this.imagePath = imagePath;
        this.enabled = enabled;
    }
    public void addCategory(Category category) {
        this.categories.add(category);
    }
}
