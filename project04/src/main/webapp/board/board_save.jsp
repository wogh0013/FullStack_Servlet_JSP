<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<%
//한글 안깨지도록 
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");

String title = request.getParameter("title");
String writer = request.getParameter("writer");
String contents = request.getParameter("contents");

String sql="insert into board (title, writer, contents, wdate) values(?,?,?,now())";
String driver = "com.mysql.cj.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/mydb?allowPublicKeyRetrieval=true";
String user = "root";
String pwd = "1234";

Connection conn=null;
PreparedStatement ptmt =null;

Class.forName(driver);
System.out.println("드라이버 로딩 성공");
conn = DriverManager.getConnection(url, user, pwd);
System.out.println("연결 성공");

ptmt = conn.prepareStatement(sql);
ptmt.setString(1, title);
ptmt.setString(2, writer);
ptmt.setString(3, contents);

ptmt.executeUpdate();
ptmt.close();
conn.close();
response.sendRedirect(request.getContextPath()+"/board/board_list.jsp");
%>










    
    