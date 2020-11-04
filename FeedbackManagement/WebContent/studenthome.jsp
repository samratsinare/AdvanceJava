<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <jsp:useBean id="student" class="com.feedback.dto.Student" scope="session"></jsp:useBean>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>StudentHome</title>
</head>
<body>

  
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
        <a href="instituteForm.jsp">Institute FeedBack</a>
        <a href="viewSubjectsForm.jsp">Subject FeedBack</a>
        <a href="logoutstudent.jsp">Logout</a>
       
      </div>
      
        <div>
        
        <h1> Welcome <%=request.getParameter("id") %> </h1>
        
        </div>

      
       <table align="center";font-size: 25px"; style="font-size: 30px" cellpadding="12" >
			<thead>
				<tr>
					<th colspan="2" >Student DashBoard</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><a href="studentUpdateForm.jsp" style="color :red" >Update Profile</a></td> 
					
				</tr>
				
				 <br> <br>
				
			</tbody>
		</table>

   
  

    

</body>
</html>