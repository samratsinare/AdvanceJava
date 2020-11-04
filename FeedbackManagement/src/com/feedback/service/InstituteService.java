package com.feedback.service;

import java.util.ArrayList;

import com.feedback.dto.Institute;

public interface InstituteService {
	
	int addIns(Institute institute);
	
	ArrayList<Institute> selectAllIns(Institute institute);
	
	int removeInFeedback(int inId);

}
