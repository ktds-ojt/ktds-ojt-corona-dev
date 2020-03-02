package com.example.dao;

import com.example.model.Admin;
import com.example.model.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class SigninPageDaoImpl implements SigninPageDao {

    @Autowired
    private SqlSession session;

    public List<Admin> SelectAdmin() {
        List<Admin> AdminList = new ArrayList<Admin>();
        AdminList = session.selectList("SignPageSqlMap.SelectAdmin");
        return AdminList;
    }
};