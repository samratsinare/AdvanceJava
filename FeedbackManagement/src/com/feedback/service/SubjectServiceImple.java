package com.feedback.service;

import java.util.ArrayList;

import com.feedback.dao.SubjectDao;
import com.feedback.dao.SubjectDaoImple;
import com.feedback.dto.Subjects;

public class SubjectServiceImple implements SubjectService {
	
	private SubjectDao dao;
	
	 

	public SubjectServiceImple() {
		
		dao = new SubjectDaoImple();
	}



	@Override
	public int addSub(Subjects subjects) {
	
		return dao.insertSubject(subjects);
	}



	@Override
	public ArrayList<Subjects> SubjectsList(Subjects subjects) {
		
		return dao.selectAllSubjects(subjects);
	}

}
