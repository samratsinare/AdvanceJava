<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.feedback.service.*" %>

    
    <%
    
         int in_id = Integer.parseInt(request.getParameter("inId"));
          
          InstituteService service = new InstituteServiceImple();
          
          service.removeInFeedback(in_id);
         
          response.sendRedirect("inFeedbackview.jsp");
    
    
    %>