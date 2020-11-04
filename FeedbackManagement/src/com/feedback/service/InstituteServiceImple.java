package com.feedback.service;

import java.util.ArrayList;

import com.feedback.dao.InstituteDao;
import com.feedback.dao.InstituteDaoImple;
import com.feedback.dto.Institute;

public class InstituteServiceImple implements InstituteService{
	
	
	  private InstituteDao dao;
	  
	  

	public InstituteServiceImple() {
	
		 dao = new InstituteDaoImple();
		
	}



	@Override
	public int addIns(Institute institute) {
		
		return dao.insertFeed(institute);
	}



	@Override
	public ArrayList<Institute> selectAllIns(Institute institute) {
		
		return dao.selectAllFeedback(institute);
	}



	@Override
	public int removeInFeedback(int inId) {
		
		return dao.deleteInFeedback(inId);
	}

}
