<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@include file ="navbar.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

  <script type="text/javascript" src="valid.js"></script>
  

</head>
<body>


   <form action="student_validate.jsp" method="post" onsubmit="return valid()" name="log"  >
		<table align="center" style="font-size: 25px;margin-top: 100px;" cellpadding="12" >
			<thead >
				<tr>
					<th colspan="2" style="color: red" >Student Login</th>
				</tr>
			</thead>
			<tbody>
			
				<tr>
					<td>StudentId</td>
					<td><input type="text" name="stud_id" id="name"/> </td>
				</tr>
				<tr >
					<td>Password</td>
					<td><input type="password" name="password" id="pass" min="5" max="10" /> </td>
				</tr>
				
			
				
				<tr >
					<td><a href="student_regForm.jsp" >Sign up</a> </td>
					<td><input type="submit" value="Login"   /> </td>
				</tr>
				
				
				
				<tr>
					<td colspan="2" style="color: red;font-size: 15;text-align: center;" >
					
					</td>
					
				</tr>
				
		
			</tbody>
		</table>
		
		 <div style="margin-left :610px;font-size :20px;color:red" >
		 
		   Dont Have Account ? Click oN Signup First
		   
		 </div>
		
	</form>
     

</body>
</html>