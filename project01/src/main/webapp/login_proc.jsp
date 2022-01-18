<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String userid=request.getParameter("userid");
		String password=request.getParameter("password");
	%>
	
	사용자아이디 : <%=userid %><br/>
	패스워드 : <%=password %><br/>
</body>
</html>