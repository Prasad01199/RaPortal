package com.idrbt.ra.controller;

import com.idrbt.ra.dao.RegAuthLoginDao;
import com.idrbt.ra.pojos.RegAuthLoginPojo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
@Controller
public class RegAuthLoginController {
    HttpServletResponse response;
    ModelAndView mv = new ModelAndView();
    String loginId;
    @Autowired
    RegAuthLoginDao dao;
    @RequestMapping("/ralogin")
    public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String password){
        System.out.println("I'm controller");
        dao = new RegAuthLoginDao();
        RegAuthLoginPojo loginPojo = dao.login(username, password);
        loginId = loginPojo.loginId;
        System.out.println(loginPojo.loginId);
        if(loginPojo.loginId.equals(username)){
            System.out.println("I'm in if");
            mv.setViewName("ra-dashboard");
        }
        else{

        }
        return mv;

    }
}
