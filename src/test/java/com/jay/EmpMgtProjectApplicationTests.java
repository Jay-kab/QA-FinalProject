package com.jay;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.jay.repository.EmployeeRepository;

@SpringBootTest
class EmpMgtProjectApplicationTests {

	@Autowired
	EmployeeRepository employeeRepository;
	
	@Test
	public void getEmployee() {
		
	}
}
