package com.anish.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anish.dao.UserDAO;
import com.anish.model.User;
import com.anish.email.Email;

@Controller
@RequestMapping("/user")
public class UserController 
{
	@Autowired
	UserDAO userDao;
	
	@RequestMapping("/login")
	public String login()
	{
		return "login";
	}
	@RequestMapping("/register")
	public String add(ModelMap map)
	{
		map.addAttribute("user",new User());
		return "register";
	}
	@PostMapping("/register")
	public String m1(@Valid @ModelAttribute("user") User u,BindingResult result) throws Exception
	{
		if(!result.hasErrors())
		{
			u.setPassword(new BCryptPasswordEncoder().encode(u.getPassword()));
			userDao.addUser(u);
			Email em=new Email(u.getEmail(), "Registered Successfully!!!", "Welcome to Email API");
			em.sendEmail();
			return "redirect:/user/login";
		}
		else
		{
			return "register";
		}
	}
	
	
	
}
