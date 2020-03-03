package com.example.controller;

import com.example.model.Admin;
import com.example.model.Member;
import com.example.model.User;
import com.example.service.CheckTokenService;
import com.example.service.SigninPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class CheckTokenController {

    @Autowired
    private CheckTokenService checkTokenService;

    @RequestMapping(value = "/admin/check/token", method = RequestMethod.POST)
    public @ResponseBody
    ResponseEntity<?> ADMIN_CHECK_TOKEN (@RequestBody Admin admin) {
        int check = checkTokenService.CheckToken(admin);
        if (check == 1) {
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }

    @RequestMapping(value = "/member/check/token", method = RequestMethod.POST)
    public @ResponseBody
    Member ADMIN_CHECK_TOKEN (@RequestBody Member member) {
        return member;
    }
};