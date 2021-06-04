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
	
	/*
	 * @RequestMapping("/add") public String m1(ModelMap map) {
	 * map.addAttribute("season",new Seasons()); return "addSeason"; }
	 * 
	 * @PostMapping("/addseason/{mid}") public String m2(@PathVariable("mid") int
	 * mid, @ModelAttribute("season") Seasons seasons) { Movie movie =
	 * mdao.dispMovie(mid); seasons.setMovie(movie); sdao.addSeason(seasons); return
	 * "allMovies"; }
	 */
}
