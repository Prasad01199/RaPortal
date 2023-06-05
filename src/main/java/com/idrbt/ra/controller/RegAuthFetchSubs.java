package com.idrbt.ra.controller;

import com.idrbt.ra.dao.RegAuthFetchSubsDao;
import com.idrbt.ra.pojos.RegAuthFetchSubsPojo;
import com.idrbt.ra.pojos.RegAuthLoginPojo;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Text;

@Controller
@ResponseStatus(HttpStatus.OK)
public class RegAuthFetchSubs {
    ModelAndView mv = new ModelAndView();
    @RequestMapping(value = "/fetchSubs", method = RequestMethod.GET,produces = "application/text")  ///RequestMapping , headers="Accept=*/*"
    @ResponseBody
    public String newRequest(@RequestParam(value="subsLoginId") String subsLoginId){  //ResponseEntity
        System.out.println("In fetch-subs");
        JSONObject subsDetails = new JSONObject();
        RegAuthFetchSubsDao regAuthFetchSubsDao = new RegAuthFetchSubsDao();
        RegAuthFetchSubsPojo regAuthFetchSubsPojo = regAuthFetchSubsDao.fetchSubs(subsLoginId);
        String retur = "{'name': '"+regAuthFetchSubsPojo.getName()+"','emailId:"+regAuthFetchSubsPojo.getEmailId()+"','mobileNo:"+regAuthFetchSubsPojo.getMobileNo()+"'}";

        if(regAuthFetchSubsPojo != null && regAuthFetchSubsPojo.getLoginId().equals(subsLoginId)){
            System.out.println(regAuthFetchSubsPojo.getName()+" NAME : in RegAuthfetchSubs");
            subsDetails.put("name", regAuthFetchSubsPojo.getName());
            subsDetails.put("mobileNo", regAuthFetchSubsPojo.getMobileNo());
            subsDetails.put("emailId", regAuthFetchSubsPojo.getEmailId());
            System.out.println(subsDetails+" JSON subsDetails : in RegAuthfetchSubs");
//            return new ResponseEntity(
//                    new RegAuthFetchSubsPojo(subsLoginId,
//                            regAuthFetchSubsPojo.getName(),
//                            regAuthFetchSubsPojo.getMobileNo(),
//                            regAuthFetchSubsPojo.getEmailId()
//                    )
//                    ,HttpStatus.OK);
            System.out.println(subsDetails);
        }
        else{
            System.out.println(subsLoginId+" IN ELSE subloginIDDD: in RegAuthfetchSubs");
//            return new ResponseEntity(
//                    new RegAuthFetchSubsPojo(subsLoginId,
//                            regAuthFetchSubsPojo.getName(),
//                            regAuthFetchSubsPojo.getMobileNo(),
//                            regAuthFetchSubsPojo.getEmailId()
//                    )
//                    ,HttpStatus.FORBIDDEN);

        }


        return subsDetails.toJSONString();

    }
}