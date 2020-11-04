package com.feedback.dao;

import java.util.ArrayList;

import com.feedback.dto.Feedback;
import com.feedback.dto.Institute;

public interface FeedbackDao {
	
	int insertFeedback(Feedback feedback);
	
	ArrayList<Feedback> selectAllFeedbackSub(Feedback feedback);
	
	int deleteFeedback(int feedId);
	
	boolean feedcount(Feedback feedback);

}
