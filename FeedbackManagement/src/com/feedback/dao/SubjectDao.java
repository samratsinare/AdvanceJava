package com.feedback.dao;

import java.util.ArrayList;

import com.feedback.dto.Student;
import com.feedback.dto.Subjects;

public interface SubjectDao {
	
	int insertSubject(Subjects subjects);
	
	ArrayList<Subjects> selectAllSubjects(Subjects subjects);

}
