package com.idrbt.ra.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@ResponseBody
public class RegAuthNewRequestController {
    ModelAndView mv = new ModelAndView();
    @RequestMapping(value = "/new-request", method = RequestMethod.POST)
    public ModelAndView newRequest(){
        System.out.println("In new request");
        mv.setViewName("new-request");
        return mv;
    }
}
