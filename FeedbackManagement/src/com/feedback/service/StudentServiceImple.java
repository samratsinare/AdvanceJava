package com.feedback.service;

import java.util.ArrayList;

import com.feedback.dao.StudentDao;
import com.feedback.dao.StudentDaoImple;
import com.feedback.dto.Student;

public class StudentServiceImple  implements StudentService{
	
private StudentDao dao;
	
	

	public StudentServiceImple() {
		
		 dao = new StudentDaoImple();
	}

	@Override
	public int regStudent(Student student) {


		return dao.insertStudent(student);
	}

	@Override
	public boolean validStudent(Student student) {

       
		return dao.LoginStudent(student);
	}

	@Override
	public int ModifyStudent(Student student) {
		
		return dao.updateStudent(student);
	}

	@Override
	public ArrayList<Student> StudentList(Student student) {
		
		return dao.selectAll(student);
	}

	

	
	

}
