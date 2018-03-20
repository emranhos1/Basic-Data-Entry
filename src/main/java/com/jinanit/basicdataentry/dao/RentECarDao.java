package com.jinanit.basicdataentry.dao;

import com.jinanit.basicdataentry.model.RentECar;
import java.util.List;
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
    
    @SuppressWarnings("unchecked")
    public List<RentECar> getRentECar() {
        String sSelectQuery = "SELECT * FROM rent_e_car";
        List list = jdbcDao.getObjectList(sSelectQuery, new Object[]{}, RentECar.class);
        return list;
    }
}
