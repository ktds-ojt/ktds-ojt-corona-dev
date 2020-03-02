package com.example.model;

public class Disease {
    private Integer DISEASE_ID;
    private String DISEASE_NAME;

    public Integer getDISEASE_ID() {
        return DISEASE_ID;
    }

    public void setDISEASE_ID(Integer DISEASE_ID) {
        this.DISEASE_ID = DISEASE_ID;
    }

    public String getDISEASE_NAME() {
        return DISEASE_NAME;
    }

    public void setDISEASE_NAME(String DISEASE_NAME) {
        this.DISEASE_NAME = DISEASE_NAME;
    }

    @Override
    public String toString() {
        return "Disease{" +
                "DISEASE_ID=" + DISEASE_ID +
                ", DISEASE_NAME='" + DISEASE_NAME + '\'' +
                '}';
    }
};