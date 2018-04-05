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
@RequestMapping(value="user")
public class UserController {
	
	@Autowired
	public UserService userService;
	
	@RequestMapping(value="allUser")
	public String allUser(){
		int count;
		count=userService.UserCount();
		System.out.println(count);
		return "/index";
	}
	
	@RequestMapping(value="index")
	public String Index(){
		return "/index";
	}
	
	@RequestMapping(value="RegisterAndLogIn")
	public String registerAndLogIn(){
		return "/bigPage/registerAndLogIn";
	}
	
	@RequestMapping(value="QuestionAndAnswer")
	public String QuestionAndAnswer(HttpServletRequest request){
		
		return "/bigPage/questionAndAnswer";
	}
	
	@RequestMapping(value="Article")
	public String Article(HttpServletRequest request){
		
		return "/bigPage/article";
	}
	
}
