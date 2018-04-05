package cn.fcr.service;

import org.springframework.stereotype.Service;


public interface UserService {
	
	//查询记录条数
	public int UserCount();
	
	//最低条件注册
	public int UserRegister(String username,String password,String email);
}
