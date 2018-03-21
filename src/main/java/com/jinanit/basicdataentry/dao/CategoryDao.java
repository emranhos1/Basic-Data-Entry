/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jinanit.basicdataentry.dao;

import com.jinanit.basicdataentry.model.Category;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Istiaque && Emran
 */
@Repository
public class CategoryDao {

    @Autowired
    JdbcDao jdbcDao;

    @SuppressWarnings("unchecked")
    public List<Category> getCategory() {
        String sSelectQuery = "SELECT id, initcap(cat_name) as cat_name FROM category";
        List list = jdbcDao.getObjectList(sSelectQuery, new Object[]{}, Category.class);
        return list;
    }
}
