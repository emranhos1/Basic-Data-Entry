package com.jinanit.basicdataentry.dao;

import com.jinanit.basicdataentry.model.RentECar;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RentECarDao {

    @Autowired
    JdbcDao jdbcDao;

    @SuppressWarnings("unchecked")
    public int saveRentECar(RentECar rentECar) {
        String sInsertQuery = "insert into rent_e_car(first_name, last_name, email, mobile_no, nid_no, business_name, tin_no, trad_licence, password) values ( ?, ?, ?,?,?,?,?,?, MD5(?))";
        return jdbcDao.saveObject(sInsertQuery, new Object[]{rentECar.getFirst_name(), rentECar.getLast_name(), rentECar.getEmail(), rentECar.getMobile_no(), rentECar.getNid_no(), rentECar.getBusiness_name(), rentECar.getTin_no(), rentECar.getTrad_licence(), rentECar.getPassword()});
    }
}
