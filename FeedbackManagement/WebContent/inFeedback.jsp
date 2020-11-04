<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@page import="com.feedback.service.*" %>
    
    <jsp:useBean id="institute" class="com.feedback.dto.Institute" scope="page"></jsp:useBean>
    
    <jsp:useBean id="student" class="com.feedback.dto.Student" scope="session"></jsp:useBean>
    
    <jsp:setProperty property="*" name="institute"/>
    
  <%
  
            System.out.println(student);
  
          institute.setStud_id(student.getStud_id());
  
         InstituteService instituteService = new InstituteServiceImple();
         
          instituteService.addIns(institute);
          
          response.sendRedirect("studenthome.jsp?id="+student.getName());
  
  
  
  %>