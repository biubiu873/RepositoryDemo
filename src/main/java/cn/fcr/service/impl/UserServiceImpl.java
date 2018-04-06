package cn.fcr.service.impl;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import cn.fcr.qa3.mapper.UserLoginMapper;
import cn.fcr.qa3.pojo.UserLogin;
import cn.fcr.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	public UserLoginMapper userLoginMapper;
	
	
	public int UserCount() {
		int count=userLoginMapper.selectUserLoginCount();
		return count;
	}


	public int UserRegister(String username, String password, String email) {
		UserLogin userLogin=new UserLogin();
		userLogin.setUserName(username);
		userLogin.setPassword(password);
		userLogin.setUserEmail(email);
		
		int n=userLoginMapper.insert(userLogin);
		return n;
	}

	
	public int selectUser(UserLogin userLogin) {
		int count=userLoginMapper.selectUser(userLogin);
			System.out.println(count);
		return count;
	}
	
	
	
	
	
	
}
