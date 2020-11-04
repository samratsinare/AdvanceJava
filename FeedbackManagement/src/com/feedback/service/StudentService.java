package com.feedback.service;

import java.util.ArrayList;

import com.feedback.dto.Student;

public interface StudentService {
	
    int regStudent(Student student);
	
	boolean validStudent(Student student);

	int ModifyStudent(Student student);
	
	ArrayList<Student> StudentList(Student student);

	
}
