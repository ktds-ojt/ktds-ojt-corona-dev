package com.example.service;

import com.example.dao.MainPageDao;
import com.example.model.Disease;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.List;

@Service
public class MainPageServiceImpl implements MainPageService {

    @Inject
    private MainPageDao mainPageDao;

    public List<Disease> SelectDisease() {
        return mainPageDao.SelectDisease();
    }
};