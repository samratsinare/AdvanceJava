package com.header;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/HeaderInfoServlet")
public class HeaderInfoServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	
	{
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.println("<h1>HeraderInformation</h1>");
		
		Enumeration<String> enum1 = request.getHeaderNames();  
		
		while(enum1.hasMoreElements())
		{
			String headername = (String)enum1.nextElement();
			String headervalue = request.getHeader(headername);
			
			out.println("<b>" + headername + "</b>");
			
			out.println("<br>"+headervalue + "<b>");
		}

		  

	}

}
