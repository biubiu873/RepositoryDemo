package cn.fcr.qa3.pojo;

import java.util.Date;

public class Bad {
    private String badType;

    private Integer badId;

    private String badReason;

    private Integer addUserId;

    private Integer badNumber;

    private String badStruts;

    private Date badTime;

    public String getBadType() {
        return badType;
    }

    public void setBadType(String badType) {
        this.badType = badType == null ? null : badType.trim();
    }

    public Integer getBadId() {
        return badId;
    }

    public void setBadId(Integer badId) {
        this.badId = badId;
    }

    public String getBadReason() {
        return badReason;
    }

    public void setBadReason(String badReason) {
        this.badReason = badReason == null ? null : badReason.trim();
    }

    public Integer getAddUserId() {
        return addUserId;
    }

    public void setAddUserId(Integer addUserId) {
        this.addUserId = addUserId;
    }

    public Integer getBadNumber() {
        return badNumber;
    }

    public void setBadNumber(Integer badNumber) {
        this.badNumber = badNumber;
    }

    public String getBadStruts() {
        return badStruts;
    }

    public void setBadStruts(String badStruts) {
        this.badStruts = badStruts == null ? null : badStruts.trim();
    }

    public Date getBadTime() {
        return badTime;
    }

    public void setBadTime(Date badTime) {
        this.badTime = badTime;
    }
}