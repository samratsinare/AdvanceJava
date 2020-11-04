
  <%@page import="com.feedback.service.*"%>
  
  <jsp:useBean id="student" class = "com.feedback.dto.Student" scope="session"></jsp:useBean>
  
  <jsp:setProperty property="*" name="student"/>
  
  <%
       
         
        StudentService service = new StudentServiceImple();
  
        service.ModifyStudent(student);
     
        response.sendRedirect("studenthome.jsp?id="+student.getName());
     
  
  %>