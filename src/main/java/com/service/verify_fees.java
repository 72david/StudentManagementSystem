package com.service;

import java.util.regex.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.Studentdetails;

@Service
public class verify_fees {
	
	@Autowired	
	verify_user studentdataservice;
	
	//method for paying fees
	public String payfees(String name,int rollno,String fees) {
		//if name and rollno is correct then this statement will true
		if(studentdataservice.checkstudent(name, rollno)){
			Studentdetails student=studentdataservice.student(rollno);
			Pattern p=Pattern.compile("[^0-9]");//check it is number or not
			Matcher m=p.matcher(fees);
			if(m.find() && fees.length()<=5 && fees.length()>1)
				return "Enter valid Fees";
			long PaidAmount=student.getFees();
			long amount=Long.parseLong(fees);
			if(PaidAmount==50000)
				return "Fees Already Paid";
			PaidAmount+=amount;
			String Balance="";
			//if user pay extra amount this will return the balance
			if(PaidAmount>50000) {
				Balance="Take Your Balance"+(PaidAmount-50000);
				PaidAmount=50000;
			}
			student.setFees(PaidAmount);
			//delete the data and add the latest data to the data base
			studentdataservice.deletestudent(rollno);
			studentdataservice.addstudent(student);
			return "Paid Successfully"+Balance;
		}else {
			return "Enter Valid Student Information";
		}
	}
}
