package com.idrbt.ra.pojos;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Component
@Service
@Repository
public class RegAuthFetchSubsPojo {
    String loginId;
    String name;
    String mobileNo;
    String emailId;

//    public RegAuthFetchSubsPojo(String subsLoginId, String name, String mobileNo, String emailId) {
//        this.loginId = subsLoginId;
//        this.name = name;
//        this.emailId = emailId;
//        this.mobileNo = mobileNo;
//    }

    public String getLoginId() {
        return loginId;
    }

    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMobileNo() {
        return mobileNo;
    }

    public void setMobileNo(String mobileNo) {
        this.mobileNo = mobileNo;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }
}
