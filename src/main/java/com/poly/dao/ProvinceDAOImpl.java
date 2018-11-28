package com.poly.dao;

import com.poly.dao.ProvinceDAO;
import com.poly.db.HibernateUtil;
import com.poly.entity.Province;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;

public class ProvinceDAOImpl implements ProvinceDAO {

    Session session = HibernateUtil.getSessionFactory().getCurrentSession();

    Transaction transaction = session.beginTransaction();

    @Override
    @SuppressWarnings("unchecked")
    public List<Province> listProvince() {
        List<Province> courses = null;
        try {
            courses = session.createQuery("from Province").list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return courses;
    }

    @Override
    public void saveOrUpdateProvince(Province province) {
        try {
            session.saveOrUpdate(province);
        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
        }
    }

    @Override
    public void deleteProvince(Long provinceId) {
        try {
            Province province = (Province) session.get(Province.class, provinceId);
            session.delete(province);
        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
        }
    }

    @Override
    public Province listProvinceById(Long provinceId) {
        Province province = null;
        try {
            province = (Province) session.get(Province.class, provinceId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return province;
    }
}
