package cn.fcr.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.fcr.qa3.mapper.UserInfoMapper;
import cn.fcr.qa3.mapper.UserLoginMapper;
import cn.fcr.qa3.pojo.UserInfo;
import cn.fcr.qa3.pojo.UserLogin;
import cn.fcr.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	public UserLoginMapper userLoginMapper;
	
	@Autowired
	public UserInfoMapper userInfoMapper;
	
	public int UserCount() {
		int count=userLoginMapper.selectUserLoginCount();
		return count;
	}
	
	//用户注册
	@Transactional//配置事务管理
	public int UserRegister(String username, String password, String email,String ip) {
		UserLogin userLogin=new UserLogin();
		userLogin.setUserName(username);
		userLogin.setPassword(password);
		userLogin.setUserEmail(email);
		
		//设置默认头像
		userLogin.setUserImg("emoji-29.png");
		//向user_login表插入数据
		int n=userLoginMapper.insert(userLogin);
		
		//如果login成功插入，去查询这个id是多少
		
		
		//如果上面的表插入成功，向user_info表插入ip
		if(n>0){
				//查询刚才添加的用户 的 id
				UserLogin userLogin2=userLoginMapper.selectByEmail(email);
				int userId=userLogin2.getUserId();
				
				//把查到的id插入user_info表
				UserInfo userInfo=new UserInfo();
				userInfo.setUserId(userId);
				userInfo.setUserIp(ip);
				int m=userInfoMapper.insert(userInfo);
				if(m>0){
					System.out.println(userId+" 号用户ip插入成功 ");
				}
				else {
					System.out.println(userId+" 用户ip插入失败");
				}
			}
		return n;
	}
	
	
	
	public int selectUser(UserLogin userLogin) {
		int count=userLoginMapper.selectUser(userLogin);
			System.out.println("查询到符合条件的用户："+count);
		return count;
	}
	
	//返回用户信息
	public UserLogin selectUserByEmail(String email) {
		UserLogin userLogin2=userLoginMapper.selectByEmail(email);
		
		return userLogin2;
	}
	
	//密码邮箱登录
	public int login(String password, String email) {
		int n=userLoginMapper.login(email, password);
		return n;
	}
	
	//根据id修改头像
	public int updateUserImage(String userImg,Integer userId) {
		UserLogin userLogin=new UserLogin();
		userLogin.setUserImg(userImg);
		userLogin.setUserId(userId);
		int n=userLoginMapper.updateByPrimaryKeySelective(userLogin);
		
		return n;
	}
	
	//根据id修改基本信息
	public int updateUserLogin(String userName, String userPhone, String userEmail, String userDescribe, int userId) {
		UserLogin userLogin=new UserLogin();
		userLogin.setUserId(userId);
		userLogin.setUserName(userName);
		userLogin.setUserPhone(userPhone);
		userLogin.setUserEmail(userEmail);
		userLogin.setUserDescribe(userDescribe);
		System.out.println(userId+"在修改用户信息"+"结果代码：");
		int n=userLoginMapper.updateByPrimaryKeySelective(userLogin);
		System.out.print(n);
		return n;
	}

	
	
	
	
	
	
	
}
