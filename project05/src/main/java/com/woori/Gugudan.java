package com.woori;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/mycalc/gugu.do")
public class Gugudan extends HttpServlet {
	private static final long serialVersionUDI = 1L;
	
	public Gugudan() {
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		
		PrintWriter out = resp.getWriter();
		
		String sDan = req.getParameter("dan");
		if(sDan==null || sDan.equals(""))
			sDan="2";
		int dan = Integer.parseInt(sDan);
		
		out.println("<html>");
		for(int i=1; i<=9; i++)
		{
			out.println(String.format("<h3>%d X %d = %d</h3><br/>", dan, i, dan*i));
		}
		out.println("<html>");
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		doGet(req, resp);
	}
	
}
