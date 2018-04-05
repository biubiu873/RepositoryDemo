package cn.fcr.qa3.mapper;

import cn.fcr.qa3.pojo.UserLogin;

public interface UserLoginMapper {
	
	int selectUserLoginCount();
	
    int deleteByPrimaryKey(Integer userId);

    int insert(UserLogin record);

    int insertSelective(UserLogin record);

    UserLogin selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(UserLogin record);

    int updateByPrimaryKey(UserLogin record);
}