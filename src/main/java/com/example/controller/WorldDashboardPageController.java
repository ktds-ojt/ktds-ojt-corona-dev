package com.example.controller;

import com.example.model.CityState;
import com.example.model.CurState;
import com.example.model.Disease;
import com.example.model.WorldCurState;
import com.example.service.WorldDashboardPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import static com.example.constants.RestURIConstants.*;
import static com.example.constants.RestURIConstants.DASHBOARD_GET_API_DASHBOARD_DISEASE_ID;

@Controller
public class WorldDashboardPageController {

    @Autowired
    private WorldDashboardPageService worldDashboardPageService;

    @RequestMapping(value = "/worlddashboard/{id}", method = RequestMethod.GET)
    public String WORLDDASHBOARD_GET_ID() {
        return "worldDashboardPage";
    }

    @RequestMapping(value ="/api/worlddashboard/worldstate/{id}", method = RequestMethod.GET)
    public @ResponseBody
    List<WorldCurState> WORLDDASHBOARD_GET_API_WORLDSTATE (@PathVariable("id") Integer id) {
        List<WorldCurState> worldCurStates = worldDashboardPageService.SelectWorldStateById(id);
        return worldCurStates;
    }

    @RequestMapping(value = "/api/worlddashboard/worldstate/chart/{id}", method = RequestMethod.GET)
    public @ResponseBody
    List<WorldCurState> WORLDDASHBOARD_GET_API_WORLDSTATE_CHART (@PathVariable("id") Integer id) {
        List<WorldCurState> worldCurStates = worldDashboardPageService.SelectWorldStateChartById(id);
        return worldCurStates;
    }

    @RequestMapping(value = "/api/worlddashboard/worldstate/today/{id}", method = RequestMethod.GET)
    public @ResponseBody
    List<HashMap> WORLDDASHBOARD_GET_API_WORLDSTATE_TODAY (@PathVariable("id") Integer id) {
        List<HashMap> today = worldDashboardPageService.SelectWorldStateTodayById(id);
        return today;
    }

    @RequestMapping(value = "/api/worlddashboard/worldstate/yesterday/{id}", method = RequestMethod.GET)
    public @ResponseBody
    List<HashMap> WORLDDASHBOARD_GET_API_WORLDSTATE_YESTERDAY (@PathVariable("id") Integer id) {
        List<HashMap> yesterday = worldDashboardPageService.SelectWorldStateYesterdayById(id);
        return yesterday;
    }

};