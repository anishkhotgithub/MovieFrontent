package com.anish.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.anish.dao.MovieDAO;
import com.anish.model.Movie;

@Controller
@RequestMapping("/movies")
public class MovieController 
{
	@Autowired
	MovieDAO movieDAO;
	
	@RequestMapping("/")
	public String m1(ModelMap map)
	{
			map.addAttribute("movies", movieDAO.dispMovie());
			return "allMovies";
	}
	@GetMapping("/addmovies")
	public String m2(ModelMap map)
	{
		map.addAttribute("movie",new Movie());
		return "addMovies";
	}
	@PostMapping("/addmovies")
	public String m3(@ModelAttribute("movie") Movie movie)
	{
		movieDAO.addMovie(movie);
		return "redirect:/movies/";
	}
	@PostMapping("/update")
	public String m4(@ModelAttribute("movie") Movie movie)
	{
		movieDAO.updMovie(movie);
		return "redirect:/movies/";
	}
	
	@RequestMapping("/movieid/{id}")
	public String m5(@PathVariable("id") int movieid,ModelMap map)
	{
		map.addAttribute("movie",movieDAO.dispMovie(movieid));
		return "dispMovie";
	}
	@RequestMapping("/delete/{id}")
	public String m6(@PathVariable("id") int movieid)
	{
		Movie m=new Movie();
		m.setMovieID(movieid);
		movieDAO.delMovie(m);
		return "redirect:/";
	}
	@RequestMapping("/edit/{id}")
	public String m7(@PathVariable("id") int movieid,ModelMap map)
	{
		Movie m=movieDAO.dispMovie(movieid);
		map.addAttribute("m",m);
		return "addMovies";
	}
}
