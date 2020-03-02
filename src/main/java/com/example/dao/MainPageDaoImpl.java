package com.example.dao;

import com.example.model.Admin;
import com.example.model.Disease;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class MainPageDaoImpl implements MainPageDao {

    @Autowired
    private SqlSession session;

    @Override
    public List<Disease> SelectDisease() {
        List<Disease> DiseaseList = new ArrayList<Disease>();
        DiseaseList = session.selectList("MainPageSqlMap.SelectDisease");
        return DiseaseList;
    }
};