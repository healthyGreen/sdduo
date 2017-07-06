<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀 번호 확인</title>
</head>
<body>
<div class="sub-content">
				<div class="sub-content-inbox">
					
					<div class="sub-top">
						<h2>회원탈퇴</h2>
					</div>
					<div class="sub-cont clear">
						<div class="sub-cont-inbox">
							<div class="leftbox">
								<div class="tit"><span>MY</span> PAGE</div>
									<dl class="mlist">
										<dt>나의 정보 수정/탈퇴</dt>
										<dt>예약 현황</dt>
										<dt>상담 내역</dt>
										<dt>나의 자가 진단</dt>
										<dt>쿠폰함(1개)</dt>
									</dl>
								</div>
							</div>
							<div class="rightbox">
								<form action="/SDDuo/member/existPass.do" method="post">
								<table class="write-board01">
									<caption>비밀번호 확인</caption>
									<tbody>
										<tr>
											<th>비밀번호 확인 (4자리)</th>
											<td>
												<input type="password" name="m_pass" id="lock_pwd" maxlength="4" style="IME-MODE: disabled;" class="writetxt03">
											</td>
										</tr>
									</tbody>
								</table>
								<div class="btn-area">
									<input type="submit" value="확인" class="submit" >
									<input type="button" value="취소" class="cancel" onclick="window.history.go(-1); return false;">
								</div>
								</form>
							</div>
						</div>	
						
					</div>
					
				</div>
</body>
</html>