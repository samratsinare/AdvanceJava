package com.feedback.service;

import java.util.ArrayList;

import com.feedback.dto.Faculty;

public interface FacultyService {
	
	int regFaculty(Faculty faculty);

	boolean validateFaculty(Faculty faculty);
	
	ArrayList<Faculty> allFaculty(Faculty faculty);
	
	int facDelete(int fac_id);
}
