<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <a href="">Admin</a>
        <a href="index.jsp">Home</a>
        
       
      </div>
      

   <form  action="admin_validate.jsp" method="post"  >
 
		<table align="center" style="font-size: 25px;margin-top: 100px;" cellpadding="12" >
			<thead >
				<tr>
					<th colspan="2" style="color: red" >Admin Login</th>
				</tr>
			</thead>
			<tbody>
			
				<tr>
					<td>AdminName</td>
					<td><input type="text" name="name" value="admin"/> </td>
				</tr>
				<tr >
					<td>Password</td>
					<td><input type="password" name="password" value=""  /> </td>
				</tr>
				
			
				
				<tr >
					<td><input type="hidden"></td>
					<td><input type="submit" value="Login"  /> </td>
					
				</tr>
				
				
				
				<tr>
					<td colspan="2" style="color: red;font-size: 15;text-align: center;" >
					
					</td>
					
				</tr>
				
		
			</tbody>
		</table>
		
		
		
	</form>
     
    

</body>
</html>