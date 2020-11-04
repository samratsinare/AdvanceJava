<%@page import="com.feedback.dto.Subjects"%>
<%@page import="com.feedback.service.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.feedback.*" %>
    
    
    <%@page import="java.util.*" %>
    
    <jsp:useBean id="subjects" class="com.feedback.dto.Subjects"></jsp:useBean>
    
    <jsp:useBean id="student" class="com.feedback.dto.Student" scope="session"></jsp:useBean>
    
    
    
    
    <%
    
          SubjectService service = new SubjectServiceImple();
    
        ArrayList<Subjects> list = service.SubjectsList(subjects);
    
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

  <style>
 
   .navbar
        {
            background-color:rgba(0,0,0,0.8);
             overflow: hidden;
              width: 1500px;
             height: 100px;
        }
        
        .navbar a {
          float: left;
         display: block;
           color: #f2f2f2;
         text-align: center;
          padding: 14px 36px;
          text-decoration: none;
           font-size: 25px;
}
 
 </style>
 

</head>
<body>

  <div class="navbar">
        <a style="font-size: 40px;">Feedback Management System</a>
        
      
        <a href="">Welcome Admin</a>
           
         <a href="AdminLogin.jsp">Logout</a>
         
         </div>
         
          <h1 style="margin-left: 650px;color:red">Subjects List</h1>
          
          
		<table align="center" style="font-size: 25px;margin-top: 30px" border="2" cellpadding="13">
	
		
			<thead>
				
				<tr>
					<th >SubjectName</th>
					<th >FacultyName</th>
					
		
					
				</tr>
				
			</thead>
			<tbody>
				<% 
					for(Subjects e : list){
				%>
				<tr>
					<td style="text-align: center;" ><%=e.getSub_name()%></td>
					<td style="text-align: center;" ><%=e.getFac_name()%></td>
										
					
				</tr>
				<% 
				
				     
					
					} %>
				
				
				<tr>
				   
					<td><a style="color:red" href="adminHome.jsp" >DashBoard</a> </td>
					
				</tr>
			</tbody>
		</table>
	

  
     
  

</body>
</html>