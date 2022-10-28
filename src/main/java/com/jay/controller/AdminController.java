package com.jay.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jay.entity.Employee;
import com.jay.repository.EmployeeRepository;
import com.jay.service.EmployeeService;

@Controller
public class AdminController {

	@Autowired
	EmployeeService empService;
	EmployeeRepository empRepository;

	@RequestMapping("/employeeListPage")
	public ModelAndView homePage() throws Exception {

		System.out.println("inside emp list");

		ModelAndView modelAndView = new ModelAndView("employeeList");

		List<Employee> emps = empService.getAllEmployees();

		modelAndView.addObject("allEmployees", emps);

		return modelAndView;

	
	}

	@RequestMapping("/delete/{username}")
	public ModelAndView deleteUser(@PathVariable String username) throws Exception {

		System.out.println("the empid is " + username);

		empService.deleteUser(username);

		List<Employee> emps = empService.getAllEmployees();

		ModelAndView modelAndView = new ModelAndView("employeeList");

		modelAndView.addObject("allEmployees", emps);

		return modelAndView;
	}

	
	@RequestMapping("/update/{username}")
	public ModelAndView updateUser(@PathVariable String username) throws Exception {

		System.out.println("inside updateUser " + username);

		ModelAndView modelAndView = new ModelAndView("updatePage");

		Employee emp = empService.getEmployee(username);

		modelAndView.addObject("empData", emp);
		
		return modelAndView;

	}
	
	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public ModelAndView updatedUser(String username, String first_name, String last_name, String email, String department, String role) throws Exception {
		
		System.out.println("inside register api "+username+" "+"trying to update");
		
		ModelAndView modelAndView = new ModelAndView("employeeList");
		
		Employee emp = empService.getEmployee(username);

		modelAndView.addObject("empData", emp);
		
		empRepository.save(emp);
		
		return modelAndView;
}
}
