<%@page import="com.feedback.service.FacultyServiceImple"%>
<%@page import="com.feedback.service.FacultyService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <jsp:useBean id="faculty" class="com.feedback.dto.Faculty" scope="page"></jsp:useBean>
    
    <jsp:setProperty property="*" name="faculty"/>
    
    <%
    
          FacultyService facultyService = new FacultyServiceImple();
    
           facultyService.regFaculty(faculty);
           
           response.sendRedirect("faculty_regForm.jsp");
    
    
    %>