package com.idrbt.ra.dao;

import com.idrbt.ra.config.RegAuthConfig;
import com.idrbt.ra.pojos.RegAuthFetchSubsPojo;
import com.idrbt.ra.pojos.RegAuthLoginPojo;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class RegAuthFetchSubsDao {
    RegAuthConfig regAuthConfig = new RegAuthConfig();
    JdbcTemplate template = regAuthConfig.subsJdbcTemplate();

    public RegAuthFetchSubsPojo fetchSubs(String subsLoginId){
        String sql="SELECT * FROM subs_db.subs_details WHERE login_id=?";
        return template.queryForObject(sql, new Object[]{subsLoginId},new BeanPropertyRowMapper<com.idrbt.ra.pojos.RegAuthFetchSubsPojo>(RegAuthFetchSubsPojo.class));
    }
}