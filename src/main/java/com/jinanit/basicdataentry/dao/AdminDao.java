/**
 *
 * @author Istiaque && Emran
 */
package com.jinanit.basicdataentry.dao;

import com.jinanit.basicdataentry.model.Admin;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDao {
    
    @Autowired
    JdbcDao jdbcDao;

    @SuppressWarnings("unchecked")
    public List<Admin> getAdmin() {
        String sSelectQuery = "SELECT admin_id, admin_username, admin_password FROM admin";
        List list = jdbcDao.getObjectList(sSelectQuery, new Object[]{}, Admin.class);
        return list;
    }
    @SuppressWarnings("unchecked")
    public Admin getOneAdmin(Admin admin) {
        String sSelectQuery = "SELECT admin_id, admin_username, admin_password FROM admin where admin_username = ? and admin_password  = ?";
        Admin a = (Admin) jdbcDao.getObject(sSelectQuery, new Object[]{admin.getAdmin_username(), admin.getAdmin_password()}, Admin.class);
        return a;
    }
}
