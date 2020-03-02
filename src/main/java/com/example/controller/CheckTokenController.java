package com.example.controller;

import com.example.model.Admin;
import com.example.model.Member;
import com.example.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CheckTokenController {

    @RequestMapping(value = "/admin/check/token", method = RequestMethod.POST)
    public @ResponseBody Admin ADMIN_CHECK_TOKEN (@RequestBody Admin admin) {
        return admin;
    }

    @RequestMapping(value = "/member/check/token", method = RequestMethod.POST)
    public @ResponseBody
    Member ADMIN_CHECK_TOKEN (@RequestBody Member member) {
        return member;
    }
};