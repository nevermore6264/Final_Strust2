package com.poly.dao;

import java.util.List;
import com.poly.entity.Class;

public interface ClassDAO {
    List<Class> listClass();

    void saveOrUpdateClass(Class c);

    Class listClassById(Long cId);

    void deleteClass(Long cId);
}
