<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Heaven Bookstore</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&family=Noto+Sans:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="./resources/css/clear.css">
    <link rel="stylesheet" href="./resources/css/header.css">
    <link rel="stylesheet" href="./resources/css/join.css">
    
    <script type="text/javascript">
	function check(){
		var id = document.forms["joinform"]["id"].value;
		var pass = document.forms["joinform"]["password"].value;
		var pass_check = document.forms["joinform"]["pass_check"].value;
		var email = document.forms["joinform"]["email"].value;
		var email2 = document.forms["joinform"]["email2"].value;

		
		if(!id){
			alert("아이디를 입력하세요.");
			document.joinform.bs_id.focus();
			return false;
		}
		if(!pass){
			alert("비밀번호를 입력하세요.");
			document.joinform.password.focus();
			return false;
		} 

		if(password != pass_check){
			alert("비밀번호가 일치하지 않습니다.");
			document.joinform.password.focus();
			return false;
		}

	}
	

	function email_change() {
		var target = document.joinform.adressBox;
		
		if(target.options[target.selectedIndex].text  == "선택"){ // 선택
			document.joinform.email2.disabled = true;
			document.joinform.email2.value = "";
		}else { // 그외
			document.joinform.email2.disabled = false;
			document.joinform.email2.value = target.options[target.selectedIndex].value;
		}
	}
</script>

</head>
<style>

</style>
<body>
    <div class="wrapper">
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
        <article class="content_wrap">
            <div class="content_inner">
				
					
					<!-- 회원가입 시작 -->
					
					<form action="insertUser.lo" name="joinform" method="post" >

                        <div class="join_table">
                            <div class="join_title">
                                <span>회원가입</span>
                            </div>
                            <div class="join_middle">
                                <div class="join_info">
                                    <label>
                                        <span>아이디</span>
                                        <td><input type="text" name="id" placeholder="(문자와 숫자를 조합하여 2~12자리로 만들어 주세요)" size="45" class="input_box"></td>
                                        
                                    </label>
                                    <label>
                                        <span>비밀번호</span>
                                        <input type="password" name="password" placeholder="(문자와 숫자를 조합하여 2~12자리로 만들어 주세요)" size="45" class="input_box">
                                    </label>
                                    <label>
                                        <span>비밀번호 확인</span>
                                        <input type="password" name="pass_check" placeholder="(비밀번호를 확인해주세요.)" size="45" class="input_box">
                                    </label>
                                    <label>
                                        <span>이름</span>
                                        <input type="text" name="name" class="input_box">
                                    </label>
                                    <label>
                                        <span>이메일</span>
                                        <input type="text" name="email" id="email" class="input_box" />
                                        <p>@</p>
                                        <input type="text" name="email2" id="email2" class="input_box" />
                                        <select name="adressBox" id="adressBox" onchange="email_change()">
                                        
                                          <option>선택</option>
                                          <option value="naver.com">naver.com</option>
                                          <option value="kakao.com">kakao.com</option>
                                          <option value="daum.net">daum.net</option>
                                          <option value="gmail.com">gmail.com</option>
                                          <option value="nate.com">nate.com</option>
                                        </select>

                                    </label>
                                    <label>
                                        <span>연락처</span>
                                        <input type="text" name="phoneNum" placeholder="(숫자만 입력해주세요)" size="30" class="input_box">
                                    </label>
                                    <label>
                                        <span>주소</span>
                                        <input type="text" name="address" class="input_box" size="45">
                                    </label>
                                </div>
                                
                                
                            </div>
                            <div class="join_btns">
                                
                                <input type="submit" value="회원가입" class="join_btn" onclick="alert('가입되셨습니다. 로그인해주세요.')">
									<a href="javascript:alert('가입되셨습니다. 로그인해주세요.')"></a>
									&nbsp;&nbsp;
									<input type="button" class="join_btn" value="취소" onclick="history.back(-1)">
									<a href="javascript:history.back(-1)"></a>
                            </div>


                        </div>

					</form>
					<!-- 회원가입 종료 -->
					</td>
					</tr>
				
            </div>
        </article>
        <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
</body>
</html>
