/**
 *
 * @author Istiaque && Emran
 */
package com.jinanit.basicdataentry.dao;

import com.jinanit.basicdataentry.model.Outlet;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OutletDao {

    @Autowired
    JdbcDao jdbcDao;
    String string = "SELECT outlet_id, concat(first_name,' ' ,last_name) as name, email, business_name, business_address, trade_licence FROM outlet order by outlet_id desc";

    @SuppressWarnings("unchecked")
    public int saveOutlet(Outlet outlet) {
        String sInsertQuery = "insert into outlet(first_name, last_name, email, mobile_no, nid_no, business_name, business_address, business_catagory_id, trade_licence, trade_licence_photo, tin_no, password,entry_on) values ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, MD5(?),now())";
        return jdbcDao.saveObject(sInsertQuery, new Object[]{outlet.getFirst_name(), outlet.getLast_name(), outlet.getEmail(), outlet.getMobile_no(), outlet.getNid_no(), outlet.getBusiness_name(), outlet.getBusiness_address(), outlet.getBusiness_category_id(), outlet.getTrade_licence(), outlet.getTrade_licence_photo(), outlet.getTin_no(), outlet.getPassword()});
    }

    @SuppressWarnings("unchecked")
    public List<Outlet> getOutlet(int limit) {
        String sSelectQuery;
        if (limit > 0) {
            sSelectQuery = "SELECT outlet_id, first_name, last_name, email, mobile_no, nid_no, business_name, business_address, business_category_id, trade_licence, trade_licence_photo, tin_no, password, entry_on, update_on FROM outlet order by outlet_id desc\n"
                    + "limit 0, " + limit + "";
        } else {
            sSelectQuery = "SELECT * FROM outlet order by outlet_id asc";
        }
        List list = jdbcDao.getObjectList(sSelectQuery, new Object[]{}, Outlet.class);
        return list;
    }
}
