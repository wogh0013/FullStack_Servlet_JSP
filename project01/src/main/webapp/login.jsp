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
	userid : <input type="text" name="userid"> <br/>
	password : <input type="password" name="password"> <br/>
	
	<!-- '보내기'는 쓰지 말고 '보내기2'를 쓰자
		 '보내기'는 바로 전송을 해버려서 문제가 생길 수 있고,
		 '보내기2'는 확인 후 전송을 함(..?)
	 -->
	<input type="submit" value="보내기" onclick="goSend()"> <br/>
	<button onclick="goSend()">보내기</button> <br/>
	
	<input type="button" value="보내기2" onclick="goSend()"> <br/>
	<button type="button" onclick="goSend()">보내기2</button> <br/>
</form>
</body>
</html>

<script>
	function goSend()
	{
		var frm = document.frm;
		if(frm.userid.value.trim()=="")
		{
			alert("아이디를 입력하세요");
			frm.userid.focus();
			return false;
		}
		
		if(frm.password.value.trim()=="")
		{
			alert("패스워드를 입력하세요");
			frm.password.focus();
			return false;
		}
		
		frm.action="login_proc.jsp";
		frm.submit(); //서버로 정보를 보낸다.
	}
</script>