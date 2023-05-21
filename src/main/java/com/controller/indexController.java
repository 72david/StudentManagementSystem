package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import com.model.*;
import com.service.*;

@RestController
public class indexController {
	
	@Autowired	
	verify_user studentdataservice;
	
	@Autowired	
	verify_result studentresults;
	
	@Autowired	
	verify_fees studentfees;
	
	@Autowired	
	verify_subjects studentsubjects;
	
	//Normal class for passing data using object throw the ModelAndView class
	private variables var=new variables();
	
	//only one ModelAndView object is initialized and this is response for all client request
	ModelAndView view_object;
	
	@RequestMapping("index")
	private ModelAndView index(){
		//object only created when the index called by client otherwise no chance
		if(view_object ==null) {
			view_object=new ModelAndView("index");
		}
		//for the login contanier
		var.setDisplay(false);
		var.setWmessage(null);
		return view_object;
	}
	@GetMapping("home")
	private ModelAndView home() {
		view_object.setViewName("home");
		return view_object;
	}
	
	@GetMapping("logingui")
	private ModelAndView loginpage(){
		var.setDisplay(true);
		//Passing the data using object in ModelAndView class
		view_object.addObject("datas", var);
		view_object.setViewName("index");
		return view_object;
	}
	@GetMapping("login")
    private ModelAndView Login(String name,String dateofbirth){
		verify_user checked_data=studentdataservice.checklogindata(name, dateofbirth);
		//the condition become true when the client passing the correct datas else the home page doesn't displayed
		if(checked_data.wmessage==null){
			view_object.addObject("user",checked_data.user);
			view_object.setViewName("home");
			var.setDisplay(false);
		}else {
			var.setWmessage(checked_data.wmessage);
		}
		view_object.addObject("datas",var);
		return view_object;
	}
	@GetMapping("myprofile")
	private ModelAndView profile() {
		view_object.setViewName("profile");
		return view_object;
	}
	@GetMapping("logout")
	private ModelAndView logout() {
		view_object.setViewName("index");
		return view_object;
	}
	
	
	@GetMapping("studentdetails")
	private ModelAndView studentdetails() {
		//get the message from the service method and passing to the client page
		view_object.addObject("studentlist",studentdataservice.studentlist());
		view_object.setViewName("studentdetails");
		return view_object;
	}
	@RequestMapping("addstudent")
	private ModelAndView addstudent(){
		var.setWmessage(null);
		view_object.setViewName("addstudent");
		return view_object;
	}
	
	@GetMapping("addstudentdata")
	private ModelAndView addstudentdata(Studentdetails studentdata) {
		//when adding the new student Paid fees will be Zero
		studentdata.setFees(0);
		var.setWmessage(studentdataservice.addstudentdata(studentdata));
		view_object.addObject("datas",var);
		return view_object;
	}
	
	@RequestMapping("addresult")
	private ModelAndView addresult(){
		var.setWmessage(null);
		view_object.setViewName("addresult");
		return view_object;
	}
	@GetMapping("result")
	private ModelAndView studentresult() {
		view_object.addObject("resultlist",studentresults.results());
		view_object.setViewName("result");
		return view_object;
	}
	@RequestMapping("studentresult")
	private ModelAndView addresult(MarkSheet mark) {
		String check=studentresults.addmarksheet(mark);
		//check  the string null or not,null means data added successfully 
		if(check==null){
			var.setWmessage("Added Successfully");
		}else {
			var.setWmessage(check);
		}
		view_object.addObject("datas",var);
		return view_object;
	}
	
	
	@RequestMapping("feesdetails")
	private ModelAndView feesdetais(){
		view_object.addObject("studentlist",studentdataservice.studentlist());
		view_object.setViewName("Fees");
		return view_object;
	}
	@RequestMapping("addfees")
	private ModelAndView addfees(){
		var.setWmessage(null);
		view_object.setViewName("payfees");
		return view_object;
	}
	@RequestMapping("payfees")
	private ModelAndView payfees(String name,String rollno,String amount){
		var.setWmessage(studentfees.payfees(name,Integer.parseInt(rollno), amount));
		view_object.addObject("datas",var);
		view_object.setViewName("payfees");
		return view_object;
	}
	
	@RequestMapping("subjects")
	private ModelAndView subjects(){
		var.setWmessage(null);
		view_object.setViewName("subjects");
		view_object.addObject("subjectlist", studentsubjects.subjects());
		return view_object;
	}
	@RequestMapping("editsubject")
	private ModelAndView editsubjects(String subjectname){
		view_object.addObject("subject", studentsubjects.subject(subjectname));
		view_object.setViewName("editsubject");
		return view_object;
	}
	@RequestMapping("editsubjectdata")
	private ModelAndView subjects(String subjectcode,String chapters){
		var.setWmessage(studentsubjects.editsubject(subjectcode,Integer.parseInt(chapters)));
		view_object.addObject("datas",var);
		return view_object;
	}
}

