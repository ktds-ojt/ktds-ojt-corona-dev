package com.example.service;

import com.example.dao.SigninPageDao;
import com.example.model.Admin;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class SigninPageServiceImpl implements SigninPageService {

    @Inject
    private SigninPageDao signinPageDao;

    public List<Admin> SelectAdmin(Admin admin) throws Exception {
        return signinPageDao.SelectAdmin(admin);
    }
}