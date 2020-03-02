package com.example.model;

import javax.print.DocFlavor;

public class Admin {
    private Integer ADMIN_ID;
    private String ADMIN_LOGIN_ID;
    private String ADMIN_LOGIN_PW;
    private String ADMIN_TOKEN;

    @Override
    public String toString() {
        return "Admin{" +
                "ADMIN_ID=" + ADMIN_ID +
                ", ADMIN_LOGIN_ID='" + ADMIN_LOGIN_ID + '\'' +
                ", ADMIN_LOGIN_PW='" + ADMIN_LOGIN_PW + '\'' +
                ", ADMIN_TOKEN='" + ADMIN_TOKEN + '\'' +
                '}';
    }

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

    public String getADMIN_TOKEN() {
        return ADMIN_TOKEN;
    }

    public void setADMIN_TOKEN(String ADMIN_TOKEN) {
        this.ADMIN_TOKEN = ADMIN_TOKEN;
    }
};