package com.feedback.service;

import java.util.ArrayList;

//import com.feedback.dto.Student;
import com.feedback.dto.Subjects;

public interface SubjectService {
	
	int addSub(Subjects subjects);
	
	ArrayList<Subjects> SubjectsList(Subjects subjects);

}
