package com.example.dao;

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

    //1)
    public User InsertUser(User user) {
        session.insert("UserSqlMap.InsertUser", user);
        return user;
    }

    //2)
    public User UpdateUser(User user) {
        session.update("UserSqlMap.UpdateUser", user);
        return user;
    }

    //3)
    public User DeleteUser(User user) {
        session.delete("UserSqlMap.DeleteUser", user);
        return user;
    }

    //4)
    public List<User> SelectUser() {
        List<User> UserList = new ArrayList<User>();
        UserList = session.selectList("UserSqlMap.SelectUser");
        return UserList;
    }
};