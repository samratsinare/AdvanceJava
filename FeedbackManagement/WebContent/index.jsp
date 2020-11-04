<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Management</title>
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

   body
   {
        background-image: url("cutomer.png");
     
       background-repeat: no-repeat;
        background-size: cover;
        
        width : 1500px;
        
        height :700px;
        
       
      
       
   
   }

  .welcome
  {
      
      margin-top: 150px;

      margin-left: 280px;
       
       font-size: 80px;
       
      font-weight: 100;
  }


     </style>

 </head>
 <body>
 
    

    <div class="navbar">
        <a style="font-size: 40px;">Feedback Management</a>
        <a href="AdminLogin.jsp" class="active">Admin</a>
        <a href="faculty_loginForm.jsp">Faculty</a>
        <a href="student_loginForm.jsp">Student</a>
      </div>

      <div class="welcome">
      
        FeedBack Management System

      </div>
    
</body>
</html>