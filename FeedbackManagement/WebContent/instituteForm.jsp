<%@page import="com.feedback.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="student" class="com.feedback.dto.Student" scope="page"></jsp:useBean>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Institute form</title>


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
        <a href="studenthome.jsp?id=<%=student.getName() %>">Student Dashboard</a>
        <a href="viewSubjectsForm.jsp">Subject FeedBack</a>
        <a href="logoutstudent.jsp">Logout</a>
       
      </div>

 <form action="inFeedback.jsp" method="post" >
		<table align="center" style="font-size: 25px ; margin-top :50px ;
		
		  background-color: ; color:red" cellpadding="8" border="2">
			<thead>
				<tr>
					<th colspan="6" style="color : black" >Institute FeedBack</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Canteen Facility</td>
					<td>Excellent : <input type="radio" name="canteen" value ="Excellent" /> </td>
					<td>VeryGood : <input type="radio" name="canteen" value ="VeryGood" /> </td>
					<td>Good : <input type="radio" name="canteen" value ="Good" /> </td>
					<td>Average : <input type="radio" name="canteen" value ="Average" /> </td>
					<td>Poor : <input type="radio" name="canteen" value ="Poor" /> </td>
				</tr>
				<tr>
					<td>Library</td>
					<td>Excellent : <input type="radio" name="lib" value ="Excellent" /> </td>
					<td>VeryGood : <input type="radio" name="lib" value ="VeryGood" /> </td>
					<td>Good : <input type="radio" name="lib" value ="Good" /> </td>
					<td>Average : <input type="radio" name="lib" value ="Average" /> </td>
					<td>Poor : <input type="radio" name="lib" value ="Poor" /> </td>
				</tr>
				
				
				<tr>
					<td>ClassRooms </td>
					<td>Excellent : <input type="radio" name="rooms" value ="Excellent" /> </td>
					<td>VeryGood : <input type="radio" name="rooms" value ="VeryGood" /> </td>
					<td>Good : <input type="radio" name="rooms" value ="Good" /> </td>
					<td>Average : <input type="radio" name="rooms" value ="Average" /> </td>
					<td>Poor : <input type="radio" name="rooms" value ="Poor" /> </td>
				</tr>
				
				
				<tr>
					<td>Study Labs</td>
					<td>Excellent : <input type="radio" name="lab" value ="Excellent" /> </td>
					<td>VeryGood : <input type="radio" name="lab" value ="VeryGood" /> </td>
					<td>Good : <input type="radio" name="lab" value ="Good" /> </td>
					<td>Average : <input type="radio" name="lab" value ="Average" /> </td>
					<td>Poor : <input type="radio" name="lab" value ="Poor" /> </td>
				</tr>
				
				
				<tr>
					<td>Hostel</td>
					<td>Excellent : <input type="radio" name=hostel value ="Excellent" /> </td>
					<td>VeryGood : <input type="radio" name="hostel" value ="VeryGood" /> </td>
					<td>Good : <input type="radio" name="hostel" value ="Good" /> </td>
					<td>Average : <input type="radio" name="hostel" value ="Average" /> </td>
					<td>Poor : <input type="radio" name="hostel" value ="Poor" /> </td>
				</tr>
				
				<tr>
					<td>OverAll Feedback</td>
					<td>Excellent : <input type="radio" name=overall value ="Excellent" /> </td>
					<td>VeryGood : <input type="radio" name="overall" value ="VeryGood" /> </td>
					<td>Good : <input type="radio" name="overall" value ="Good" /> </td>
					<td>Average : <input type="radio" name="overall" value ="Average" /> </td>
					<td>Poor : <input type="radio" name="overall" value ="Poor" /> </td>
				</tr>
			
			</tbody>
		</table>
		
		<div style ="margin-left: 250px;margin-top:30px;font-size: 25px;color:red">
		
	   Any additional comments : <input style="width:300px; height: 50px" type="text" name="com" /> </td>
		
		</div>
		
        <div style ="margin-left: 600px;margin-top:30px;font-size: 25px">
		
	  <input style="width:100px; height: 50px;background-color: red" type="submit" name="comments" value="Feedback" /> </td>
		
		</div>
	
		
	</form>
      
   

</body>
</html>