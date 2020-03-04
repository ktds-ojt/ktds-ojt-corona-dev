package com.example.service;

import com.example.dao.WorldDashboardPageDao;
import com.example.model.WorldCurState;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Service
public class WorldDashboardPageServiceImpl implements WorldDashboardPageService {

    @Inject
    WorldDashboardPageDao worldDashboardPageDao;

    public List<WorldCurState> SelectWorldStateById(Integer id) {
        return worldDashboardPageDao.SelectWorldStateById(id);
    }
    public List<WorldCurState> SelectWorldStateChartById(Integer id) {
        return worldDashboardPageDao.SelectWorldStateChartById(id);
    }
    public List<HashMap> SelectWorldStateTodayById(Integer id) {
        return worldDashboardPageDao.SelectWorldStateTodayById(id);
    }
    public List<HashMap> SelectWorldStateYesterdayById(Integer id){
        return worldDashboardPageDao.SelectWorldStateYesterdayById(id);
    }
};