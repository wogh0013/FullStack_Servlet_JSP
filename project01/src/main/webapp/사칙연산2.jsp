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
		
		x : <input type="text" name="x"> <br/>
		y : <input type="text" name="y"> <br/>
		
		<select name="operator">
			<option>==선택하세요==</option>
			<option value="1">+</option>
			<option value="2">-</option>
			<option value="3">*</option>
			<option value="4">/</option>
		</select>
		
		<button type="button" onclick="goAdd()">결과확인</button>
	</form>
</body>
</html>

<script>
	function goAdd()
	{
		var frm = document.frm;
		frm.action="calc.jsp"; //동일 폴더로 이동한다.
		frm.submit(); //서버로 정보를 전송한다.
	}
</script>
