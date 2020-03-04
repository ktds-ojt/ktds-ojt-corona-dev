package com.example.service;

import com.example.model.WorldCurState;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public interface WorldDashboardPageService {
    public List<WorldCurState> SelectWorldStateById(Integer id);
    public List<WorldCurState> SelectWorldStateChartById(Integer id);
    public List<HashMap> SelectWorldStateTodayById(Integer id);
    public List<HashMap> SelectWorldStateYesterdayById(Integer id);
}
