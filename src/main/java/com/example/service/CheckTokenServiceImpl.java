package com.example.service;

import com.example.dao.CheckTokenDao;
import com.example.dao.SigninPageDao;
import com.example.model.Admin;
import org.springframework.stereotype.Service;

import javax.inject.Inject;

@Service
public class CheckTokenServiceImpl implements CheckTokenService {

    @Inject
    private CheckTokenDao checkTokenDao;

    public Integer CheckToken(Admin admin) {
        return checkTokenDao.CheckToken(admin);
    };
};