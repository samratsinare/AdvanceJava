<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <jsp:useBean id="student" class="com.feedback.dto.Student" scope="session"></jsp:useBean>
     
     <jsp:useBean id="subjects" class="com.feedback.dto.Subjects" scope="request"></jsp:useBean>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FeedbackFormSubject</title>


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
        
      
        <a href="studenthome.jsp">Student DashBoard</a>
           
         <a href="logoutstudent.jsp">Logout</a>
        
         </div>
         
         <h2><%=request.getParameter("sub") %></h2>
         
     
      <form action="feedbacksub.jsp" method="post" >
		<table align="center" style="font-size: 20px ; margin-top :10px ;
		
		  background-color:; color: red" cellpadding="10" border="2">
			<thead>
				<tr>
					<th colspan="6" style="color : black" >Subject FeedBack</th>
				</tr>
			</thead>
			<tbody>
		
		        <tr>
		          
		          <td>
		          
		          <input type="hidden" name="sub_name" value="<%=request.getParameter("sub")%>">
		          		          
		          </td>
		        
		        </tr>
			
				<tr>
					<td>Explanation Of Concept</td>
					<td>Excellent : <input type="radio" name="concept" value ="Excellent" /> </td>
					<td>VeryGood : <input type="radio" name="concept" value ="VeryGood" /> </td>
					<td>Good : <input type="radio" name="concept" value ="Good" /> </td>
					<td>Average : <input type="radio" name="concept" value ="Average" /> </td>
					<td>Poor : <input type="radio" name="concept" value ="Poor" /> </td>
				</tr>
				<tr>
					<td>Interaction with students</td>
					<td>Excellent : <input type="radio" name="interaction" value ="Excellent" /> </td>
					<td>VeryGood : <input type="radio" name="interaction" value ="VeryGood" /> </td>
					<td>Good : <input type="radio" name="interaction" value ="Good" /> </td>
					<td>Average : <input type="radio" name="interaction" value ="Average" /> </td>
					<td>Poor : <input type="radio" name="interaction" value ="Poor" /> </td>
				</tr>
				
				
				<tr>
					<td>Pace of teaching </td>
					<td>Excellent : <input type="radio" name="pace" value ="Excellent" /> </td>
					<td>VeryGood : <input type="radio" name="pace" value ="VeryGood" /> </td>
					<td>Good : <input type="radio" name="pace" value ="Good" /> </td>
					<td>Average : <input type="radio" name="pace" value ="Average" /> </td>
					<td>Poor : <input type="radio" name="pace" value ="Poor" /> </td>
				</tr>
				
				
				<tr>
					<td>Practical Application of Knowledge </td>
					<td>Excellent : <input type="radio" name="practical" value ="Excellent" /> </td>
					<td>VeryGood : <input type="radio" name="practical" value ="VeryGood" /> </td>
					<td>Good : <input type="radio" name="practical" value ="Good" /> </td>
					<td>Average : <input type="radio" name="practical" value ="Average" /> </td>
					<td>Poor : <input type="radio" name="practical" value ="Poor" /> </td>
				</tr>
				
				
				<tr>
					<td>Overall Feedback </td>
					<td>Excellent : <input type="radio" name=overall value ="Excellent" /> </td>
					<td>VeryGood : <input type="radio" name="overall" value ="VeryGood" /> </td>
					<td>Good : <input type="radio" name="overall" value ="Good" /> </td>
					<td>Average : <input type="radio" name="overall" value ="Average" /> </td>
					<td>Poor : <input type="radio" name="overall" value ="Poor" /> </td>
				</tr>
			
			</tbody>
		</table>
		
		<div style ="margin-left: 200px;margin-top:30px;font-size: 25px;color:red">
		
	  Comments for faculty : <input style="width:300px; height: 50px" type="text" name="comments" /> </td>
		
		</div>
		
		<div style ="margin-left: 170px;margin-top:30px;font-size: 25px;color:red">
		
	  Any additional comments : <input style="width:300px; height: 50px" type="text" name="additional" /> </td>
		
		</div>
		
		
		</div>
		
		<div style ="margin-left: 600px;margin-top:30px;font-size: 25px">
		
	  <input style="width:100px; height: 50px;background-color: red" type="submit" name="comments" value="Feedback" /> </td>
		
		</div>
	
		
	</form>
      
     

</body>
</html>