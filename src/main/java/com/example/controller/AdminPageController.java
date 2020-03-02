package com.example.controller;

import com.example.service.SigninPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import static com.example.constants.RestURIConstants.ADMIN_GET_ADMIN;

@Controller
public class AdminPageController {
    @Autowired
    private SigninPageService signinPageService;

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String ADMIN_GET_ADMIN(@RequestParam(value = "token") String token){
        return "adminPage";
    }
};