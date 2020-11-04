<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.feedback.dto.*"%>
    
    <jsp:useBean id="student" class="com.feedback.dto.Student" scope="session"></jsp:useBean>
    
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

   body
   {
       
     
       background-repeat: no-repeat;
        background-size: cover;
        
        width : 1500px;
        
        height :700px;
        
       
      
       
   
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
       
        <a href="viewSubjectsForm.jsp">Subject FeedBack</a>
        <a href="logoutstudent.jsp">Logout</a>
       
      </div>

        


 <form action="studentupdate.jsp" method="post" >
		<table align="center" style="font-size: 25px ; margin-top :20px ;
		
		  background-color: ;color: red" cellpadding="10" >
			<thead>
				<tr>
					<th colspan="2" style="color : black" >Update Details</th>
				</tr>
			</thead>
			<tbody>
			
			<tr><td><input type="hidden" name="stud_id" value="<%=student.getStud_id()%>" ></td></tr> 
				<tr>
				
				<tr>
					<td>StudentName</td>
					<td><input type="text" name="name" value="<%=student.getName()%>"  /> </td>
				</tr>
				
				
				<tr>
					<td>Email</td>
					<td><input type="email" name="email" value="<%=student.getEmail()%>" /> </td>
				</tr>
				
				
				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobile" value="<%=student.getMobile()%>" /> </td>
				</tr>
				
				
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" value="<%=student.getAddress()%>" /> </td>
				</tr>
				
				<tr>
					<td>DOB</td>
					<td><input type="text" name="DOB" value="<%=student.getDOB()%>" /> </td>
				</tr>
				
				 <tr>
					<td>Gender</td>
					<td><input type="text" name="gender" value="<%=student.getGender()%>" /> </td>
				</tr>
				
				
				<tr>
					<td>Password</td>
					<td><input type="text" name="password" value="<%=student.getPassword()%>" /> </td>
				</tr>
				
				  
				
				<tr>
					<td><a href="studenthome.jsp?id=<%=student.getName()%>">DashBoard</a> </td>
					<td><input type="submit" value="Update"  /> </td>
				</tr>
			</tbody>
		</table>
	</form>
 
 

</body>
</html>