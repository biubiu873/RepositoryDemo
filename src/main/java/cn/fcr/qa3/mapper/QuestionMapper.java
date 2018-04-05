package cn.fcr.qa3.mapper;

import cn.fcr.qa3.pojo.Question;

public interface QuestionMapper {
    int deleteByPrimaryKey(Integer questionId);

    int insert(Question record);

    int insertSelective(Question record);

    Question selectByPrimaryKey(Integer questionId);

    int updateByPrimaryKeySelective(Question record);

    int updateByPrimaryKey(Question record);
}