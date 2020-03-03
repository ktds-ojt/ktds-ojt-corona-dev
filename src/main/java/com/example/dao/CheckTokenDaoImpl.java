package com.example.dao;

import com.example.model.Admin;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CheckTokenDaoImpl implements CheckTokenDao{

    @Autowired
    private SqlSession session;

    public Integer CheckToken(Admin admin){
        List<Admin> AdminList = session.selectList("CheckTokenMap.CheckToken", admin);
        if (AdminList.size() > 0){
            return 1;
        }
        else {
            return 0;
        }
    }
};