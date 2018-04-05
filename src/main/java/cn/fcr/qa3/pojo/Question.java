package cn.fcr.qa3.pojo;

import java.util.Date;

public class Question {
    private Integer questionId;

    private Integer userId;

    private Integer anwerId;

    private String questionType;

    private String questionContent;

    private String questionTitle;

    private String questionImg;

    private Date questionTime;

    private Integer subscribeNumber;

    private Integer greatNumber;

    private Integer badNumber;

    private String questionStatus;

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getAnwerId() {
        return anwerId;
    }

    public void setAnwerId(Integer anwerId) {
        this.anwerId = anwerId;
    }

    public String getQuestionType() {
        return questionType;
    }

    public void setQuestionType(String questionType) {
        this.questionType = questionType == null ? null : questionType.trim();
    }

    public String getQuestionContent() {
        return questionContent;
    }

    public void setQuestionContent(String questionContent) {
        this.questionContent = questionContent == null ? null : questionContent.trim();
    }

    public String getQuestionTitle() {
        return questionTitle;
    }

    public void setQuestionTitle(String questionTitle) {
        this.questionTitle = questionTitle == null ? null : questionTitle.trim();
    }

    public String getQuestionImg() {
        return questionImg;
    }

    public void setQuestionImg(String questionImg) {
        this.questionImg = questionImg == null ? null : questionImg.trim();
    }

    public Date getQuestionTime() {
        return questionTime;
    }

    public void setQuestionTime(Date questionTime) {
        this.questionTime = questionTime;
    }

    public Integer getSubscribeNumber() {
        return subscribeNumber;
    }

    public void setSubscribeNumber(Integer subscribeNumber) {
        this.subscribeNumber = subscribeNumber;
    }

    public Integer getGreatNumber() {
        return greatNumber;
    }

    public void setGreatNumber(Integer greatNumber) {
        this.greatNumber = greatNumber;
    }

    public Integer getBadNumber() {
        return badNumber;
    }

    public void setBadNumber(Integer badNumber) {
        this.badNumber = badNumber;
    }

    public String getQuestionStatus() {
        return questionStatus;
    }

    public void setQuestionStatus(String questionStatus) {
        this.questionStatus = questionStatus == null ? null : questionStatus.trim();
    }
}