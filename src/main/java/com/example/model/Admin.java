package com.example.model;

import javax.print.DocFlavor;

public class Admin {
    private Integer ADMIN_ID;
    private String ADMIN_LOGIN_ID;
    private String ADMIN_LOGIN_PW;
    private Integer ADMIN_TYPE;

    public Integer getADMIN_ID() {
        return ADMIN_ID;
    }

    public void setADMIN_ID(Integer ADMIN_ID) {
        this.ADMIN_ID = ADMIN_ID;
    }

    public String getADMIN_LOGIN_ID() {
        return ADMIN_LOGIN_ID;
    }

    public void setADMIN_LOGIN_ID(String ADMIN_LOGIN_ID) {
        this.ADMIN_LOGIN_ID = ADMIN_LOGIN_ID;
    }

    public String getADMIN_LOGIN_PW() {
        return ADMIN_LOGIN_PW;
    }

    public void setADMIN_LOGIN_PW(String ADMIN_LOGIN_PW) {
        this.ADMIN_LOGIN_PW = ADMIN_LOGIN_PW;
    }

    public Integer getADMIN_TYPE() {
        return ADMIN_TYPE;
    }

    public void setADMIN_TYPE(Integer ADMIN_TYPE) {
        this.ADMIN_TYPE = ADMIN_TYPE;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "ADMIN_ID=" + ADMIN_ID +
                ", ADMIN_LOGIN_ID='" + ADMIN_LOGIN_ID + '\'' +
                ", ADMIN_LOGIN_PW='" + ADMIN_LOGIN_PW + '\'' +
                ", ADMIN_TYPE=" + ADMIN_TYPE +
                '}';
    }
};