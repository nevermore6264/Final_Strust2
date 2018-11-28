package com.poly.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "province")
public class Province implements Serializable {
    private int id;

    private String name;

    public Province(int id, String name) {
        this.id = id;
        this.name = name;
    }

    @OneToMany(mappedBy = "province", fetch = FetchType.LAZY)
    @OrderBy("id DESC")
    private Set<Student> products = new HashSet<Student>();

    public Province() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Student> getProducts() {
        return products;
    }

    public void setProducts(Set<Student> products) {
        this.products = products;
    }
}
