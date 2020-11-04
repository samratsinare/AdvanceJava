<%@page import="com.feedback.service.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
     <jsp:useBean id="subjects" class="com.feedback.dto.Subjects" scope="session"></jsp:useBean>
     
     <jsp:setProperty property="*" name="subjects"/>
     
     <%
     
        SubjectService service = new SubjectServiceImple();
     
         service.addSub(subjects);
         
         response.sendRedirect("addSubjects.jsp");
     
       
      
     
     %>