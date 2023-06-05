package com.idrbt.ra.dao;

import com.idrbt.ra.config.RegAuthConfig;
import com.idrbt.ra.pojos.RegAuthLoginPojo;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class RegAuthLoginDao {
    RegAuthConfig regAuthConfig = new RegAuthConfig();
    JdbcTemplate template = regAuthConfig.jdbcTemplate();
//    public void setTemplate(JdbcTemplate template) {
//        this.template = template;
//    }
    public RegAuthLoginPojo login(String loginId, String loginPwd){
        String sql="SELECT * FROM ra_db.ra_login WHERE login_id=? AND login_pwd=?";
        return template.queryForObject(sql, new Object[]{loginId, loginPwd},new BeanPropertyRowMapper<RegAuthLoginPojo>(RegAuthLoginPojo.class));
    }
}
