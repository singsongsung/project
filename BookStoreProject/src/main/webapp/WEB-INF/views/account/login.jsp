<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="./resources/css/clear.css">
    <link rel="stylesheet" href="./resources/css/header.css">
    <link rel="stylesheet" href="./resources/css/login.css">
<script type="text/javascript">
	function check(){
		var id=loginform.id.value;
		var pass=loginform.password.value;
		
		if(id.length == 0){
			alert("아이디를 입력하세요.");
			loginform.id.focus();
			return false;
		}
		if(pass.length == 0){
			alert("비밀번호를 입력하세요.");
			loginform.password.focus();
			return false;
		}
		
		return true;
	}
</script>

</head>
<body>
	<div class="wrapper">
        <%@ include file="/WEB-INF/views/include/header.jsp" %>
        <article class="content_wrap">
            <div class="content_inner">
                <form action="login.lo" method="post" name="loginform" onsubmit="return check()">
                    <div class="login_table">
                        <div class="login_title">
                            <span>Login</span>
                        </div>
                        <div class="login_middle">
                            <div class="middle_left">
                                <label>
                                    <span>아이디</span>
                                    <td><input type="text" name="id" class="input_box"></td>
                                    
                                </label>
                                <label>
                                    <span>비밀번호</span>
                                    <input type="password" name="password" class="input_box">
                                </label>
                            </div>
                            
                            <input type="submit" value="로그인" class="login_btn">
                        </div>
                        
                        <div>
                            <button class="join_btn"><a href="join.lo">회원가입</a></button>
                        </div>
                    </div>
                </form>
            </div>
        </article>
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
</body>
</html>