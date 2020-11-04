<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    
      session.removeAttribute("faculty");
    
      session.invalidate();
      
      response.sendRedirect("faculty_loginForm.jsp");
    
    %>