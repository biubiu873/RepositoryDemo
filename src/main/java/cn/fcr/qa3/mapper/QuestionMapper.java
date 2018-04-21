package cn.fcr.qa3.mapper;

import org.apache.ibatis.annotations.Param;

import cn.fcr.qa3.pojo.Question;

public interface QuestionMapper {
	
	//添加后立刻查询question的id
	int queryQuestionByUserIdAndQuestionTitle(@Param("user_id")int userId,@Param("question_title")String title);
	
	//根据question中的某个属性查询是否存在该记录
	int queryQuetionByQeustion(Question question);
	
    int deleteByPrimaryKey(Integer questionId);
    
    int insert(Question record);

    int insertSelective(Question record);

    Question selectByPrimaryKey(Integer questionId);

    int updateByPrimaryKeySelective(Question record);

    int updateByPrimaryKey(Question record);
}