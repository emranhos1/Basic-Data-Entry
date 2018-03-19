package com.jinanit.basicdataentry.dao;

import com.mysql.jdbc.Driver;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SimpleDriverDataSource;
import org.springframework.stereotype.Component;

@Component
public class JdbcDao {

    private final String URL = "jdbc:mysql://localhost:3306/";
    private final String SCHEMA = "data_entry";
    private final String USER_NAME = "root";
    private final String PASSWORD = "root";
    private JdbcTemplate jdbcTemplate;

    public JdbcTemplate getJdbcTemplate() {

        try {
            SimpleDriverDataSource dataSource = new SimpleDriverDataSource();
            dataSource.setDriver(new Driver());
            dataSource.setUrl(URL + SCHEMA);
            dataSource.setUsername(USER_NAME);
            dataSource.setPassword(PASSWORD);
            jdbcTemplate = new JdbcTemplate(dataSource);
        } catch (Exception e) {
            System.out.println("JdbcDao-----> JdbcDao()---> " + e);
        }
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    //----------------------------for insert-------------------------
    public int saveObject(String sql, Object[] objects) {
        int total = 0;
        try {
            total = getJdbcTemplate().update(sql, objects);
        } catch (Exception e) {
            System.out.println("JdbcDao-----> saveObject---> " + e);
        }
        return total;
    }

    //------------------------get table data-------------------------

    @SuppressWarnings({"rawtypes", "unchecked"})
    public List getObjectList(String sql, Object[] params, Class clazz) {
        List list = null;
        try {
            list = getJdbcTemplate().query(sql, params, new BeanPropertyRowMapper(clazz));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
