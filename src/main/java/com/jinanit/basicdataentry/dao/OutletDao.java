package com.jinanit.basicdataentry.dao;

import com.jinanit.basicdataentry.model.Outlet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OutletDao {
    
    @Autowired
    JdbcDao jdbcDao;
    
    @SuppressWarnings("unchecked")
    public int saveOutlet(Outlet outlet) {
        String sInsertQuery = "insert into outlet(first_name, last_name, email, mobile_no, nid_no, business_name, business_address, business_catagory_id, trade_licence, trade_licence_photo, tin_no, password) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, MD5(?))";
        return jdbcDao.saveObject(sInsertQuery, new Object[]{outlet.getFirst_name(), outlet.getLast_name(), outlet.getEmail(), outlet.getMobile_no(), outlet.getNid_no(), outlet.getBusiness_name(), outlet.getBusiness_address(), outlet.getBusiness_category_id(), outlet.getTrade_licence(), outlet.getTrade_licence_photo(), outlet.getTin_no(), outlet.getPassword()});
    }
}
