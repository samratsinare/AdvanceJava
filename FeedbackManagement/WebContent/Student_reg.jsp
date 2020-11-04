<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.feedback.service.*"%>
    
    <%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
  

 <jsp:useBean id="student" class="com.feedback.dto.Student" scope="page"></jsp:useBean>
 
 <jsp:setProperty property="*" name="student"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

        <%
        
         
   
            StudentService service = new StudentServiceImple(); 
   
             int count = service.regStudent(student);
             
             System.out.println(count);
             
             response.sendRedirect("student_loginForm.jsp");
             
             if(count>=1)
             {
            	 
            	 String pass1 = student.getPassword();
            	 
            	 int id = student.getStud_id();
            	 
                 String result;
           
                 String to = student.getEmail();
           
                 String sub = "Registration Mail";
                 
                 String mess = "Thank You For Making registration with Us...!!! Stay Safe Stay Home..!! " + "StudentId  : "+id + "password : "+student.getPassword();
                 
                 final String from = "samratsinare@gmail.com";
                 
                 final String pass = "Sammy@07";
                 
                  String host = "smtp.gmail.com";

                

                 Properties props = new Properties();


                 props.put("mail.smtp.host", host);

                 props.put("mail.transport.protocol", "smtp");

                 props.put("mail.smtp.auth", "true");

                 props.put("mail.smtp.starttls.enable", "true");

                 props.put("mail.user", from);

                 props.put("mail.password", pass);

                 props.put("mail.port", "465");
                 


                 Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

                     @Override
                     protected PasswordAuthentication getPasswordAuthentication() {

                         return new PasswordAuthentication(from, pass);

                     }

                 });

              
                 try {

                     MimeMessage message = new MimeMessage(mailSession);

                     message.setFrom(new InternetAddress(from));

                    
                     message.addRecipient(Message.RecipientType.TO,

                        new InternetAddress(to));

                      message.setSubject(sub);
                      
                     message.setText(mess);


                     Transport.send(message);

                     result = "Your mail sent successfully....";

                     System.out.println(result);
                     
                     
                    
                 } 
                 
                 catch (MessagingException mex)
               {

                  mex.printStackTrace();

                  result = "Error: unable to send mail....";

              }
                    
                
                     
            	 
             }
             
             
        	
        	 
        	%>
        	
        
        	 
       
   
        
   

</body>
</html>