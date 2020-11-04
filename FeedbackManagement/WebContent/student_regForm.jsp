<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@include file ="navbar.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript" src="regform.js"></script>

</head>
<body>

     <form action="Student_reg.jsp" method="post" onsubmit="return reform()" name ="reg" >
		<table align="center" style="font-size: 25px ; margin-top :20px ;
		
		  background-color: ;color: red" cellpadding="12" >
			<thead>
				<tr>
					<th colspan="2" style="color : black" >Student Registration</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>StudentId</td>
					<td><input type="text" name="stud_id" required="required" /> </td>
				</tr>
				<tr>
					<td>StudentName</td>
					<td><input type="text" name="name" id="name1"  /> </td>
				</tr>
				
				
				<tr>
					<td>Email</td>
					<td><input type="email" name="email" required="required" id="email1" /> </td>
				</tr>
				
				
				<tr>
					<td>Mobile</td>
					<td><input type="text" name="mobile" id="mobile1" /> </td>
				</tr>
				
				
				<tr>
					<td>Address</td>
					<td><input type="text" name="address" id="add" /> </td>
				</tr>
				
				<tr>
					<td>DOB</td>
					<td><input type="text" name="DOB" id="dob"  /> </td>
				</tr>
				
				 <tr>
					<td>Gender</td>
					<td><input type="text" name="gender" id="gen" /> </td>
				</tr>
				
				
				<tr>
					<td>Password</td>
					<td><input type="password" name="password" id="pass" required="required" /> </td>
				</tr>
				
				  
				
				<tr>
					<td><a href="student_loginForm.jsp" >Login</a> </td>
					<td><input type="submit" value="Register"  /> </td>
				</tr>
			</tbody>
		</table>
	</form>

</body>
</html>