<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.feedback.service.*"%>
    
   <jsp:useBean id="student" class="com.feedback.dto.Student" scope="session" ></jsp:useBean>
<jsp:setProperty property="*" name="student"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <%
 
    StudentService service = new StudentServiceImple();
 
     boolean flag = service.validStudent(student);
     
     
     if(flag)
     {
    	 
    	 
    	 response.sendRedirect("studenthome.jsp?id="+student.getName());
    	 
     }
     
     else 
     {
    	 
    	 request.getRequestDispatcher("student_loginForm.jsp").include(request, response);
    	 
    	 %>
    	 
    	 <h1 style="margin-left: 600px;color:tomato">Wrong credentails</h1>
    	 
    	
    	 
    <% }%> 
     
 
 


     

</body>
</html>