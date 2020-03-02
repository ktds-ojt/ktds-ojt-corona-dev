package com.example.controller;

import com.example.model.Disease;
import com.example.service.MainPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

import static com.example.constants.RestURIConstants.*;

@Controller
public class MainPageController {

    @Autowired
    private MainPageService mainPageService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String MAIN_GET_MAIN () {
        return "mainPage";
    }

    @RequestMapping(value = MAIN_GET_API_MAIN, method = RequestMethod.GET)
    public @ResponseBody List<Disease> MAIN_GET_API_MAIN () {
        List<Disease> disease = mainPageService.SelectDisease();
        return disease;
    }
}