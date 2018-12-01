package com.poly.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "class")
public class Class implements Serializable {
    private int id;

    private String name;

    @OneToMany(mappedBy = "c", fetch = FetchType.LAZY)
    @OrderBy("id DESC")
    private Set<Student> students = new HashSet<Student>();

    public Class(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public Class() {
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

    public Set<Student> getStudents() {
        return students;
    }

    public void setStudents(Set<Student> students) {
        this.students = students;
    }
}
