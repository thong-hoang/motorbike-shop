package edu.nlu.motorbike_shop.entity;

import lombok.*;

import java.util.Objects;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Category {
    private Integer id;
    private String name;
    private String alias;
    private Integer parentId;
    private boolean enabled;

    public Category(Integer id) {
        this.id = id;
    }

    public Category(String name, String alias, Integer parentId, boolean enabled) {
        this.name = name;
        this.alias = alias;
        this.parentId = parentId;
        this.enabled = enabled;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Category category = (Category) o;
        return id.equals(category.id) && name.equals(category.name);
    }
    @Override
    public int hashCode() {
        return Objects.hash(id, name);
    }

    @Override
    public String toString() {
        return "Category{" + "id=" + id + ", name='" + name + '\'' + ", alias='" + alias + '\'' +
                ", parentId=" + parentId + ", enabled=" + enabled + '}';
    }
}
