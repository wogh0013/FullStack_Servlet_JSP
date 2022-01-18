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
String sX = request.getParameter("x");
String sY = request.getParameter("y");
String oper = request.getParameter("operator");

int x = Integer.parseInt(sX);
int y = Integer.parseInt(sY);

String result="";
if(oper.equals("1"))
	result=String.format("%d + %d = %d", x, y, x+y);
else if(oper.equals("2"))
	result = String.format("%d - %d = %d", x, y, x-y);
else if(oper.equals("3"))
	result = String.format("%d * %d = %d", x, y, x*y);
else
	result = String.format("%d / %d = %d", x, y, x/y);
%>
<%=result %> <br/>

</body>
</html>