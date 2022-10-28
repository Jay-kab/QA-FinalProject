package com.jay.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller // this means you're handling with jsp. Restcontroller means you're handling
			// with string
public class HomeController {

	@RequestMapping("/")
	public ModelAndView homePage() {

		ModelAndView modelAndView = new ModelAndView("index");

		return modelAndView;
	}
	
	@RequestMapping("/login")
	public ModelAndView loginPage() {

		ModelAndView modelAndView = new ModelAndView("login");

		return modelAndView;
	}

	
	

		
	

}
