package cn.fcr.qa3.mapper;

import cn.fcr.qa3.pojo.Answer;

public interface AnswerMapper {
    int deleteByPrimaryKey(Integer answerId);

    int insert(Answer record);

    int insertSelective(Answer record);

    Answer selectByPrimaryKey(Integer answerId);

    int updateByPrimaryKeySelective(Answer record);

    int updateByPrimaryKey(Answer record);
}