package com.feedback.dao;

import java.util.ArrayList;

import com.feedback.dto.Student;

public interface StudentDao {
	
	int insertStudent(Student student);
	
	boolean LoginStudent(Student student);
	
	int updateStudent(Student student);
	
	ArrayList<Student> selectAll(Student student);
	
	String selectMobile(String mobile);
	

}
