package com.anish.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController 
{
	@RequestMapping(value = {"/","home"})
	public String m1()
	{
		return "allMovies";
	}
}
