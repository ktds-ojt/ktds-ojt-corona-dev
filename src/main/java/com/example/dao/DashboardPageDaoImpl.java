package com.example.dao;

import com.example.model.CityState;
import com.example.model.CurState;
import com.example.model.Disease;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DashboardPageDaoImpl implements DashboardPageDao {

    @Autowired
    private SqlSession session;

    public List<CurState> SelectCurStateById(Integer id) {
        List<CurState> curState = session.selectList("DashboardPageSqlMap.SelectCurStateById", id);
        return curState;
    }
    public List<CityState> SelectCityStateById(Integer id) {
        List<CityState> cityState = session.selectList("DashboardPageSqlMap.SelectCityStateById", id);
        return cityState;

    }
    public Disease SelectDiseaseById(Integer id) {
        Disease disease = session.selectOne("DashboardPageSqlMap.SelectDiseaseById", id);
        System.out.println(disease);
        return disease;
    }
};