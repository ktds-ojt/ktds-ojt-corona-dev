package com.example.controller;

import com.example.model.Admin;
import com.example.model.Member;
import com.example.service.SigninPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
    public @ResponseBody Admin SIGN_API_GET_LOGIN (@RequestBody Admin admin) {
//        admin = signinPageService.SelectAdmin();
        return admin;
    }

    @RequestMapping(value = "/api/member/login", method = RequestMethod.POST)
    public @ResponseBody
    Member SIGN_API_GET_LOGIN (@RequestBody Member member) {
//        admin = signinPageService.SelectAdmin();
        return member;
    }
};