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
 
 </style>
 
  


</head>
<body>

   <div class="navbar">
        <a style="font-size: 40px;">Feedback Management System</a>
        
      
        <a href="">Faculty</a>
           
         <a href="facultylogout.jsp">Logout</a>
         
         </div>

   
    <form action="addSubService.jsp" method="post" >
		<table align="center" style="font-size: 25px ; margin-top :20px ;
		
		  background-color: ;color: red" cellpadding="12" >
			<thead>
				<tr>
					<th colspan="2" style="color : black" >Add Subjects</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>SubjectName</td>
					<td><input type="text" name="sub_name"  /> </td>
				</tr>
				<tr>
					<td>FacultyName</td>
					<td><input type="text" name="fac_name"  /> </td>
				</tr>
			
				
				<tr>
					<td><a href="FacultyHome.jsp" >Back</a> </td>
					<td><input type="submit" value="Add"  /> </td>
				</tr>
			</tbody>
		</table>
	</form>
     

</body>
</html>