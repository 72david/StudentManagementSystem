package com.service;

import java.util.List;
import java.util.regex.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.*;
import com.Repository.SubjectRepository;


@Service
public class verify_subjects {
	
	@Autowired
	SubjectRepository Subjects;
	
	private String subjectname;
	
	public List<Subjects> subjects(){
		return Subjects.findAll();
	}
	
	public Subjects subject(String subjectname) {
		this.subjectname=subjectname;
		return Subjects.findById(subjectname).orElse(null);
	}
	
	//edit the subject
	public String editsubject(String subcode,int chapter) {
		
		
		Pattern p=Pattern.compile("[^0-9]");//check the chapter valid or not
		Matcher m=p.matcher(chapter+"");
		if(m.find() || chapter>15 || chapter<=5){
			return  "Invalid Chapters";
		}	
		else{
			Subjects.deleteById(this.subjectname);
			Subjects subject=new Subjects();
			subject.setSubjectname(this.subjectname);
			subject.setSubjectcode(subcode);
			subject.setChapters(chapter);
			Subjects.save(subject);
			return "Updated Successfully";
		}	
	}
}
