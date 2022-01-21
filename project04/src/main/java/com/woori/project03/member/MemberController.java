package com.woori.project03.member;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MemberController {
	MemberDao dao = new MemberDao();
	
	public MemberDto login(HttpServletRequest req, HttpServletResponse resp)
	{
		String userid=req.getParameter("userid");
		String password=req.getParameter("password");
		
		return dao.login(userid, password);
	}			
}
