package com.feedback.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.feedback.conn.MyConn;
import com.feedback.dto.Subjects;

public class SubjectDaoImple implements SubjectDao{
	
	private MyConn myconn;
	
	

	public SubjectDaoImple() {
		
		myconn = new MyConn();
	}



	@Override
	public int insertSubject(Subjects subjects) {
		
		int count = 0;
		
		try
		{
			
			Connection con  = myconn.getConn();
			
			String sql = "insert into subjects(name,facultyname) values(?,?)";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, subjects.getSub_name());
			
			ps.setString(2, subjects.getFac_name());
			
			count = ps.executeUpdate();
			
			ps.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}


		return count;
	}



	@Override
	public ArrayList<Subjects> selectAllSubjects(Subjects subjects) {

		 ArrayList<Subjects> li = new ArrayList<>();
		 
		 try
		 {
             Connection conn = myconn.getConn();
			 
			 String sql = "select * from subjects";
			 
			 PreparedStatement ps = conn.prepareStatement(sql);
			 
			 ResultSet rs = ps.executeQuery();
			 
			 while(rs.next())
			 {
				 
				 Subjects subjects2 = new Subjects();
				 
				 subjects2.setSub_name(rs.getString("name"));
				 
				 subjects2.setFac_name(rs.getString("facultyname"));
				 
				 li.add(subjects2);
				 
			 }
			 
			 ps.close();
			 
			 
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		
		 

		return li;
	}
	
	

}
