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
		이름 : <input type="text" name="username"> <br/>
		국어 : <input type="text" name="kor"> <br/>
		영어 : <input type="text" name="eng"> <br/>
		수학 : <input type="text" name="mat"> <br/>
		
		<button type="button" onclick="goScore()">결과 확인</button>
	</form>
</body>
</html>

<script>
	function goScore(){
		var frm = document.frm;
		
		if(frm.username.value.trim()=="")
			{
				alert("이름을 입력하세요.");
				frm.username.focus();
				return false;
			}
		
		if(frm.kor.value.trim()=="")
		{
			alert("국어점수를 입력하세요.");
			frm.kor.focus();
			return false;
		}
		
		if(frm.eng.value.trim()=="")
		{
			alert("영어점수를 입력하세요.");
			frm.eng.focus();
			return false;
		}
		
		if(frm.mat.value.trim()=="")
		{
			alert("수학점수를 입력하세요.");
			frm.mat.focus();
			return false;
		}
		
		frm.action="score.jsp";
		frm.submit();
	}
</script>