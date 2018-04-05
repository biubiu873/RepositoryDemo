package cn.fcr.qa3.pojo;

import java.util.Date;

public class Answer {
    private Integer answerId;

    private Integer userId;

    private Integer questionId;

    private String answerType;

    private String answerImg;

    private String answerContent;

    private Date answerTime;

    private Integer badNumber;

    private Integer subscribeNumber;

    private Integer greatNumber;

    private String answerStatus;

    public Integer getAnswerId() {
        return answerId;
    }

    public void setAnswerId(Integer answerId) {
        this.answerId = answerId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getQuestionId() {
        return questionId;
    }

    public void setQuestionId(Integer questionId) {
        this.questionId = questionId;
    }

    public String getAnswerType() {
        return answerType;
    }

    public void setAnswerType(String answerType) {
        this.answerType = answerType == null ? null : answerType.trim();
    }

    public String getAnswerImg() {
        return answerImg;
    }

    public void setAnswerImg(String answerImg) {
        this.answerImg = answerImg == null ? null : answerImg.trim();
    }

    public String getAnswerContent() {
        return answerContent;
    }

    public void setAnswerContent(String answerContent) {
        this.answerContent = answerContent == null ? null : answerContent.trim();
    }

    public Date getAnswerTime() {
        return answerTime;
    }

    public void setAnswerTime(Date answerTime) {
        this.answerTime = answerTime;
    }

    public Integer getBadNumber() {
        return badNumber;
    }

    public void setBadNumber(Integer badNumber) {
        this.badNumber = badNumber;
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

    public String getAnswerStatus() {
        return answerStatus;
    }

    public void setAnswerStatus(String answerStatus) {
        this.answerStatus = answerStatus == null ? null : answerStatus.trim();
    }
}