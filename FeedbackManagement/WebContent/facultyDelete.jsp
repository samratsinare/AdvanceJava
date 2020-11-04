<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@page import="com.feedback.service.*" %>
    
    <%
    
        int facId = Integer.parseInt(request.getParameter("facId"));
    
        FacultyService facultyService = new FacultyServiceImple();
        
         facultyService.facDelete(facId);
         
         response.sendRedirect("adminFacultyview.jsp");
    
    
    
    %>