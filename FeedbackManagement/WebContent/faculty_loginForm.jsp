<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@include file ="faculty_navbar.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<script>

  function login() {

	  var name = document.frm.name.value;

	  var pass = document.frm.password.value;

	  if(name==="" && name===null)
		  {
		       alert("plz enter username");

		      

		       return false;
		  }

	  if(pass==="" && pass===null)
	  {
	       alert("plz enter username");

	       

	       return false;
	  }

	 
}
       

</script>

<body>

 <form  name="frm" action="faculty_validate.jsp" method="post"  onsubmit="return login()" >
 
		<table align="center" style="font-size: 25px;margin-top: 100px;" cellpadding="12" >
			<thead >
				<tr>
					<th colspan="2" style="color: red" >Faculty Login</th>
				</tr>
			</thead>
			<tbody>
			
				<tr>
					<td>FacultyName</td>
					<td><input type="text" name="name" value=""/> </td>
				</tr>
				<tr >
					<td>Password</td>
					<td><input type="password" name="password" value="" /> </td>
				</tr>
				
			
				
				<tr >
					<td><a href="faculty_regForm.jsp" >Sign up</a> </td>
					<td><input type="submit" value="Login"  /> </td>
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