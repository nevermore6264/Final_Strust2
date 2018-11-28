package com.poly.dao;

import com.poly.dao.DepartmentDAO;
import com.poly.db.HibernateUtil;
import com.poly.entity.Department;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class DepartmentDAOImpl implements DepartmentDAO {

    Session session = HibernateUtil.getSessionFactory().getCurrentSession();

    Transaction transaction = session.beginTransaction();

    @Override
    @SuppressWarnings("unchecked")
    public List<Department> listDepartment() {
        List<Department> courses = null;
        try {
            courses = session.createQuery("from Department").list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return courses;
    }

    @Override
    public void saveOrUpdateDepartment(Department department) {
        try {
            session.saveOrUpdate(department);
        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
        }
    }

    @Override
    public void deleteDepartment(Long departmentId) {
        try {
            Department department = (Department) session.get(Department.class, departmentId);
            session.delete(department);
        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
        }
    }

    @Override
    public Department listDepartmentById(Long departmentId) {
        Department department = null;
        try {
            department = (Department) session.get(Department.class, departmentId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return department;
    }
}
