package com.example.dao;

import com.example.model.WorldCurState;
import com.example.service.WorldDashboardPageService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Repository
public class WorldDashboardPageDaoImp implements WorldDashboardPageDao {

    @Autowired
    private SqlSession session;

    public List<WorldCurState> SelectWorldStateById(Integer id) {
        return session.selectList("WorldDashboardPageSqlMap.SelectWorldStateById", id);
    }
    public List<WorldCurState> SelectWorldStateChartById(Integer id) {
        return session.selectList("WorldDashboardPageSqlMap.SelectWorldStateChartById", id);
    }
    public List<HashMap> SelectWorldStateTodayById(Integer id) {
        System.out.println(session.selectList("WorldDashboardPageSqlMap.SelectWorldStateTodayById", id));
        return session.selectList("WorldDashboardPageSqlMap.SelectWorldStateTodayById", id);
    }
    public List<HashMap> SelectWorldStateYesterdayById(Integer id){
        return session.selectList("WorldDashboardPageSqlMap.SelectWorldStateYesterdayById", id);
    }
};