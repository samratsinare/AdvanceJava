<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <jsp:useBean id="student" class="com.feedback.dto.Student" scope="page"></jsp:useBean>
    
    
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
        
      
        <a href="adminHome.jsp">Admin</a>
           
         <a href="AdminLogin.jsp">Logout</a>
         
         </div>


 <form  action="sendsms.jsp" method="post"  >
 
		<table align="center" style="font-size: 25px;margin-top: 100px;" cellpadding="12" >
			<thead >
				<tr>
					<th colspan="2" style="color: red" >Admin Login</th>
				</tr>
			</thead>
			<tbody>
			
				<tr>
					<td>To : </td>
					<td><input type="text" name="to" value="<%=request.getParameter("email")%>"/> </td>
				</tr>
				<tr >
					<td>Subject</td>
					<td><input type="text" name="sub"  /> </td>
				</tr>
				
				<tr>

                    <td>

                        <b><font color="red">Message Text:

                    </td>

                    <td>

                        <textarea rows="12" cols="80" name="mess"></textarea><br/>

                    </td>

                </tr>
				
			
				
				<tr >
					<td><input type="hidden"></td>
					<td><input type="submit" value="Send"  /> </td>
					
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