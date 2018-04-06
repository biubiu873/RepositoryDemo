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
	
}
