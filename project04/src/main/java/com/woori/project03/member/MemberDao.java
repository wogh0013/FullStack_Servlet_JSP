package com.woori.project03.member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.woori.project03.board.BoardDto;
import com.woori.project03.common.DBUtil;

public class MemberDao {
	
	public MemberDao()
	{
		try {
			Class.forName(DBUtil.driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	MemberDto login(String userid, String password)  /////////////////////
	{
		MemberDto resultDto = new MemberDto(); 
		
		Connection conn = null;
		Statement stmt =null;
		ResultSet rs=null;
		
		try {
			conn = DriverManager.getConnection(DBUtil.url,DBUtil.user, DBUtil.pwd);
			String sql = "select * from member where userid='"+userid   /////////////////////
					+"' and password='"+password+"' ";  /////////////////////
			
			System.out.println(sql);
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) /////////////////////
			{
				resultDto.setId( rs.getString("id"));/////////////////////
				resultDto.setUserid( rs.getString("userid"));/////////////////////
				resultDto.setPassword( rs.getString("password"));/////////////////////
				resultDto.setUsername( rs.getString("username"));/////////////////////
				resultDto.setEmail( rs.getString("email"));/////////////////////
				resultDto.setWdate( rs.getString("wdate"));/////////////////////
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
		
		return resultDto;
	}
}
