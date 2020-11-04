package com.feedback.service;

import java.util.ArrayList;

import com.feedback.dao.FeedbackDao;
import com.feedback.dao.FeedbackDaoImple;
import com.feedback.dto.Feedback;

public class FeedbackServiceImple  implements FeedbackService{
	
	private FeedbackDao dao;
	
	

	public FeedbackServiceImple() {
		
		dao = new FeedbackDaoImple();
	}



	@Override
	public int addFeedback(Feedback feedback) {


		return dao.insertFeedback(feedback);
	}



	@Override
	public ArrayList<Feedback> allFeedbackSub(Feedback feedback) {
		
		return  dao.selectAllFeedbackSub(feedback);
	}



	@Override
	public int deleteFeed(int feedId) {
		
		return  dao.deleteFeedback(feedId);
	}



	@Override
	public boolean count(Feedback feedback) {
		
		return dao.feedcount(feedback);
	}

}
