package com.example.model;

import java.sql.Date;

public class WorldCurState {
    private Integer WORLD_CUR_STATE_ID;
    private Date WORLD_CUR_STATE_DATE;
    private Integer WORLD_CUR_STATE_CON_CNT;
    private Integer WORLD_CUR_STATE_DEAD_CNT;

    @Override
    public String toString() {
        return "WorldCurState{" +
                "WORLD_CUR_STATE_ID=" + WORLD_CUR_STATE_ID +
                ", WORLD_CUR_STATE_DATE=" + WORLD_CUR_STATE_DATE +
                ", WORLD_CUR_STATE_CON_CNT=" + WORLD_CUR_STATE_CON_CNT +
                ", WORLD_CUR_STATE_DEAD_CNT=" + WORLD_CUR_STATE_DEAD_CNT +
                '}';
    }

    public Integer getWORLD_CUR_STATE_ID() {
        return WORLD_CUR_STATE_ID;
    }

    public void setWORLD_CUR_STATE_ID(Integer WORLD_CUR_STATE_ID) {
        this.WORLD_CUR_STATE_ID = WORLD_CUR_STATE_ID;
    }

    public Date getWORLD_CUR_STATE_DATE() {
        return WORLD_CUR_STATE_DATE;
    }

    public void setWORLD_CUR_STATE_DATE(Date WORLD_CUR_STATE_DATE) {
        this.WORLD_CUR_STATE_DATE = WORLD_CUR_STATE_DATE;
    }

    public Integer getWORLD_CUR_STATE_CON_CNT() {
        return WORLD_CUR_STATE_CON_CNT;
    }

    public void setWORLD_CUR_STATE_CON_CNT(Integer WORLD_CUR_STATE_CON_CNT) {
        this.WORLD_CUR_STATE_CON_CNT = WORLD_CUR_STATE_CON_CNT;
    }

    public Integer getWORLD_CUR_STATE_DEAD_CNT() {
        return WORLD_CUR_STATE_DEAD_CNT;
    }

    public void setWORLD_CUR_STATE_DEAD_CNT(Integer WORLD_CUR_STATE_DEAD_CNT) {
        this.WORLD_CUR_STATE_DEAD_CNT = WORLD_CUR_STATE_DEAD_CNT;
    }
};