<%@page import="com.feedback.dto.Faculty"%>
<%@page import="com.feedback.dto.Subjects"%>
<%@page import="com.feedback.service.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.feedback.*" %>
    
    <%@page import="java.util.*" %>
    
     <jsp:useBean id="faculty" class="com.feedback.dto.Faculty" scope="session"></jsp:useBean>
    
    <%
    
            FacultyService facultyService = new FacultyServiceImple();
    
            ArrayList<Faculty> list = facultyService.allFaculty(faculty);
    
    
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

  

  .welcome
  {
      
      margin-top: 80px;

      margin-left: 430px;
       
       font-size: 80px;
       
      font-weight: 100;
  }


     </style>

</head>
<body>


   
  <div class="navbar">
        <a style="font-size: 40px;">Feedback Management</a>
        <a href="AdminLogin.jsp">Logout</a>
        
      </div>


        <h1 style="margin-left: 650px;color:red">Faculty List</h1>

     <table align="center" style="font-size: 25px;margin-top: 30px" border="2" cellpadding="13">
	
		
			<thead>
				
				<tr>
					<th >FacultyName</th>
					<th >Email</th>
					<th >Gender</th>
					<th >Address</th>
					<th >Delete</th>
		
					
				</tr>
				
			</thead>
			<tbody>
				<% 
					for(Faculty e : list){
				%>
				<tr>
					<td style="text-align: center;" ><%=e.getName()%></td>
					<td style="text-align: center;" ><%=e.getEmail()%></td>
					<td style="text-align: center;" ><%=e.getGender()%></td>
					<td style="text-align: center;" ><%=e.getAddress()%></td>
					
					<td style="text-align: center;" ><a href="facultyDelete.jsp?facId=<%=e.getFaculty_id()%>">Delete</a></td>					
					
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