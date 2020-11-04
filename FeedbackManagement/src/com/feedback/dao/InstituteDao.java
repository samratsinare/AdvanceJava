package com.feedback.dao;

import java.util.ArrayList;

import com.feedback.dto.Institute;
import com.feedback.dto.Subjects;

public interface InstituteDao {
	
	int insertFeed(Institute institute);
	
	ArrayList<Institute> selectAllFeedback(Institute institute);
	
	int deleteInFeedback(int inId);

}
