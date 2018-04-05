package cn.fcr.qa3.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

	
@Controller
@RequestMapping(value="index")
public class IndexController {
	
	
	@RequestMapping(value="toIndex")
	public String toIndex(){
		return "jsp/users";
	}
	
	
}
