package com.example.controller;

import com.example.model.Admin;
import com.example.model.Member;
import com.example.service.SigninPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.ws.Response;
import java.util.List;

import static com.example.constants.RestURIConstants.*;

@Controller
public class SigninPageController {

    @Autowired
    private SigninPageService signinPageService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String LOGIN() {
        return "loginPage";
    }

    @RequestMapping(value = "/admin/login", method = RequestMethod.GET)
    public String ADMIN_LOGIN() {
        return "adminLoginPage";
    }

    @RequestMapping(value = "/api/admin/login", method = RequestMethod.POST)
    public @ResponseBody ResponseEntity<?> SIGN_API_GET_LOGIN (@RequestBody Admin admin) {
        try {
            List<Admin> ret = signinPageService.SelectAdmin(admin);
            return new ResponseEntity<> (ret, HttpStatus.OK);
        } catch (Exception error) {
            return new ResponseEntity<> (error, HttpStatus.BAD_REQUEST);
        }
    }

//    @RequestMapping(value = "/api/member/login", method = RequestMethod.POST)
//    public @ResponseBody
//    Member SIGN_API_GET_LOGIN (@RequestBody Member member) {
//        System.out.println();
//        return member;
//    }

    @RequestMapping(value = "/api/member/login", method = RequestMethod.POST)
    public @ResponseBody
    Admin TEST (@RequestBody Admin admin) {
        System.out.println(admin);
        return admin;
    }
};