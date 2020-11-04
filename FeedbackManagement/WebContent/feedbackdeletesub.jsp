<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@page import="com.feedback.service.*" %>
    

    <%
    
            Integer feed_id = Integer.parseInt(request.getParameter("feedId"));
    
             FeedbackService feedbackService = new FeedbackServiceImple();
             
              feedbackService.deleteFeed(feed_id);
    
              response.sendRedirect("studentFeedbackview.jsp");
    
    %>