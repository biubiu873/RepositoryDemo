package cn.fcr.qa3.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.fcr.qa3.pojo.UserLogin;
import cn.fcr.service.UserService;

@Controller
@RequestMapping("jsp/")
public class JspController {
	
	@Autowired
	public UserService userService;
	
	
	//使用ajax提交
	@RequestMapping(value="sonPage/register")
	public void  UserRegiste(HttpServletRequest request,HttpServletResponse response) throws IOException{	
		String userName=request.getParameter("yourname");
		String password=request.getParameter("yourpass");
		String email=request.getParameter("youremail");
		
		UserLogin userLogin=new UserLogin();
		userLogin.setUserEmail(email);
		int userExis=userService.selectUser(userLogin);
		
		if(userExis>0){
			
			System.out.println("注册失败，因为邮箱已经被占用");
			response.getWriter().write(String.valueOf(1));
		}
		else {
			//此方法返回插入数据的id
			int n=userService.UserRegister(userName, password, email);
			
			
			System.out.println("=====");System.out.println("=====");System.out.println("=====");System.out.println("=====");System.out.println("=====");System.out.println("=====");
			//System.out.println("用户ip地址：  "+request.getRemoteAddr());
			System.out.println(userName);
			System.out.println(password);
			System.out.println(email);
			System.out.println(n);
			if(n>0){
				System.out.println("注册成功");
				response.getWriter().write(String.valueOf(0));
			}
			else {
				System.out.println("注册失败，原因未知");
				response.getWriter().write(String.valueOf(2));
			}
			
		}
		
	}
	
	@RequestMapping(value="sonPage/login")
	public void Login(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		String email=request.getParameter("email");
		System.out.println(email+" 用户在登录");
		if(email!=""&&!email.equals(null)){
			String password=request.getParameter("password");
			UserLogin userLogin=new UserLogin();
			userLogin.setUserEmail(email);
			int userExis=userService.selectUser(userLogin);
			if(userExis>0){
				userLogin.setPassword(password);
				userExis=userService.selectUser(userLogin);
				if(userExis>0){
					System.out.println("登录成功");
					
					request.setAttribute("userinfo",email);
					response.getWriter().write(String.valueOf(0));
					
				}
				else {
					System.out.println("邮箱已注册，但是密码不对");
					response.getWriter().write(String.valueOf(2));
				}
			}
			else {
				System.out.println("未找到该邮箱记录");
				response.getWriter().write(String.valueOf(1));
			}
		}
		else {
			response.getWriter().write(String.valueOf(1));
		}
		
	}
	

	
	
	/*//注册测试
	@RequestMapping(value="sonPage/register")
	//	这种格式怕不稳定（）public String UserRegiste(String yourname,String yourpass,String youremail){
	public String UserRegiste(HttpServletRequest request){	
		String userName=request.getParameter("yourname");
		String password=request.getParameter("yourpass");
		String email=request.getParameter("youremail");
		
		//返回的是受影响行数
		int n=userService.UserRegister(userName, password, email);
		
		
		
		System.out.println("=====");System.out.println("=====");System.out.println("=====");System.out.println("=====");System.out.println("=====");System.out.println("=====");
		System.out.println("yourname");
		System.out.println("yourpass");
		System.out.println("youremail");
		System.out.println(n);
		return "test";
	}*/
	
}
