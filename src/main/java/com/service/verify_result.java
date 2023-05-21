package com.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Repository.MarkSheetRepository;
import com.model.*;

@Service
public class verify_result {
	
	@Autowired
	MarkSheetRepository Result;
	
	@Autowired	
	verify_user studentdataservice;
	
	
	//add a marksheet for a student
	public List<Results> results(){
		List<MarkSheet> marksheets=Result.findAll();
		List<Results> results=new ArrayList<Results>();
		 
		for(MarkSheet ms:marksheets) {
			//get total mark(add all subject marks)
			Results r=new Results();
			int total=gettotal(ms);
			r.setName(ms.getName());
			r.setRollno(ms.getRollno());
			r.setTotal(total);
			r.setGrade(getgrade(total));//grade for a total
			results.add(r);
		}
		return results;
	}
	//return the total mark of the result
	private static int gettotal(MarkSheet marksheet) {
		return marksheet.getEnglish()+marksheet.getHtmlCss()
		+marksheet.getJava()+marksheet.getPython()+marksheet.getTamil();
	}
	//give grade based on total
	private static char getgrade(int total) {
		if(total>=450)
			return 'A';
		else if(total>=400)
			return 'B';
		else if(total>=350)
			return 'C';
		else if(total>=300)
			return 'D';
		else if(total>=300)
			return 'E';
		else 
			return 'F';
	}
	//adding mark sheet
	public String addmarksheet(MarkSheet marks) {
		
		int m1,m2,m3,m4,m5,rollno;
		boolean mark1,mark2,mark3,mark4,mark5;
		String name=marks.getName();
		rollno=marks.getRollno();
		MarkSheet student=Result.findById(rollno).orElse(null);//check markSheet exist in database
		
		if(studentdataservice.checkstudent(name, rollno) ) {
			m1=marks.getTamil();
			m2=marks.getEnglish();
			m3=marks.getJava();
			m4=marks.getPython();
			m5=marks.getHtmlCss();
			//check marks
			mark1=(m1<=100 || m1<0)?true:false;
			mark2=(m2<=100 || m2<0)?true:false;
			mark3=(m3<=100 || m3<0)?true:false;
			mark4=(m4<=100 || m4<0)?true:false;
			mark5=(m5<=100 || m5<0)?true:false;
			if(mark1==false ||mark2==false ||mark3==false ||mark4==false ||mark5==false ){
				return "Enter Valid Marks";
			}else if(student!=null) {
				return "Information already Exist";
			}else {
				Result.save(marks);
				return null;
			}
		}else 
			return "Invalid Information";
	}
}
