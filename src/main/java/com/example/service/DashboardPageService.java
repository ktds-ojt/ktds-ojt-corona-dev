package com.example.service;

import com.example.model.CityState;
import com.example.model.CurState;
import com.example.model.Disease;

import java.util.List;

public interface DashboardPageService {
    public List<CurState> SelectCurStateById(Integer id);

    public List<CityState> SelectCityStateById(Integer id);

    public Disease SelectDiseaseById(Integer id);
}
