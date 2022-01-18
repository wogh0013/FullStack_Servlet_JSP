<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>for문 사용하기</h1>
	
	<%
		for(int i=1; i<=10; i++)
		{
			out.println("<p style='color:blue'>JSP 학습하기</p>");				
		}
	%>
	
	<%
		for(int i=1; i<=10; i++)
		{
	%>
		<p style='color:blue'>JSP 학습하기</p>
	<%
		}
	%>
	
	
</body>
</html>