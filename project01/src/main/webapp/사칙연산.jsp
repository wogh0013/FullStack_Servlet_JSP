<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="frm">
		<input type="hidden" name="operator"/>
		x : <input type="text" name="x"> <br/>
		y : <input type="text" name="y"> <br/>
		
		<button type="button" onclick="goAdd('1')">더하기</button> <br/>
		<button type="button" onclick="goAdd('2')">빼기</button> <br/>
		<button type="button" onclick="goAdd('3')">곱하기</button> <br/>
		<button type="button" onclick="goAdd('4')">나누기</button> <br/>
	</form>
</body>
</html>

<script>
	function goAdd(oper)
	{
		var frm = document.frm;
		frm.operator.value=oper;
		frm.action="calc.jsp"; //동일 폴더로 이동한다.
		frm.submit(); //서버로 정보를 전송한다.
	}
</script>
