<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%	String thing = request.getParameter("thing"); %>
<!-- <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀 번호 확인</title>
</head>
<body> -->
<script type="text/javascript">
	function delpassConfirm(){
		if(document.pass.m_pass.value == ""){
			alert("비밀번호를 입력해 주시기 바랍니다!");
			document.pass.m_pass.focus();
			return false;
		}else return true;
	}
	
	function modpassConfirm(){
		if(document.pass.m_pass.value == ""){
			alert("비밀번호를 입력해 주시기 바랍니다!");
			document.pass.m_pass.focus();
			return false;
		}else return true;
	}
</script>
<div class="sub-content">
				<div class="sub-content-inbox">
					
					<div class="sub-top">
						<h2>회원정보수정</h2>
					</div>
					<div class="sub-cont clear">
						<div class="sub-cont-inbox">
							<div class="leftbox">
								<div class="tit"><span>MY</span> PAGE</div>
									<dl class="mlist">
										<dt><a href="<%=request.getContextPath() %>/member/myInfoView.do">나의 정보 수정/탈퇴</a></dt>
										<dt>예약 현황</dt>
										<dt>상담 내역</dt>
										<dt>나의 자가 진단</dt>
										<dt>쿠폰함(${member.m_r_coupon}개)</dt>
									</dl>
								</div>
							</div>
							<div class="rightbox">
							<%if(thing.equals("modify")){ %>
								<form method="post" id="form" action="checkPass.do" onsubmit="return modpassConfirm()" name="pass">
								<table class="write-board01">
								<b>정보 수정을위한 회원님 계정 비밀번호를 입력해주세요!</b>
									<caption>[비밀번호 확인]</caption>
									<tbody>
										<tr>
											<th>password : </th>
											<td>
												<input type="password" name="m_pass" id="passwd" style="IME-MODE: disabled;" class="writetxt03">
											</td>
										</tr>
									</tbody>
								</table>
								<div class="btn-area">
									<input type="submit" value="확인" class="submit" >
									<input type="button" value="취소" class="cancel" onclick="window.history.go(-1); return false;">
								</div>
								</form>
								<%}else{ %> 
								<form method="post" id="form" action="existPass.do" onsubmit="return delpassConfirm()" name="pass">
								<table class="write-board01">
								<b><font color="red">회원님!<br> ★탈퇴시 고객님은 이 사이트를 이용하실수 없으며,<br> 새로운 계정을 만들어야만 이용 가능합니다.★<br>진짜 탈퇴할꼬에요?ㅠㅠ</font><br>
								회원님 계정 비밀번호를 입력해주세요.
								</b>
									<caption>[비밀번호 확인]</caption>
									<tbody>
										<tr>
											<th>password : </th>
											<td>
												<input type="password" name="m_pass" id="passwd" style="IME-MODE: disabled;" class="writetxt03">
											</td>
										</tr>
									</tbody>
								</table>
								<div class="btn-area">
									<input type="submit" value="확인" class="submit" >
									<input type="button" value="취소" class="cancel" onclick="window.history.go(-1); return false;">
								</div>
								</form>
						<%} %> 
							</div>
						</div>	
						
					</div>
					
				</div>
<!-- </body> -->
</html>