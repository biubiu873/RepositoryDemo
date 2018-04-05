package cn.fcr.qa3.web;

import javax.servlet.http.HttpServletRequest;

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
public class JspController {
	
	@Autowired
	public UserService userService;
	
	//注册测试
	@RequestMapping(value="user/register")
	//	这种格式怕不稳定（）public String UserRegiste(String yourname,String yourpass,String youremail){
	public String UserRegiste(HttpServletRequest request){	
		String userName=request.getParameter("yourname");
		String password=request.getParameter("yourpass");
		String email=request.getParameter("youremail");
		
		int n=userService.UserRegister(userName, password, email);
		
		
		
		System.out.println("=====");System.out.println("=====");System.out.println("=====");System.out.println("=====");System.out.println("=====");System.out.println("=====");
		System.out.println("yourname");
		System.out.println("yourpass");
		System.out.println("youremail");
		System.out.println(n);
		return "/jsp/common";
	}
	
}
