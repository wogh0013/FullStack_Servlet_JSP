package com.woori.project03.board;


import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardController {
	BoardDao dao = new BoardDao();
	
	public List<BoardDto> getList( ){
		return dao.getList();
	}
	
	public void insert(HttpServletRequest req, HttpServletResponse resp)
	{
		String title = req.getParameter("title");
		String writer = req.getParameter("writer");
		String contents = req.getParameter("contents");
		
		BoardDto dto = new BoardDto();
		dto.setTitle(title);
		dto.setWriter(writer);
		dto.setContents(contents);
		
		dao.insert(dto);
	}
}
