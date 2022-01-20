package com.woori.project03.board;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.woori.project03.common.DBUtil;

public class BoardDao {
	public BoardDao()
	{
		try {
			Class.forName(DBUtil.driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	List<BoardDto> getList()
	{
		List<BoardDto> list = new ArrayList<BoardDto>();
		
		Connection conn = null;
		Statement stmt =null;
		ResultSet rs=null;
		
		try {
			conn = DriverManager.getConnection(DBUtil.url,DBUtil.user, DBUtil.pwd);
			String sql = "select * from board";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				BoardDto dto = new BoardDto();
				dto.setId( rs.getString("id"));
				dto.setTitle( rs.getString("title"));
				dto.setWriter( rs.getString("writer"));
				dto.setContents( rs.getString("contents"));
				dto.setWdate( rs.getString("wdate"));
				list.add( dto );
			}
		}catch (SQLException e) {
			
			e.printStackTrace();
		}
		finally{
			
			try {
				if(rs!=null) rs.close();
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
		}
		
		return list;
	}
	
	public void insert(BoardDto dto)
	{
		Connection conn = null;
		PreparedStatement stmt =null;
		
		try {
			conn = DriverManager.getConnection(DBUtil.url,DBUtil.user, DBUtil.pwd);
			String sql = "insert into board(title, contents, writer, wdate) values(?,?,?, now())";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, dto.getTitle());
			stmt.setString(2,  dto.getWriter());
			stmt.setString(3,  dto.getContents());
			
			stmt.executeUpdate();//BoardDao에서 빠트림 
			
		}catch (SQLException e) {
			
			e.printStackTrace();
		}
		finally{	
			try {
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			
		}
	}
}





