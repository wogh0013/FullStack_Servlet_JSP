package com.woori.project03.servlet;

import java.io.IOException;

import com.woori.project03.board.BoardController;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/board")
public class BoardServlet extends HttpServlet{

	
	//  /board?cmd=list
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		
		String cmd = req.getParameter("cmd");
		BoardController controller = new BoardController();
		
		if(cmd==null || cmd.equals("list"))
		{
			//request개체에 setAttribute 함수를 이용해가 사용자가 request 객체에 자신의 객체를 저장할 수 있다  
			req.setAttribute("boardList",  controller.getList());
			//jsp페이지로 전달 
			RequestDispatcher rd = req.getRequestDispatcher("/board2/board_list.jsp");
			rd.forward(req, resp);
		}
		else if(cmd.equals("write"))
		{
			RequestDispatcher rd = req.getRequestDispatcher("/board2/board_write.jsp");
			rd.forward(req, resp);	
		}
		else if(cmd.equals("save"))
		{
			controller.insert(req, resp);
			resp.sendRedirect(req.getContextPath()+"/board?cmd=list"); 
			//forward   request객체에 저장된값을 전달하는 방식으로 이동
			//request  에 저장된거 지우고 이동함 
		}		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
}	












