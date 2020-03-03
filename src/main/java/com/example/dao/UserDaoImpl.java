package com.example.dao;

import com.example.model.TEST_DB_1;
import com.example.model.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class UserDaoImpl implements UserDao{

    @Autowired
    private SqlSession session;

    //4)
    public List<TEST_DB_1> SelectTESTDB1() {
        return session.selectList("UserSqlMap.SelectTESTDB1");
    }
};