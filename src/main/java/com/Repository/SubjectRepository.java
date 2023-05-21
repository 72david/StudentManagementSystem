package com.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.model.Subjects;

public interface SubjectRepository extends JpaRepository<Subjects,String>{

}
