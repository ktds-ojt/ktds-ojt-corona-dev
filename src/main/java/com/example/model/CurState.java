package com.example.model;

import java.sql.Date;

public class CurState {

    private Integer CUR_STATE_ID;
    private Date CUR_STATE_DATE;
    private Integer CUR_STATE_CON_CNT;
    private Integer CUR_STATE_UNCON_CNT;
    private Integer CUR_STATE_DEAD_CNT;
    private Integer CUR_STATE_INV_CNT;
    private Integer CUR_STATE_UNINV_CNT;
    private Integer CUR_STATE_DISEASE_ID;

    @Override
    public String toString() {
        return "CurState{" +
                "CUR_STATE_ID=" + CUR_STATE_ID +
                ", CUR_STATE_DATE=" + CUR_STATE_DATE +
                ", CUR_STATE_CON_CNT=" + CUR_STATE_CON_CNT +
                ", CUR_STATE_UNCON_CNT=" + CUR_STATE_UNCON_CNT +
                ", CUR_STATE_DEAD_CNT=" + CUR_STATE_DEAD_CNT +
                ", CUR_STATE_INV_CNT=" + CUR_STATE_INV_CNT +
                ", CUR_STATE_UNINV_CNT=" + CUR_STATE_UNINV_CNT +
                ", CUR_STATE_DISEASE_ID=" + CUR_STATE_DISEASE_ID +
                '}';
    }

    public Integer getCUR_STATE_ID() {
        return CUR_STATE_ID;
    }

    public void setCUR_STATE_ID(Integer CUR_STATE_ID) {
        this.CUR_STATE_ID = CUR_STATE_ID;
    }

    public Date getCUR_STATE_DATE() {
        return CUR_STATE_DATE;
    }

    public void setCUR_STATE_DATE(Date CUR_STATE_DATE) {
        this.CUR_STATE_DATE = CUR_STATE_DATE;
    }

    public Integer getCUR_STATE_CON_CNT() {
        return CUR_STATE_CON_CNT;
    }

    public void setCUR_STATE_CON_CNT(Integer CUR_STATE_CON_CNT) {
        this.CUR_STATE_CON_CNT = CUR_STATE_CON_CNT;
    }

    public Integer getCUR_STATE_UNCON_CNT() {
        return CUR_STATE_UNCON_CNT;
    }

    public void setCUR_STATE_UNCON_CNT(Integer CUR_STATE_UNCON_CNT) {
        this.CUR_STATE_UNCON_CNT = CUR_STATE_UNCON_CNT;
    }

    public Integer getCUR_STATE_DEAD_CNT() {
        return CUR_STATE_DEAD_CNT;
    }

    public void setCUR_STATE_DEAD_CNT(Integer CUR_STATE_DEAD_CNT) {
        this.CUR_STATE_DEAD_CNT = CUR_STATE_DEAD_CNT;
    }

    public Integer getCUR_STATE_INV_CNT() {
        return CUR_STATE_INV_CNT;
    }

    public void setCUR_STATE_INV_CNT(Integer CUR_STATE_INV_CNT) {
        this.CUR_STATE_INV_CNT = CUR_STATE_INV_CNT;
    }

    public Integer getCUR_STATE_UNINV_CNT() {
        return CUR_STATE_UNINV_CNT;
    }

    public void setCUR_STATE_UNINV_CNT(Integer CUR_STATE_UNINV_CNT) {
        this.CUR_STATE_UNINV_CNT = CUR_STATE_UNINV_CNT;
    }

    public Integer getCUR_STATE_DISEASE_ID() {
        return CUR_STATE_DISEASE_ID;
    }

    public void setCUR_STATE_DISEASE_ID(Integer CUR_STATE_DISEASE_ID) {
        this.CUR_STATE_DISEASE_ID = CUR_STATE_DISEASE_ID;
    }
};