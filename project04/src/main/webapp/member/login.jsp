<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<form name="form" action="<%=request.getContextPath()%>/member?cmd=login_proc" 
              method="post">

    <div class="container" style="margin-top:40px">
        <h2 style="text-align:center;">로그인</h2>

        <table class="table table-hover " style="margin-top: 40px;width:40%;margin:auto">
            <colgroup>
                <col width="30%">
                <col width="*">
            </colgroup>
        
            <tbody>
              <tr>
                <td>아이디</td>
                <td>
                    <div class="mb-3" style="margin-top:0px; margin-bottom:0px;">
                        <input type="text" class="form-control" id="id" name="userid" 
                        placeholder="" value = "">
                    </div>
                </td>
              </tr>       
              <tr>
                <td>비밀번호</td>
                <td>
                    <div class="mb-3" style="margin-top:0px; margin-bottom:0px;">
                        <input type="text" class="form-control" id="password" name="password" 
                        placeholder="" >
                    </div>
                </td>
              </tr>      
            </tbody>
          </table>
       
          <div class="container mt-3" style="text-align:center;">
            <a href="#" class="btn btn-secondary" onclick="login()">로그인</a>
            <a href="#" class="btn btn-secondary" id="btnLogin">로그인</a>
            <button type="button" class="btn btn-secondary">취  소</button>
            
          </div>
          
    </div>
  </form>
</body>
</html>
<script>

    //입력 유효성 확인  trim() - 단어 앞뒤의 쓸데없는 공백제거
    function login(){
        var id = document.getElementById("id");
        if(id.value.length<4 || id.value.length>12)
        {
            alert("6~12자리 이내로 작성하세요");
            id.value="";
            id.focus();
            return false;
        }

        if(id.value.trim() == ""){
            alert("아이디를 입력해주세요.");
            id.focus(); 
            return false;
        }

        //location.href="./index.html";
        document.form.submit();
    }

    $( ()=>{
        $("#btnLogin").click( ()=>{
            if( $("#id").val().trim()==""){
                alert("아이디를 입력해주세요");
                return false;
            }
        })
    })

</script>