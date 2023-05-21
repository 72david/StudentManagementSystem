package com.service;

import java.util.*;
import java.util.regex.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Repository.*;
import com.model.*;

@Service
public class verify_user {

	@Autowired
	studentrepository StudentData;
	
	//for return the data for controller in through object 
	public Studentdetails user;
	public String wmessage=null;
	public List<String> StudentName;
	
	public verify_user checklogindata(String name,String dob) {
		
		List<Studentdetails> studentslist=StudentData.findAll();
		for(Studentdetails data:studentslist) {
			String Name=data.getFirstname()+" "+data.getSecondname();
			//compare user data and DataBase data
			if(Name.equals(name) && data.getDateofbirth().equals(dob)) {
				this.wmessage=null;
				this.user=data;
				return this;
			}
		}
		this.wmessage="Invalid Information";
		return this;
	}
	public String addstudentdata(Studentdetails studentdata) {
		//string variables
		String fname,sname,city,fathername,email,gender,dob,name;
		fname=studentdata.getFirstname();
		sname=studentdata.getSecondname();
		fathername=studentdata.getFathername();
		city=studentdata.getCity();
		gender=studentdata.getGender();
		email=studentdata.getEmail();
		dob=studentdata.getDateofbirth();
		
		name=(!(sname==null))?fname+" "+sname:fname;//first name+last name
		
		//pattern for validate the information
    	Pattern p=Pattern.compile("[^a-zA-Z\\s]");
    	Pattern pe=Pattern.compile("@gmail.com$");
    	Pattern pdob=Pattern.compile("([0-3][0-9])-([0-1][0-9])-([2][0][0-2][0-9])");
    	
    	Matcher mname,mfather,mcity,memail,mdob;//matcher variables
    	//matcher for validate the data
    	mname=p.matcher(name);
    	mfather=p.matcher(fathername);
    	mcity=p.matcher(city);
    	memail=pe.matcher(email);
    	mdob=pdob.matcher(dob);
    	
    	

    	if(mdob.find()){}else dob=null;//date of birth is not valid date of birth will be null
    	
    	/**
    	* if all data become invalid then alert message displayed for the first data and the page refreshed
    	* if the if-else condition not used alert message displayed one by one
    	* the condition for if and if-else the condition becomes true the data is invalid
    	* all the condition are failed entered value are valid then else part execute 
    	*/
   
     	if(mname.find() || name.length()>25 || name.length()<2){
     		return "Invalid Name";
     	}
     	else if(dob==null){
     		return "Invalid Date Of Birth";
     	}
     	else if(mfather.find() || fathername.length()>25 || fathername.length()<2){
     		return "Invalid Father Name";
     	}
     	else if(gender.equals("")){
     		return "Select Gender";
     	}
     	else if(!memail.find() || email.length()>30){
     		return "Invalid Email";
     	}
     	else if(mcity.find() || city.length()>25 || city.length()<2){
     		return "Invalid City";
     	}  	
     	else{
     		studentdata.setRollno(studentlist().size()+1);
     		StudentData.save(studentdata);
     		return "Added Successfully";
     	}
	}
	//return all data from the table
	public List<Studentdetails> studentlist(){
		return StudentData.findAll();
	}
	//return true when the two datas correct
	public boolean checkstudent(String name,int rollno) {
		Studentdetails student=StudentData.findById(rollno).orElse(null);
		if(student!=null && (student.getFirstname()+" "+student.getSecondname()).equals(name))
			return true;
		return false;
	}
	//return the student data it find by rollno in database
	public Studentdetails student(int Rollno) {
		return StudentData.findById(Rollno).orElse(null);
	}
	//delete the student by rollno
	public void deletestudent(int Rollno) {
		StudentData.deleteById(Rollno);
	}
	//add student
	public void addstudent(Studentdetails student) {
		StudentData.save(student);
	}
}
