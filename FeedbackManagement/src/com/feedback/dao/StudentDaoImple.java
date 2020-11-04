package com.feedback.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.feedback.conn.MyConn;
import com.feedback.dto.Student;

public class StudentDaoImple implements StudentDao {
	
	
	private MyConn myconn;
	 

	public StudentDaoImple() {
		
		 myconn = new MyConn();
		
	}

	@Override
	public int insertStudent(Student student) {

		int count = 0;
		
		try
		{
			
			Connection conn = myconn.getConn();
			
			String sql = "insert into student(stud_id,name,email,mobile,gender,address,password,DOB)"
					
					+ "values(?,?,?,?,?,?,?,?)";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, student.getStud_id());
			
			ps.setString(2, student.getName());
			
			ps.setString(3, student.getEmail());
			
			ps.setString(4, student.getMobile());
			
			ps.setString(5, student.getGender());
			
			ps.setString(6, student.getAddress());
			
			ps.setString(7, student.getPassword());
			
			ps.setString(8, student.getDOB());
			
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
	public boolean LoginStudent(Student student) {

		 boolean flag = false;
		 
		 try
		 {
			 
			 Connection conn = myconn.getConn();
			 
			 String sql = "select * from student where stud_id = ? and password = ?";
			 
			 PreparedStatement ps = conn.prepareStatement(sql);
			 
			 ps.setInt(1, student.getStud_id());
			 
			 ps.setString(2, student.getPassword());
			 
			 ResultSet rs = ps.executeQuery();
			 
			 if(rs.next())
			 {
				 
				 student.setStud_id(rs.getInt("stud_id"));
				 
				 student.setName(rs.getString("name"));
				 
				 student.setAddress(rs.getString("address"));
				 
				 student.setDOB(rs.getString("DOB"));
				 
				 student.setEmail(rs.getString("email"));
				 
				 student.setGender(rs.getString("gender"));
				 
				 student.setMobile(rs.getString("mobile"));
				 
				 student.setPassword(rs.getString("password"));
				 
				 
				 
				 
				 flag  = true;
				 
			 }
			 
		 }
		 catch(Exception e)
		 {
			 
		 }
       
		return flag;
	}

	@Override
	public int updateStudent(Student student) {
		
		 int count = 0;

		 try
		 {
			  Connection conn = myconn.getConn();
			  
			  String sql = "update student set name =?,email=?,mobile = ? ,gender = ? , address = ?,"
			  		+ "password = ? , DOB = ? where stud_id = ?";
			  
			 PreparedStatement ps = conn.prepareStatement(sql);
			 
			 ps.setString(1, student.getName());
			 
			 ps.setString(2, student.getEmail());
			 
			 ps.setString(3, student.getMobile());
			 
			 ps.setString(4, student.getGender());
			 
			 ps.setString(5, student.getAddress());
			 
			 ps.setString(6, student.getPassword());
			 
			 ps.setString(7, student.getDOB());
			 
			 ps.setInt(8, student.getStud_id());
			 
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
	public ArrayList<Student> selectAll(Student student) {

		ArrayList<Student> al = new ArrayList<>();
		
		try
		{
			
			 Connection conn = myconn.getConn();
			 
			 String sql = "select * from student";
			 
			 PreparedStatement ps = conn.prepareStatement(sql);
			 
			 ResultSet rs = ps.executeQuery();
			 
			 while(rs.next())
			 {
				 
				 Student student1 = new Student();
				 
				 student1.setStud_id(rs.getInt("stud_id"));
				 
				 student1.setName(rs.getString("name"));
				 
				 student1.setEmail(rs.getString("email"));
				 
				 student1.setMobile(rs.getString("mobile"));
				 
				 student1.setGender(rs.getString("gender"));
				 
				 student1.setAddress(rs.getString("address"));
				 
				 student1.setPassword(rs.getString("password"));
				 
				 student1.setDOB(rs.getString("DOB"));
				 
				 al.add(student1);
				 
			 }
			
			  ps.close();
			 
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
     
		return al;
	}

	@Override
	public String selectMobile(String mobile) {
		
          String name = null;
		
		try
		{
			
			 Connection conn = myconn.getConn();
			 
			 String sql = "select mobile from student";
			 
			 PreparedStatement ps = conn.prepareStatement(sql);
			 
			 ResultSet rs = ps.executeQuery();
			 
			 while(rs.next())
			 {
				 
				  Student student = new Student();
				  
				   //student.setMobile(rs.getString("mobile"));
				 
				  
				 
			 }
			
			  ps.close();
			 
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
     
		return name;
	}

	
	
}
