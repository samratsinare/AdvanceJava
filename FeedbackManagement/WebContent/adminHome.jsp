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
        <a href="">Welcome Admin</a>
        <a href="index.jsp">Logout</a>
       
      </div>
          
      
      <table align="center";font-size: 25px"; style="font-size: 30px" cellpadding="12" border="3" >
			<thead>
				<tr>
					<th colspan="5" >Admin DashBoard</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="adminStudentview.jsp" style="color :red" >View Students</a></td> 
					
					<td><a href="adminFacultyview.jsp" style="color :red" >View Faculty</a></td>
					
					<td><a href="adminSubjectview.jsp" style="color :red" >View Subjects</a></td> 
					
					<td><a href="studentFeedbackview.jsp" style="color :red" >View Subjects Feedback</a></td> 
					
					<td><a href="inFeedbackview.jsp" style="color :red" >View Institute Feedback</a></td> 
					
				</tr>
				
				 <br> <br>
				
			</tbody>
		</table>
         
      <table align="center";font-size: 25px"; style="font-size: 30px" cellpadding="12" border="3" >
			
			<tbody>
				<tr>
					<td><a href="" style="color :red" >Add Faculty</a></td> 
					
					<td><a href="" style="color :red" >Add Subjects</a></td> 
										
				</tr>
				
				 <br> <br>
				
			</tbody>
		</table>
         
      
      
      
      

</body>
</html>