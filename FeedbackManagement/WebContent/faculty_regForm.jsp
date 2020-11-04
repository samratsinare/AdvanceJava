<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
         <%@include file ="faculty_navbar.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>




  <form action="faculty_reg.jsp" method="post" >
		<table align="center" style="font-size: 25px ; margin-top :20px ;
		
		  background-color: ;color: red" cellpadding="12" >
			<thead>
				<tr>
					<th colspan="2" style="color : black" >Faculty Registration</th>
				</tr>
			</thead>
			<tbody>
			
				<tr>
					<td>FacultyName</td>
					<td><input type="text" name="name"  /> </td>
				</tr>
				
				
				<tr>
					<td>Email</td>
					<td><input type="email" name="email"  /> </td>
				</tr>
				
				
				<tr>
					<td>Address</td>
					<td><input type="text" name="address"  /> </td>
				</tr>
				
				 <tr>
					<td>Gender</td>
					<td><input type="text" name="gender"  /> </td>
				</tr>
				
				
				<tr>
					<td>Password</td>
					<td><input type="password" name="password"  /> </td>
				</tr>
				
				  
				
				<tr>
					<td><a href="faculty_loginForm.jsp" >Login</a> </td>
					<td><input type="submit" value="Register"  /> </td>
				</tr>
			</tbody>
		</table>
	</form>
  
 

 

</body>
</html>