package com.example.demo.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.domain.User;

@Controller
@RequestMapping("/")
public class UserController {
	private List<User> userList=new ArrayList<User>();
	
	@RequestMapping("/")
	public String index(){
		return "/bbs";
	}
	
	@RequestMapping("/create")
	public String create(UserForm form,Model model){
		String name=form.getName();
		String message=form.getMessage();
		
		User user=new User();
		user.setName(name);
		user.setMessage(message);
		userList.add(user);
		
		model.addAttribute("userList", userList);
		return "/bbs";
	}
	
	@ModelAttribute
	public UserForm setUp(){
		return new UserForm();
	}
	
}
