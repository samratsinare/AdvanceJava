package com.feedback.service;

import java.util.ArrayList;

import com.feedback.dao.FacultyDao;
import com.feedback.dao.FacultyDaoImple;
import com.feedback.dto.Faculty;

public class FacultyServiceImple  implements FacultyService{
	
	private FacultyDao facultydao;
	
	 

	public FacultyServiceImple() {
		
		  facultydao = new FacultyDaoImple();
	}



	@Override
	public int regFaculty(Faculty faculty) {


		return facultydao.insertFaculty(faculty);
	}



	@Override
	public boolean validateFaculty(Faculty faculty) {
		
		return facultydao.checkFaculty(faculty);
	}



	@Override
	public ArrayList<Faculty> allFaculty(Faculty faculty) {
		
		return facultydao.selectAllFaculty(faculty);
	}



	@Override
	public int facDelete(int fac_id) {
		
		return facultydao.facultyDelete(fac_id);
	}

}
