package cn.fcr.qa3.pojo;

import java.util.Date;

public class UserInfo {
    private Integer userId;

    private String userStatus;

    private String userGrade;

    private Integer userPrivacy;

    private Date userLoginTime;

    private Integer userFansId;

    private Integer userUserSubscribeId;

    private Integer userQuestionSubscribeId;

    private Integer badBumber;

    private String userMassage;

    private String userIp;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(String userStatus) {
        this.userStatus = userStatus == null ? null : userStatus.trim();
    }

    public String getUserGrade() {
        return userGrade;
    }

    public void setUserGrade(String userGrade) {
        this.userGrade = userGrade == null ? null : userGrade.trim();
    }

    public Integer getUserPrivacy() {
        return userPrivacy;
    }

    public void setUserPrivacy(Integer userPrivacy) {
        this.userPrivacy = userPrivacy;
    }

    public Date getUserLoginTime() {
        return userLoginTime;
    }

    public void setUserLoginTime(Date userLoginTime) {
        this.userLoginTime = userLoginTime;
    }

    public Integer getUserFansId() {
        return userFansId;
    }

    public void setUserFansId(Integer userFansId) {
        this.userFansId = userFansId;
    }

    public Integer getUserUserSubscribeId() {
        return userUserSubscribeId;
    }

    public void setUserUserSubscribeId(Integer userUserSubscribeId) {
        this.userUserSubscribeId = userUserSubscribeId;
    }

    public Integer getUserQuestionSubscribeId() {
        return userQuestionSubscribeId;
    }

    public void setUserQuestionSubscribeId(Integer userQuestionSubscribeId) {
        this.userQuestionSubscribeId = userQuestionSubscribeId;
    }

    public Integer getBadBumber() {
        return badBumber;
    }

    public void setBadBumber(Integer badBumber) {
        this.badBumber = badBumber;
    }

    public String getUserMassage() {
        return userMassage;
    }

    public void setUserMassage(String userMassage) {
        this.userMassage = userMassage == null ? null : userMassage.trim();
    }

    public String getUserIp() {
        return userIp;
    }

    public void setUserIp(String userIp) {
        this.userIp = userIp == null ? null : userIp.trim();
    }
}