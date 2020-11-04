<%@page import="com.feedback.service.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.feedback.dto.*"%>
    
    
     <%@page import="java.util.*" %>
    
    <jsp:useBean id="feedback" class="com.feedback.dto.Feedback"></jsp:useBean>
    
    <jsp:useBean id="student" class="com.feedback.dto.Student"></jsp:useBean>
    
    <%
    
        FeedbackService feedbackService = new FeedbackServiceImple();
    
        ArrayList<Feedback> list = feedbackService.allFeedbackSub(feedback);
     
    
    %>
    
    
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
        
        <a href="adminHome.jsp">Welcome Admin</a>
        
        <a href="AdminLogin.jsp">Logout</a>
       
      </div>
      
      <table align="center" style="font-size: 17px;margin-top: 30px" border="1" cellpadding="5">
	
		
			<thead>
			
			 <thead>
				<tr>
					<th colspan="10" style="color : red; font-size:20px"  >Subject FeedBack</th>
				</tr>
			</thead>
				
				<tr>
				    <th> StudentId</th>
				    <th >Subject Name</th>
					<th >Explanation Of Concept</th>
					<th >Interaction with students</th>
					<th >Pace of teaching </th>
					<th >Practical Application of Knowledge </th>
					<th >Overall Feedback</th>
					<th >Comments for faculty</th>
					<th > Any additional comments </th>
				
		
					
				</tr>
				
			</thead>
			<tbody>
				<% 
					for(Feedback e : list){
				%>
				<tr>
					<td style="text-align: center;" ><%=e.getStud_id()%></td>
					<td style="text-align: center;" ><%=e.getSub_name()%></td>
					<td style="text-align: center;" ><%=e.getConcept()%></td>
					<td style="text-align: center;" ><%=e.getInteraction()%></td>
					<td style="text-align: center;" ><%=e.getPace()%></td>
					<td style="text-align: center;" ><%=e.getPractical()%></td>
					<td style="text-align: center;" ><%=e.getOverall()%></td>
					<td style="text-align: center;" ><%=e.getComments()%></td>
					<td style="text-align: center;" ><%=e.getAdditional()%></td>
					
					<td style="text-align: center;" ><a href="feedbackdeletesub.jsp?feedId=<%=e.getFeed_id()%>" >Delete</a></td>
					
					
					
				</tr>
				<% 
				
				      
					
					} %>
				
				
				<tr>
				   
					<td><a style="color:red" href="adminHome.jsp" >DashBoard</a> </td>
					
				</tr>
			</tbody>
		</table>
	
      


    

</body>
</html>