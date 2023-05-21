package com.model;

import jakarta.persistence.*;

@Entity
public class Studentdetails {
	
	@Id
	int Rollno;
	String Firstname;
	String Secondname;
	String Fathername;
	String Email;
	String Dateofbirth;
	String Gender;
	long fees;
	String City;
	
	public int getRollno() {
		return Rollno;
	}
	public void setRollno(int rollno) {
		Rollno = rollno;
	}
	public String getFirstname() {
		return Firstname;
	}
	public void setFirstname(String firstname) {
		Firstname = firstname;
	}
	public String getSecondname() {
		return Secondname;
	}
	public void setSecondname(String secondname) {
		Secondname = secondname;
	}
	public String getFathername() {
		return Fathername;
	}
	public void setFathername(String fathername) {
		Fathername = fathername;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getDateofbirth() {
		return Dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		Dateofbirth = dateofbirth;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public long getFees() {
		return fees;
	}
	public void setFees(long fees) {
		this.fees = fees;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
}
