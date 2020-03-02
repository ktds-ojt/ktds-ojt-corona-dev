package com.example.model;

public class City {
    private Integer CITY_ID;
    private String CITY_NAME;

    public Integer getCITY_ID() {
        return CITY_ID;
    }

    public void setCITY_ID(Integer CITY_ID) {
        this.CITY_ID = CITY_ID;
    }

    public String getCITY_NAME() {
        return CITY_NAME;
    }

    public void setCITY_NAME(String CITY_NAME) {
        this.CITY_NAME = CITY_NAME;
    }

    @Override
    public String toString() {
        return "City{" +
                "CITY_ID=" + CITY_ID +
                ", CITY_NAME='" + CITY_NAME + '\'' +
                '}';
    }
};