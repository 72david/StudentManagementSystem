package com.model;
import java.util.*;

public class variables {
	int RollNo;
	String wmessage;
	boolean display;
	List<Studentdetails> studentlist;
	
	public int getRollNo() {
		return RollNo;
	}
	public void setRollNo(int rollNo) {
		RollNo = rollNo;
	}
	public String getWmessage() {
		return wmessage;
	}
	public void setWmessage(String wmessage) {
		this.wmessage = wmessage;
	}
	public boolean isDisplay() {
		return display;
	}
	public void setDisplay(boolean display) {
		this.display = display;
	}
	public List<Studentdetails> getStudentlist() {
		return studentlist;
	}
	public void setStudentlist(List<Studentdetails> studentlist) {
		this.studentlist = studentlist;
	}
	
}
