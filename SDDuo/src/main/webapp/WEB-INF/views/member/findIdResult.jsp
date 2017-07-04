<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<div class="tac">
	<h3>아이디찾기</h3>

	<p class="fz15"><center>${member.m_name}님의 아이디는 <strong>${member.m_id}</strong>입니다.</center></p>
				<%-- 	비밀번호는 <strong>${member.passwd}</strong></p> --%>
	<div class="btn_type_04">
	<center><a href="/SDDuo/member/loginForm.do"><input type="button" value="로그인하기"></a>
					</center>
	</div>
</div>