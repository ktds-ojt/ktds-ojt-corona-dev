package com.example.dao;

import com.example.model.User;

import java.util.List;

public interface UserDao {

    //1)
    public User InsertUser(User user);

    //2)
    public User UpdateUser(User user);

    //3)
    public User DeleteUser(User user);

    //4)
    public List<User> SelectUser();
}