package edu.nlu.motorbike_shop.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Category {
    private Integer id;
    private String name;
    private String alias;
    private Integer parentId;
    private boolean enabled;

    public Category(String name, String alias, Integer parentId, boolean enabled) {
        this.name = name;
        this.alias = alias;
        this.parentId = parentId;
        this.enabled = enabled;
    }
}
