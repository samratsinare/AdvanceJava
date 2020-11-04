<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
     <jsp:useBean id="faculty" class="com.feedback.dto.Faculty" scope="session"></jsp:useBean>
    
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
         
         <table align="center";font-size: 25px"; style="font-size: 30px" cellpadding="12" >
			<thead>
				<tr>
					<th colspan="2" >Faculty DashBoard</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="viewStudentdetails.jsp" style="color :red" >View Students</a></td> 
					
					<td><a href="addSubjects.jsp" style="color :red" >Add Subjects</a></td> 
					
				</tr>
				
				 <br> <br>
				
			</tbody>
		</table>
         

</body>
</html>