package cn.fcr.qa3.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.fcr.qa3.pojo.UserInfo;
import cn.fcr.qa3.pojo.UserLogin;
import cn.fcr.service.UserService;

@Controller
@RequestMapping("jsp/")
public class JspController {
	
	@Autowired
	public UserService userService;
	
	
	//使用ajax提交注册信息
	@RequestMapping(value="sonPage/register")
	public void  UserRegiste(HttpServletRequest request,HttpServletResponse response) throws IOException{	
		String userName=request.getParameter("yourname");
		String password=request.getParameter("yourpass");
		String email=request.getParameter("youremail");
		//用户ip
		String ip=request.getRemoteAddr();
		
		//查询email是否被注册过
		UserLogin userLogin=new UserLogin();
		userLogin.setUserEmail(email);
		int userExis=userService.selectUser(userLogin);
		
		//查询email是否为空
		if(email==null || email==""){
			response.getWriter().write(String.valueOf(3));
		}
		else{
			//如果email被注册过，返回值大于0
			if(userExis>0){
				System.out.println("注册失败，因为邮箱已经被占用");
				response.getWriter().write(String.valueOf(1));
			}
			else {
				//此方法返回受影响行数
				int n=userService.UserRegister(userName, password, email,ip);
				
				System.out.println("=====");System.out.println("=====");System.out.println("=====");System.out.println("=====");System.out.println("=====");System.out.println("=====");
				System.out.println(userName);
				System.out.println(password);
				System.out.println(email);
				System.out.println("此次操作影响记录条数："+n);
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
		
	}
	
	
	@RequestMapping("json")
	@ResponseBody
	public UserLogin jsontest(){
		UserLogin userLogin=new UserLogin();
		userLogin.setPassword("aaa");
		userLogin.setUserDescribe("ddd");
		userLogin.setUserEmail("dsf");
		userLogin.setUserImg("df");
		userLogin.setUserId(5);
		userLogin.setUserName("df");
		userLogin.setUserPhone("sdf78");
		return userLogin;
	}
	
	
	
	
	//登录
	@RequestMapping(value="sonPage/login")
	public void Login(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		System.out.println(email+" 用户在登录");
		//判断email和password是否为空
		if(email!=""&&!email.equals(null)&&password!=""&&!password.equals(null)&&password!=" "&&email!=" "){
			
			UserLogin userLogin=new UserLogin();
			userLogin.setUserEmail(email);
			int userExis=userService.selectUser(userLogin);
			
			//如果userExis大于0，说明已注册过
			if(userExis>0){
				userLogin.setPassword(password);
				int userExis2=userService.login(password, email);
				if(userExis2>0){
					System.out.println("邮箱："+userLogin.getUserEmail()+"密码："+userLogin.getPassword()+"登录成功");
					//返回登录状态
					response.getWriter().write(String.valueOf(0));
					
					//加载用户信息
					HttpSession session=request.getSession();
					//获取session返回客户端的cookie(即这个session的id)
					String sessionId=session.getId();
					System.out.println(sessionId);
					//创建一个新的cookie覆盖自动创建的cookie，因为自动创建的没有设置有效期
					//这个cookie的name和路径必须与原来的一致才能覆盖掉  貌似没起作用
					Cookie cookie=new Cookie("JSESSIONID",sessionId);
					cookie.setPath("N/A");
					cookie.setMaxAge(30*60);//有效期30分钟
					
					
					//根据邮箱查询用户，并把信息加入session
					UserLogin userLogin2=userService.selectUserByEmail(email);
					session.setAttribute("userName", userLogin2.getUserName());
					session.setAttribute("userImg", userLogin2.getUserImg());
					session.setAttribute("userDescribe", userLogin2.getUserDescribe());
					session.setAttribute("userPassword", userLogin2.getPassword());
					session.setAttribute("userPhone", userLogin2.getUserPhone());
					session.setAttribute("userid", userLogin2.getUserId());
					session.setAttribute("userEmail", email);
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
			response.getWriter().write(String.valueOf(3));
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
