package com.example.model;

import java.util.HashMap;

public class TEST_DB_1 extends HashMap<String, Integer> {
    private Integer TEST_DB_ID;
    private Integer TEST_DB_TIME;
    private Integer TEST_DB_USE;
    private Integer TEST_DB_COST;
    private Integer TEST_DB_TOTAL;

    @Override
    public String toString() {
        return "TEST_DB_1{" +
                "TEST_DB_ID=" + TEST_DB_ID +
                ", TEST_DB_TIME=" + TEST_DB_TIME +
                ", TEST_DB_USE=" + TEST_DB_USE +
                ", TEST_DB_COST=" + TEST_DB_COST +
                ", TEST_DB_TOTAL=" + TEST_DB_TOTAL +
                '}';
    }

    public Integer getTEST_DB_ID() {
        return TEST_DB_ID;
    }

    public void setTEST_DB_ID(Integer TEST_DB_ID) {
        this.TEST_DB_ID = TEST_DB_ID;
    }

    public Integer getTEST_DB_TIME() {
        return TEST_DB_TIME;
    }

    public void setTEST_DB_TIME(Integer TEST_DB_TIME) {
        this.TEST_DB_TIME = TEST_DB_TIME;
    }

    public Integer getTEST_DB_USE() {
        return TEST_DB_USE;
    }

    public void setTEST_DB_USE(Integer TEST_DB_USE) {
        this.TEST_DB_USE = TEST_DB_USE;
    }

    public Integer getTEST_DB_COST() {
        return TEST_DB_COST;
    }

    public void setTEST_DB_COST(Integer TEST_DB_COST) {
        this.TEST_DB_COST = TEST_DB_COST;
    }

    public Integer getTEST_DB_TOTAL() {
        return TEST_DB_TOTAL;
    }

    public void setTEST_DB_TOTAL(Integer TEST_DB_TOTAL) {
        this.TEST_DB_TOTAL = TEST_DB_TOTAL;
    }
};