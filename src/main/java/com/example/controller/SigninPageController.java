package com.example.controller;

import com.example.model.Admin;
import com.example.service.SigninPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

import static com.example.constants.RestURIConstants.*;

@Controller
public class SigninPageController {

    @Autowired
    private SigninPageService signinPageService;

    @RequestMapping(value = SIGNIN_GET_LOGIN, method = RequestMethod.GET)
    public String SIGNIN_GET_INDEX() {
        return "signinPage";
    }

    @RequestMapping(value = SIGNIN_GET_API_LOGIN, method = RequestMethod.GET)
    public @ResponseBody List<Admin> SIGN_API_GET_LOGIN() {
        List<Admin> admin = signinPageService.SelectAdmin();
        return admin;
    }
};