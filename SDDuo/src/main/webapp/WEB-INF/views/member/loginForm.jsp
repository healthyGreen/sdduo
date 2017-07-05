<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
</head>
<body>
<div class="wrapper">
<div class="sub-content">
				<div class="sub-content-inbox">
					<div class="sub-top">
						<h2>로그인</h2>
					</div>
					<div class="login-title">
						<p>회원님의 아이디와 비밀번호를 입력하신 후 로그인 버튼을 클릭하세요! <br>아이디저장에 체크를 하시면 다음에 로그인 하실 경우 새롭게 아이디를 입력하실 필요가 없습니다.</p>
					</div>
					<div class="login-inbox2">
						<form id="form" name="form" method="post" action="/SDDuo/member/login.do">					
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
								<p><a href="#"><input type="submit" class="login-btn" value="로그인" name="" ></a></p>
								<div class="save-check save-check2">
									<input type="checkbox" class="checkbox " title="" value="Y" name="idSaveCheck" id="idSaveCheck">아이디저장
								</div>
							</div>
						</form>
						<div class="id-search">
							<p>아이디/비밀번호를 잊으셨나요?</p>
							<ul>
								<li><input type="button" class="login-search-btn login-search-btn " title="" value="아이디 찾기" name="" onclick="location.href='http://localhost:8080/SDDuo/member/findIdForm.do'"></li>
								<li><input type="button" class="login-search-btn login-search-btn2" title="" value="비밀번호 찾기" name="" onclick="location.href='http://localhost:8080/SDDuo/member/findPwForm.do'"></li>
							</ul>
						</div>
						<div class="login-btn-box">
							<p><span>아직 상담해듀오 회원가입을 하지 않으셨나요? </span><br> 상담해듀오 가입하시면 더 많은 혜택을 만나보실 수 있습니다.</p>
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