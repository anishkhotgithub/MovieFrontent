package com.anish.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anish.dao.MovieDAO;
import com.anish.dao.SeasonDAO;
import com.anish.model.Movie;
import com.anish.model.Seasons;

@Controller
@RequestMapping(value= {"/seasons"})
public class SeasonController 
{
	@Autowired
	SeasonDAO sdao;
	@Autowired
	MovieDAO mdao;
	
	@RequestMapping("/delete/{id}")
	public String m6(@PathVariable("id") int sid)
	{
		Seasons s=new Seasons();
		s.setSid(sid);;
		sdao.delSeason(s);
		return "redirect:/movies/";
	}
	@RequestMapping("/edit/{id}")
	public String m7(@PathVariable("id") int sid,ModelMap map)
	{
		Seasons s=sdao.dispSeason(sid);
		map.addAttribute("season",s);
		return "addSeason";
	}
	@PostMapping("/update")
	public String m4(@ModelAttribute("season") Seasons season)
	{
		sdao.updSeason(season);
		return "redirect:/movies/";
	}
}
