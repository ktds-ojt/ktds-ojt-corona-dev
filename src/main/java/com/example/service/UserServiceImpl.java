package com.example.service;

import com.example.dao.UserDao;
import com.example.model.User;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Inject
    private UserDao userDao;

    //1)
    public User InsertUser(User user) {
        return userDao.InsertUser(user);
    }

    //2)
    public User UpdateUser(User user) {
        return userDao.UpdateUser(user);
    }

    //3)
    public User DeleteUser(User user) {
        return userDao.DeleteUser(user);
    }

    //4)
    public List<User> SelectUser() {
        return userDao.SelectUser();
    }
};