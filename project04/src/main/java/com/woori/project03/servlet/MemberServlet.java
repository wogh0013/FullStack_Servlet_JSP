package com.woori.project03.servlet;

import java.io.IOException;

import com.woori.project03.member.MemberController;
import com.woori.project03.member.MemberDto;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/member")
public class MemberServlet extends HttpServlet{

	MemberController memCtl=new MemberController();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cmd = req.getParameter("cmd");
		if(cmd.equals("login"))
		{
			RequestDispatcher rd = req.getRequestDispatcher("/member/login.jsp");
			rd.forward(req, resp);
		}
		else if(cmd.equals("login_proc"))
		{
			MemberDto dto = memCtl.login(req, resp);
			if(dto.getUserid().equals(""))
				System.out.println("로그온 실패");
			else
				System.out.println("로그온 성공");
			
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
