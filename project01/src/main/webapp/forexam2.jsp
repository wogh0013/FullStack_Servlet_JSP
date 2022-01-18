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
	
	<%
		int dan=3;
		for(int i=1; i<=10; i++)
		{
	%>
			<p style='color:blue'><%=dan%> X <%=i%> = <%=dan*i %></p>
	<%
		}
	%>
</body>
</html>