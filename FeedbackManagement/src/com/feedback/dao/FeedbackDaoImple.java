package com.feedback.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.feedback.conn.MyConn;
import com.feedback.dto.Feedback;
import com.feedback.dto.Institute;

public class FeedbackDaoImple implements FeedbackDao {
	
	private MyConn myconn;
	
	

	public FeedbackDaoImple() {
		
		 myconn = new MyConn();
	}



	@Override
	public int insertFeedback(Feedback feedback) {

		 int count = 0;
		 
		 try
		 {
			 Connection conn = myconn.getConn();
			 
			 String sql ="insert into feedbacksubject(concept,interaction,pace,practical,overall,comments,additional,stud_id,sub_name)"
			 		+ "values(?,?,?,?,?,?,?,?,?)";
			 
			 PreparedStatement ps = conn.prepareStatement(sql);
			 
			 ps.setString(1, feedback.getConcept());
			 
			 ps.setString(2, feedback.getInteraction());
			 
			 ps.setString(3, feedback.getPace());
			 
			 ps.setString(4, feedback.getPractical());
			 
			 ps.setString(5, feedback.getOverall());
			 
			 ps.setString(6, feedback.getComments());
			 
			 ps.setString(7, feedback.getAdditional());
			 
			 ps.setInt(8, feedback.getStud_id());
			 
			 ps.setString(9, feedback.getSub_name());
			 
			 
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
	public ArrayList<Feedback> selectAllFeedbackSub(Feedback feedback) {
	

		 ArrayList<Feedback> li = new ArrayList<>();
		 
		 try
		 {
           Connection conn = myconn.getConn();
			 
			 String sql = "select * from feedbacksubject ";
			 
			 PreparedStatement ps = conn.prepareStatement(sql);
			 
			 ResultSet rs = ps.executeQuery();
			 
			 while(rs.next())
			 {
				 
				  Feedback feedback2 = new Feedback();
				  
				  feedback2.setFeed_id(rs.getInt("feed_id"));
				  
				  feedback2.setConcept(rs.getString("concept"));
				  
				  feedback2.setInteraction(rs.getString("interaction"));
				  
				  feedback2.setPace(rs.getString("pace"));
				  
				  feedback2.setPractical(rs.getString("practical"));
				  
				  feedback2.setOverall(rs.getString("overall"));
				  
				  feedback2.setComments(rs.getString("comments"));
				  
				  feedback2.setAdditional(rs.getString("additional"));
				  
				  feedback2.setStud_id(rs.getInt("stud_id"));
				  
				  feedback2.setSub_name(rs.getString("sub_name"));
				  
				  li.add(feedback2);
				  
				
				 
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
	public int deleteFeedback(int feedId) {
		
		int i = 0;
		try {
		Connection con = myconn.getConn();
		
		PreparedStatement s = con.prepareStatement("delete from feedbacksubject where feed_id = ?");
		
		s.setInt(1, feedId);
		
		i = s.executeUpdate();
		
		s.close();
		}
		
		catch(ClassNotFoundException | SQLException e) 
		
		{
			
			e.printStackTrace();
			
		}
		return i;
		
		
	}



	@Override
	public boolean feedcount(Feedback feedback) {

            boolean countrows = false;
		 
		 try
		 {
			  Connection conn = myconn.getConn();
			 
			  String sql = " select * from feedbacksubject where stud_id = ? and sub_name = ?";
			  
			  PreparedStatement ps = conn.prepareStatement(sql);
			  
			  ps.setInt(1,feedback.getStud_id());
			  
			  ps.setString(2, feedback.getSub_name());
			  
			  ResultSet rs = ps.executeQuery();
			  
			  if(rs.next())
			  {
				
				  
				   // feedback.setSub_name(rs.getString("sub_name"));
				  
				   countrows = true;
				
			  }
			 
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }

		   return countrows;
	}

     
	}
	
	
