<%@page import="com.feedback.service.*"%>

<%@page import="java.util.*" %>

<%@page import="com.feedback.dto.Subjects"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="student" class ="com.feedback.dto.Student" scope="session"></jsp:useBean>

    <jsp:useBean id="feedback" class="com.feedback.dto.Feedback" scope="page"></jsp:useBean>
    
    <jsp:useBean id="subjects" class="com.feedback.dto.Subjects" scope="page"></jsp:useBean>
    
    <jsp:setProperty property="*" name="feedback"/>
    
   
  
  <%  
          FeedbackService service1 = new FeedbackServiceImple();
  
              feedback.setStud_id(student.getStud_id());
              
              //feedback.setSub_name(subjects.getSub_name());
              
              boolean count1 = service1.count(feedback);
           
  
             System.out.println(count1);
             
             if(count1)
            
             {
            	 request.getRequestDispatcher("feedbackFormsub.jsp").include(request, response);
             
                   %>
                   
                   <h1 style="color:red; margin-left: 300px">Already Feedback Recorded</h1>
                  
                <% }else
                {
                	 
                    service1.addFeedback(feedback);
          
           
                  response.sendRedirect("studenthome.jsp?id="+student.getName());    
                }
       %>
                
                
             