
package com.jay.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jay.entity.Employee;
import com.jay.repository.EmployeeRepository;

@Service
public class EmployeeService {

	@Autowired
	EmployeeRepository empRepository;

	public List<Employee> getAllEmployees() throws Exception {

		List<Employee> emps = empRepository.findAll();

		return emps;
	}

	public void deleteUser(String username) throws Exception {

		empRepository.deleteById(username);
	}

	public Employee getEmployee(String username) throws Exception {

		Optional<Employee> optional = empRepository.findById(username);
		
		Employee emp = optional.get();

		return emp;
	}
	
	

}

