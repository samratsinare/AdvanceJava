<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    
         session.removeAttribute("student");
    
         session.invalidate();
         
         response.sendRedirect("student_loginForm.jsp");
    
    %>