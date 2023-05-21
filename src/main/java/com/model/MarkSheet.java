package com.model;

import jakarta.persistence.*;

@Entity
public class MarkSheet {
	@Id
	int Rollno;
	String Name;
	int Tamil;
	int English;
	int java;
	int Python;
	int HtmlCss;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getRollno() {
		return Rollno;
	}
	public void setRollno(int rollno) {
		Rollno = rollno;
	}
	public int getTamil() {
		return Tamil;
	}
	public void setTamil(int tamil) {
		Tamil = tamil;
	}
	public int getEnglish() {
		return English;
	}
	public void setEnglish(int english) {
		English = english;
	}
	public int getJava() {
		return java;
	}
	public void setJava(int java) {
		this.java = java;
	}
	public int getPython() {
		return Python;
	}
	public void setPython(int python) {
		Python = python;
	}
	public int getHtmlCss() {
		return HtmlCss;
	}
	public void setHtmlCss(int htmlCss) {
		HtmlCss = htmlCss;
	}
}
