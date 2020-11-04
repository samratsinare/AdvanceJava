<%@page import="com.feedback.dto.Student"%>
<%@page import="com.feedback.service.*"%>
<%@page import="com.feedback.dao.StudentDaoImple"%>

<%@page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="student" class="com.feedback.dto.Student"></jsp:useBean>
    
    
    <%
    
         StudentService service = new StudentServiceImple();
    
         ArrayList<Student> list = service.StudentList(student);
    
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
        
      
        <a href="adminHome.jsp">Admin</a>
           
         <a href="AdminLogin.jsp">Logout</a>
         
         </div>
         

		<table align="center" style="font-size: 20px;margin-top: 20px" border="2" cellpadding="10">
	
		
			<thead>
				
				<tr>
					<th colspan="9" style="color : red; font-size:20px"  >Subject FeedBack</th>
				</tr>
				
				</thead>
				
				<tr>
					<th >StudentId</th>
					<th >StudentName</th>
					<th >Email</th>
					<th >Mobile</th>
					<th >Gender</th>
					<th >Address</th>
					<th >DOB</th>
					<th>Delete</th>
					<th>Send Notifiactions</th>
					
				</tr>
				
			
			<tbody>
				<% 
					for(Student e : list){
				%>
				<tr>
					<td style="text-align: center;" ><%=e.getStud_id()%></td>
					<td style="text-align: center;" ><%=e.getName()%></td>
					<td style="text-align: center;" ><%=e.getEmail()%></td>
					<td style="text-align: center;" ><%=e.getMobile()%></td>
					<td style="text-align: center;" ><%=e.getGender()%></td>
					<td style="text-align: center;" ><%=e.getAddress()%></td>
					<td style="text-align: center;" ><%=e.getDOB()%></td>
					<td style="text-align: center;" ><a href="#">Delete</a></td>
					
					<td style="text-align: center;" ><a href="messageForm.jsp?email=<%=e.getEmail()%>">Send mail</a></td>
					
					
				</tr>
				<% } 
				
				    
				
				%>
				
				
				<tr>
				   
					<td><a style="color:red" href="adminHome.jsp">DashBoard</a> </td>
					
				</tr>
			</tbody>
		</table>
	

  
     

</body>
</html>