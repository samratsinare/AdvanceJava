package com.feedback.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.feedback.conn.MyConn;
import com.feedback.dto.Institute;
import com.feedback.dto.Subjects;

public class InstituteDaoImple implements InstituteDao {
	
	private MyConn myConn;

	public InstituteDaoImple() {

		 myConn = new MyConn();
		
	}

	@Override
	public int insertFeed(Institute institute) {

		 int count = 0;
		 
		 try
		 {
			 
			 Connection con = myConn.getConn();
			 
			 String sql = "insert into institute (canteen,lib,rooms,lab,hostel,com,overall,stud_id) values"
			 		+ "(?,?,?,?,?,?,?,?) ";
			 
			 PreparedStatement ps = con.prepareStatement(sql);
			 
			 ps.setString(1, institute.getCanteen());
			 
			 ps.setString(2, institute.getLib());
			 
			 ps.setString(3, institute.getRooms());
			 
			 ps.setString(4, institute.getLab());
			 
			 ps.setString(5, institute.getHostel());
			 
			 ps.setString(6, institute.getCom());
			 
			 ps.setString(7, institute.getOverall());
			 
			 ps.setInt(8, institute.getStud_id());
			 
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
	public ArrayList<Institute> selectAllFeedback(Institute institute) {


		 ArrayList<Institute> li = new ArrayList<>();
		 
		 try
		 {
            Connection conn = myConn.getConn();
			 
			 String sql = "select * from institute";
			 
			 PreparedStatement ps = conn.prepareStatement(sql);
			 
			 ResultSet rs = ps.executeQuery();
			 
			 while(rs.next())
			 {
				 
				 Institute institute2 = new Institute();
				 
				 institute2.setIn_id(rs.getInt("in_id"));
				 
				institute2.setCanteen(rs.getString("canteen"));
				 
				institute2.setLib(rs.getString("lib"));
				 
				institute2.setRooms(rs.getString("rooms"));
				
				institute2.setLab(rs.getString("lab"));
				
				institute2.setHostel(rs.getString("hostel"));
				
				institute2.setCom(rs.getString("com"));
				
				institute2.setOverall(rs.getString("overall"));
				
				institute2.setStud_id(rs.getInt("stud_id"));
				
				 li.add(institute2);
				 
			 }
			 
			 ps.close();
			 
			 
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		
		 

		return li;
	}

	@Override
	public int deleteInFeedback(int inId) {
		
		int i = 0;
		try {
		Connection con = myConn.getConn();
		
		PreparedStatement s = con.prepareStatement("delete from institute where in_id = ?");
		
		s.setInt(1, inId);
		
		i = s.executeUpdate();
		
		s.close();
		}
		
		catch(ClassNotFoundException | SQLException e) 
		
		{
			
			e.printStackTrace();
			
		}
		return i;
		
		
	}
		
		
	}
	
	

		

	
	

