package com.model;

import jakarta.persistence.*;

@Entity
public class Subjects {
	@Id
	String Subjectname;
	String Subjectcode;
	int Chapters;
	public String getSubjectname() {
		return Subjectname;
	}
	public void setSubjectname(String subjectname) {
		Subjectname = subjectname;
	}
	public String getSubjectcode() {
		return Subjectcode;
	}
	public void setSubjectcode(String subjectcode) {
		Subjectcode = subjectcode;
	}
	public int getChapters() {
		return Chapters;
	}
	public void setChapters(int chapters) {
		Chapters = chapters;
	}
	
}
