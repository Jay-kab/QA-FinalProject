package com.jay.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jay.entity.Employee;
import com.jay.repository.EmployeeRepository;

@Controller
public class RegistrationController {
	
	@Autowired
	EmployeeRepository employeeRepository;

	@RequestMapping("/signUpPage")
	public ModelAndView registrationPage() {

		ModelAndView modelAndView = new ModelAndView("signUp");

		return modelAndView;
		
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(String username, String password, String first_name, String last_name, String email, String department, String role) throws Exception {
		
		System.out.println("inside register api "+username+" "+password);
		
		ModelAndView modelAndView = new ModelAndView("login");
		
		Employee emp = new Employee(username, password, first_name, last_name, email, department, role);

		employeeRepository.save(emp);
		
		return modelAndView;
		
	}
}



