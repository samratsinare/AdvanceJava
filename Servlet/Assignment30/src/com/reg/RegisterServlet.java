package com.reg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.security.mscapi.PRNG;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	
	{

		response.setContentType("text/html");
		
		PrintWriter out  = response.getWriter();
		
		String name = request.getParameter("name");
		
		String gen = request.getParameter("gender");
		
		String city = request.getParameter("city");
		
		String lan[] = request.getParameterValues("eng");
		
		
		
		
		if(name!=null && city!=null && gen!= null & lan!=null)
		{
			
			out.println("<h1>User_Details</h1>");
			
			out.println("<h2>" + name + "</h2>");
			out.println("<h2>" + gen + "</h2>");
			out.println("<h2>" + city + "</h2>");
			
			 for(String l : lan)
			 {
				 out.print("<h2>" + l + "</h2>");
			 }
			
			
		}
		
		else
		{
			out.print("<h1>Fill all the details</h1>");
			
			request.getRequestDispatcher("reg.html").include(request, response);
		}
		
		out.flush();
		out.close();

	}

}
