package com.feedback.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.feedback.conn.MyConn;
import com.feedback.dto.Faculty;
import com.feedback.dto.Feedback;

public class FacultyDaoImple implements FacultyDao {
	
	 private MyConn myconn;

	public FacultyDaoImple() {
		
		myconn = new MyConn();
		
	}

	@Override
	public int insertFaculty(Faculty faculty) 
	
	{
		 int count = 0;

		try
		{
			Connection conn = myconn.getConn();
			
			String sql = " insert into faulty(name,email,gender,address,password)values(?,?,?,?,?) ";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, faculty.getName());
			
			ps.setString(2,faculty.getEmail());
			
			ps.setString(3, faculty.getGender());
			
			ps.setString(4, faculty.getAddress());
			
			ps.setString(5, faculty.getPassword());
			
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
	public boolean checkFaculty(Faculty faculty) {
		
         boolean flag = false;
		 
		 try
		 {
			 
			 Connection conn = myconn.getConn();
			 
			 String sql = "select * from faulty where name = ? and password = ?";
			 
			 PreparedStatement ps = conn.prepareStatement(sql);
			 
			 ps.setString(1, faculty.getName());
			 
			 ps.setString(2, faculty.getPassword());
			 
			 ResultSet rs = ps.executeQuery();
			 
			 if(rs.next())
			 {
				 
				
				 faculty.setFaculty_id(rs.getInt("faculty_id"));
				
				 
				 
				 flag  = true;
				 
			 }
			 
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
       
		return flag;

         
		
	}

	@Override
	public ArrayList<Faculty> selectAllFaculty(Faculty faculty) {
		
		

		 ArrayList<Faculty> li = new ArrayList<>();
		 
		 try
		 {
          Connection conn = myconn.getConn();
			 
			 String sql = "select * from faulty";
			 
			 PreparedStatement ps = conn.prepareStatement(sql);
			 
			 ResultSet rs = ps.executeQuery();
			 
			 while(rs.next())
			 {
				 Faculty faculty2 = new Faculty();
				 
				 faculty2.setFaculty_id(rs.getInt("faculty_id"));
				 
				 faculty2.setName(rs.getString("name"));
				 
				 faculty2.setEmail(rs.getString("email"));
				 
				 faculty2.setGender(rs.getString("gender"));
				 
				 faculty2.setAddress(rs.getString("address"));
				 
				 faculty2.setPassword(rs.getString("password"));
				
				 li.add(faculty2);
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
	public int facultyDelete(int fac_id) {
		
		int i = 0;
		try {
		Connection con = myconn.getConn();
		
		PreparedStatement s = con.prepareStatement("delete from faulty where faculty_id = ?");
		
		s.setInt(1, fac_id);
		
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
