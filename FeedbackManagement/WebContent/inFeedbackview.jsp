<%@page import="com.feedback.service.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.feedback.dto.*"%>
    
    
     <%@page import="java.util.*" %>
    
    <jsp:useBean id="institute" class="com.feedback.dto.Institute"></jsp:useBean>
    
    <jsp:useBean id="student" class="com.feedback.dto.Student" scope="session"></jsp:useBean>
    
    <%
    
       InstituteService instituteService = new InstituteServiceImple();
    
       ArrayList<Institute> list = instituteService.selectAllIns(institute);
    
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
      
       <h1 style="margin-left: 650px;color:red">Institute Feedback</h1>
      

  <table align="center" style="font-size: 20px;margin-top: 30px" border="2" cellpadding="13">
	
		
			<thead>
				
				<tr>
					<th >Canteen</th>
					<th >Library</th>
					<th >ClassRooms</th>
					<th >Labs</th>
					<th >Hostel</th>
					<th >Overall Feedback</th>
					<th >Additional Comments</th>
					<th >Student_Id</th>
					<th >Delete</th>
		
					
				</tr>
				
			</thead>
			<tbody>
				<% 
					for(Institute e : list){
				%>
				<tr>
					<td style="text-align: center;" ><%=e.getCanteen()%></td>
					<td style="text-align: center;" ><%=e.getLib()%></td>
					<td style="text-align: center;" ><%=e.getLab()%></td>
					<td style="text-align: center;" ><%=e.getRooms()%></td>
					<td style="text-align: center;" ><%=e.getHostel()%></td>
					<td style="text-align: center;" ><%=e.getOverall()%></td>
					<td style="text-align: center;" ><%=e.getCom()%></td>
					<td style="text-align: center;" ><%=e.getStud_id()%></td>
					
					<td><a style="color:red" href="deleteInFeedback.jsp?inId=<%=e.getIn_id()%>">Delete</a> </td>
					
					
					
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