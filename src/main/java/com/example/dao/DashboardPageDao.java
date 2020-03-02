package com.example.dao;

import com.example.model.CityState;
import com.example.model.CurState;
import com.example.model.Disease;

import java.util.List;

public interface DashboardPageDao {

    public List<CurState> SelectCurStateById(Integer id);
    public List<CityState> SelectCityStateById(Integer id);
    public Disease SelectDiseaseById(Integer id);
}
