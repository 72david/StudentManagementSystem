package com.controller;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import com.model.*;
import com.Repository.*;
import com.service.*;

@SpringBootApplication(scanBasePackageClasses = indexController.class)
@ComponentScan(basePackageClasses= {variables.class,verify_user.class,verify_result.class,verify_fees.class}
									,basePackages = "com.controller")
@EnableJpaRepositories(basePackageClasses ={studentrepository.class,MarkSheetRepository.class})
@EntityScan(basePackageClasses = Studentdetails.class)
public class StudentsManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(StudentsManagementApplication.class, args);
	}
}
	