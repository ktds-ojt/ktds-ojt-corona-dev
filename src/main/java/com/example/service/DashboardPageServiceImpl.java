package com.example.service;

import com.example.dao.DashboardPageDao;
import com.example.model.CityState;
import com.example.model.CurState;
import com.example.model.Disease;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class DashboardPageServiceImpl implements  DashboardPageService {

    @Inject
    private DashboardPageDao dashboardPageDao;

    public List<CurState> SelectCurStateById(Integer id) {
        return dashboardPageDao.SelectCurStateById(id);
    }

    public List<CityState> SelectCityStateById(Integer id) {
        return dashboardPageDao.SelectCityStateById(id);
    }

    public Disease SelectDiseaseById(Integer id) {
        return dashboardPageDao.SelectDiseaseById(id);
    }

};