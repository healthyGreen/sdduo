<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<script type="text/javascript">
	// 쿠키에 id를 저장.
    function setsave(name, value, expiredays) {
        var today = new Date();
        today.setDate(today.getDate() + expiredays);
        document.cookie = name + "=" + escape(value) + "; path=/; expires=" + today.toGMTString() + ";";
        
    }
    // 버튼 클릭시 실행 function
    function saveId(){
        if (document.getElementById("idSaveCheck").checked) {
            saveLogin(document.getElementById("userId").value);
        } else {
            saveLogin("");
        }
    }

    // id를 받아와 쿠키에 저장할지 쿠키에서 삭제할지 결정.
    function saveLogin(id) {
        if (id != "") {
            // userid 쿠키에 id 값을 7일간 저장
            setsave("userid", id, 7);
        } else {
            // userid 쿠키 삭제
            setsave("userid", id, -1);
        }
    }
    
    // 화면 로드시 아이디
    function getLogin() {
        
    // userid 쿠키에서 id 값을 가져온다.
        var cook = document.cookie + ";";
        var idx = cook.indexOf("userid", 0);
        var val = "";

        if (idx != -1) {
            cook = cook.substring(idx, cook.length);
            begin = cook.indexOf("=", 0) + 1;
            end = cook.indexOf(";", begin);
            val = unescape(cook.substring(begin, end));
        }

        // 가져온 쿠키값이 있으면
        if (val != "") {
            document.getElementById("userId").value = val;
            document.getElementById("idSaveCheck").checked = true;
        }
    }

</script>
<html>
<body onload="getLogin()">
<div class="wrapper">
<div class="sub-content">
				<div class="sub-content-inbox">
					<div class="sub-top">
						<h2 class="centerH2">로그인</h2>
					</div>
					<div class="login-title">
						<p>회원님의 아이디와 비밀번호를 입력하신 후 로그인 버튼을 클릭하세요! <br>아이디저장에 체크를 하시면 다음에 로그인 하실 경우 새롭게 아이디를 입력하실 필요가 없습니다.</p>
					</div>
					<div class="login-inbox2">
						<form id="form" name="form" method="post" action="/SDDuo/member/login.do" onsubmit="return saveId();">					
						<input type="hidden" id="returnUrl" name="returnUrl" value="/tmweb/main.do">
							<div class="login-box login-box2">
								<div class="input-id-box input-id-box2">						
									<table>
										<tbody><tr>
											<td><input type="text" placeholder="아이디" name="m_id" id="userId" value="" onkeydown="javascript:if(event.keyCode == 13) goLoginAction();"></td>
										</tr>
										<tr>
											<td><input type="password" placeholder="비밀번호를 입력해주세요." name="m_pass" id="password" value="" onkeydown="javascript:if(event.keyCode == 13) goLoginAction();"></td>
										</tr>
									</tbody></table>
								</div>							
								<p><a href="#"><input type="submit" class="login-btn" value="로그인" name="" ></a>
								</p><c:if test="${aboutLogin.equals('loginError') }">
								<div class="login-title" align="center">
								입력한 아이디가 존재하지 않습니다. <br><br>아이디를 다시 한번 입력해 주세요.
								</div>
					</c:if>
								<div class="save-check save-check2">
									<input type="checkbox" class="checkbox" name="idSaveCheck" id="idSaveCheck" style="float: left; ">
									<span style="padding-top:8px;">아이디저장</span>
								</div>
							</div>
						</form>
						<div class="id-search">
							<p>아이디/비밀번호를 잊으셨나요?</p>
							<ul>
								<li><input type="button" class="login-search-btn login-search-btn " title="" value="아이디 찾기" name="" onclick="location.href='http://localhost:8080/SDDuo/member/findIdForm.do'"></li>
								<li><input type="button" class="login-search-btn login-search-btn2" title="" value="비밀번호 찾기" name="" onclick="location.href='http://localhost:8080/SDDuo/member/findPwForm.do'"></li>
							</ul>
						</div><br>
						<div class="login-btn-box">
							<p><span>아직 상담해듀오 회원가입을 하지 않으셨나요? </span><br><br> 상담해듀오 가입하시면 더 많은 혜택을 만나보실 수 있습니다.</p>
							<ul>
								<li><a href="#"><input type="button" value="신규 회원가입" class="new-join-btn" name="" onclick="location.href='http://localhost:8080/SDDuo/member/agree.do'"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
</div>
</body>
</html>