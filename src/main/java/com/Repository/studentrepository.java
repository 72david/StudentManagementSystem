package com.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.model.Studentdetails;

public interface studentrepository extends JpaRepository<Studentdetails,Integer>{

}
