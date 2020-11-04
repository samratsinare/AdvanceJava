package com.feedback.dao;

import java.util.ArrayList;

import com.feedback.dto.Faculty;
import com.feedback.dto.Feedback;

public interface FacultyDao {

	int insertFaculty(Faculty faculty);
	
	boolean checkFaculty(Faculty faculty);
	
	ArrayList<Faculty> selectAllFaculty(Faculty faculty);
	
	int facultyDelete(int fac_id);
	
	
	
}
