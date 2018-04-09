package cn.fcr.service;

import org.springframework.stereotype.Service;

import cn.fcr.qa3.pojo.UserLogin;


public interface UserService {
	
	//查询记录条数
	public int UserCount();
	
	//最低条件注册	同时进行用户ip插入
	public int UserRegister(String username,String password,String email,String ip);
	
	//查用户邮箱，看是否已经被注册
	public int selectUser(UserLogin userLogin);
	
	//根据登录信息，返回用户详情
	public UserLogin selectUserByEmail(String email);
	
	//密码邮箱登录
	public int login(String password,String email);
	
	//根据id修改头像
	public int updateUserImage(String userImg,Integer userId);
	
	//根据id修改基本信息
	public int updateUserLogin(String userName,String userPhone,String userEmail,String userDescribe,int userId);
	
	
	
}
