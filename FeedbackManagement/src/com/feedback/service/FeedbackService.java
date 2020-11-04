package com.feedback.service;

import java.util.ArrayList;

import com.feedback.dto.Feedback;

public interface FeedbackService {
	
	int addFeedback(Feedback feedback);
	
	ArrayList<Feedback> allFeedbackSub(Feedback feedback);

	int deleteFeed(int feedId);
	
	boolean count(Feedback feedback);
}
