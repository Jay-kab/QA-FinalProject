package com.jay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jay.entity.Employee;
import com.jay.repository.EmployeeRepository;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeRepository empRepository;

	@RequestMapping(value = "/loginUser", method = RequestMethod.POST)

	public ModelAndView login(String username, String password) throws Exception {

		System.out.println("inside login( )" + username + ", " + password);

		Employee emp = empRepository.findByUsernameAndPassword(username, password);
		
		if(emp != null) {
			
			ModelAndView modelAndView = new ModelAndView("adminPage");
			modelAndView.addObject("empData", emp);
			
			return modelAndView;
		}
		
		if (username.equals("") || password.equals("")) {

			ModelAndView modelAndView = new ModelAndView("login");
			modelAndView.addObject("loginErrorMessage", "Please input a field!");

			return modelAndView;
			
		}

		else {
			ModelAndView modelAndView = new ModelAndView("login");
			modelAndView.addObject("loginErrorMessage", "Incorrect Credentials!! please try again");
			
			return modelAndView;
		}
	}
		
		
		
	
	
		
		
		
		
		
		



}
