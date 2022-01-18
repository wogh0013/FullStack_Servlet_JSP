<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>3단 출력하기</h1>
	<!-- http://localhost:9000/project01/forexam2.jsp?dan=4 -->
	<!-- request 객체: 클라이언트로부터 요청을 받아 처리하는 개체이다. getParameter("키") -->
	
	<%
		String sDan = request.getParameter("dan");
		int dan=Integer.parseInt(sDan);
		for(int i=1; i<=10; i++)
		{
	%>
			<p style='color:blue'><%=dan%> X <%=i%> = <%=dan*i %></p>
	<%
		}
	%>
</body>
</html>