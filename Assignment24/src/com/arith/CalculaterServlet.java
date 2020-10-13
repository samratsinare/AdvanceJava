package com.arith;
import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CalculaterServlet")

public class CalculaterServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	
	{
		 Integer result = 0;
		
		
		
		Integer num1 = Integer.parseInt(request.getParameter("num1"));
		Integer num2 = Integer.parseInt(request.getParameter("num2"));
		
        String add = request.getParameter("add");
        String sub = request.getParameter("sub");
        String mul = request.getParameter("mul");
        String div = request.getParameter("div");
        
        
        
        response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		
		
		 if(add!=null)
		 {
		       
			 result = num1 + num2;
			 
			 
			  out.println("<h1>Addition of two Numbers </h1>"+ result);
			 
		 }
		 

		 else if(sub!=null)
		 {
		       
			 result = num1 - num2;
			 
			 
			  out.println("<h1>Substraction of two Numbers </h1>"+ result);
			 
		 }
		 

		 else if(mul!=null)
		 {
		       
			 result = num1 * num2;
			 
			 
			  out.println("<h1>Multiplication of two Numbers </h1>"+ result);
			 
		 }
		 

		 else if(div!=null)
		 {
		       
			 result = num1 / num2;
			 
			 
			  out.println("<h1>Division of two Numbers </h1>"+ result);
			 
		 }
		 
		
		 request.getRequestDispatcher("Calculater.html").include(request, response);
       
        
    	
    	out.flush();
    	
    	out.close();
		

	}

}
