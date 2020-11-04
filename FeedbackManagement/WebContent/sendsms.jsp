<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
  
  <%   
  
  
  
        String result;
  
        String to = request.getParameter("to");
  
        String sub = request.getParameter("sub");
        
        String mess = request.getParameter("mess");
        
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

            // Create a default MimeMessage object.

            MimeMessage message = new MimeMessage(mailSession);

            // Set From: header field of the header.

            message.setFrom(new InternetAddress(from));

            // Set To: header field of the header.

            message.addRecipient(Message.RecipientType.TO,

               new InternetAddress(to));

            // Set Subject: header field

            message.setSubject(sub);

            // Now set the actual message

            message.setText(mess);

            // Send message
            
          

            Transport.send(message);

            result = "Your mail sent successfully....";

            System.out.println(result);
           
            request.getRequestDispatcher("messageForm.jsp").include(request, response);
            
            %>
            
            <h1>Notification send</h1>
        
       <%  } 
        
           catch (MessagingException mex)
         {

            mex.printStackTrace();

            result = "Error: unable to send mail....";

        }

    %>
    
  
  
