package com.example.service;

import com.example.dao.UserDao;
import com.example.model.TEST_DB_1;
import com.example.model.User;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Inject
    private UserDao userDao;

    public List<TEST_DB_1> SelectTESTDB1() {
        return userDao.SelectTESTDB1();
    }
};