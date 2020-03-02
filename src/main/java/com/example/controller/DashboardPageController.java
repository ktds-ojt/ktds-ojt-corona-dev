package com.example.controller;

import com.example.model.CityState;
import com.example.model.CurState;
import com.example.model.Disease;
import com.example.service.DashboardPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static com.example.constants.RestURIConstants.*;

@Controller
public class DashboardPageController {

    @Autowired
    private DashboardPageService dashboardPageService;

    @RequestMapping(value = DASHBOARD_GET_DASHBOARD_ID, method = RequestMethod.GET)
    public String DASHBOARD_GET_DASHBOARD_ID() {
        return "dashboardPage";
    }

    @RequestMapping(value = DASHBOARD_GET_API_DASHBOARD_CURSTATE_ID, method = RequestMethod.GET)
    public @ResponseBody
    List<CurState> DASHBOARD_GET_API_DASHBOARD_CURSTATE_ID (@PathVariable("id") Integer id) {
        List<CurState> curState = dashboardPageService.SelectCurStateById(id);
        return curState;
    }

    @RequestMapping(value = DASHBOARD_GET_API_DASHBOARD_CITYSTATE_ID, method = RequestMethod.GET)
    public @ResponseBody
    List<CityState> DASHBOARD_GET_API_DASHBOARD_CITYSTATE_ID (@PathVariable("id") Integer id) {
        List<CityState> cityState = dashboardPageService.SelectCityStateById(id);
        return cityState;
    }

    @RequestMapping(value = DASHBOARD_GET_API_DASHBOARD_DISEASE_ID, method = RequestMethod.GET)
    public @ResponseBody
    Disease DASHBOARD_GET_API_DASHBOARD_DISEASE_ID (@PathVariable("id") Integer id) {
        Disease disease = dashboardPageService.SelectDiseaseById(id);
        return disease;
    }
};