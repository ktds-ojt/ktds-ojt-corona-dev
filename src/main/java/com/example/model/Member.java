package com.example.model;

public class Member {
    private Integer MEMBER_ID;
    private String MEMBER_LOGIN_ID;
    private String MEMBER_LOGIN_PW;
    private String MEMBER_TOKEN;

    @Override
    public String toString() {
        return "Member{" +
                "MEMBER_ID=" + MEMBER_ID +
                ", MEMBER_LOGIN_ID='" + MEMBER_LOGIN_ID + '\'' +
                ", MEMBER_LOGIN_PW='" + MEMBER_LOGIN_PW + '\'' +
                ", MEMBER_TOKEN='" + MEMBER_TOKEN + '\'' +
                '}';
    }

    public Integer getMEMBER_ID() {
        return MEMBER_ID;
    }

    public void setMEMBER_ID(Integer MEMBER_ID) {
        this.MEMBER_ID = MEMBER_ID;
    }

    public String getMEMBER_LOGIN_ID() {
        return MEMBER_LOGIN_ID;
    }

    public void setMEMBER_LOGIN_ID(String MEMBER_LOGIN_ID) {
        this.MEMBER_LOGIN_ID = MEMBER_LOGIN_ID;
    }

    public String getMEMBER_LOGIN_PW() {
        return MEMBER_LOGIN_PW;
    }

    public void setMEMBER_LOGIN_PW(String MEMBER_LOGIN_PW) {
        this.MEMBER_LOGIN_PW = MEMBER_LOGIN_PW;
    }

    public String getMEMBER_TOKEN() {
        return MEMBER_TOKEN;
    }

    public void setMEMBER_TOKEN(String MEMBER_TOKEN) {
        this.MEMBER_TOKEN = MEMBER_TOKEN;
    }
};