<%@page import="com.feedback.service.FacultyServiceImple"%>
<%@page import="com.feedback.service.FacultyService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="faculty" class="com.feedback.dto.Faculty" scope="session"></jsp:useBean>
    
     <jsp:setProperty property="*" name="faculty"/>

     <%
 
     FacultyService facultyService = new FacultyServiceImple();
 
     boolean flag = facultyService.validateFaculty(faculty);
     
     
     if(flag)
     {
    	 
    	 
    	 response.sendRedirect("FacultyHome.jsp");
    	 
     }
     
     else
     {
    	 
    	 request.getRequestDispatcher("faculty_loginForm.jsp").include(request, response);
    	 
    	 %>
    	 
    	 <h1 style="margin-left: 600px;color:tomato">Wrong credentails</h1>
    	 
    	
    	 
    <% }%> 
     
 
 
     