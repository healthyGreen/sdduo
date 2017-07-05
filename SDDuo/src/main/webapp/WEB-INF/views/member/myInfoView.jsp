<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내 정보 보기</title>
</head>
<body>
<div class="sub-content">
				<div class="sub-content-inbox">
					
					<div class="sub-top">
						<h2>회원정보보기</h2>
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
								
								<table width="100%" cellpadding="0" cellspacing="0">
									<tbody>
										<tr>
											<td style="padding:10px; border:1px solid #dedede; background-color:#fbfbfb;" align="center">
									
									
									
									
									<table width="97%" cellpadding="5" cellspacing="0" border="0" class="jogin_infotbl">
									<tbody>
									<tr>
										<td class="memberCols1"><font color="FF6000">*</font> 아이디</td>
										<td class="memberCols2">
											<span class="eng"><b>${sessionScope.session_member_id}</b></span>
									
										</td>
									</tr>
									
									<tr>
										<td class="memberCols1"><font color="FF6000">*</font> 이름</td>
										<td class="memberCols2">
											${sessionScope.session_member_name}
										</td>
									</tr>
									
									<tr>
										<td class="memberCols1"><font color="FF6000">*</font> 성별</td>
										<td class="memberCols2"><span class="noline">
											${member.m_sex }
										</td>
									</tr>
									
									<tr>
										<td class="memberCols1"><font color="FF6000">*</font> 생년월일</td>
										<td class="memberCols2">
											${member.m_year}년 ${member.m_month }월 ${member.m_date }일 
									
										</td>
									</tr>
									
									
									
									
									<tr>
										<td class="memberCols1"><font color="FF6000">*</font> 이메일</td>
										<td class="memberCols2">
											${member.m_email }
										</td>
									</tr>
									
									
									<tr>
										<td class="memberCols1"><font color="FF6000">*</font> 주소</td>
									<td class="memberCols2">

									<table>
									<tbody><tr>
										<td>
											${member.m_zipcode } <br>
											${member.m_add1 } ${member.m_add2 }
											</td>
										</tr>
										</tbody></table>
									
										</td>
									</tr>
									
									
									<tr>
										<td class="memberCols1"><font color="FF6000">*</font> 핸드폰</td>
										<td class="memberCols2">
											${member.m_phone1 }-${member.m_phone2 }-${member.m_phone3 }
									</td>
								</tr>
	

								</tbody></table>

								</td>
								</tr>
								</tbody></table>
								<div style="width:100%" class="btnArea">
									<input type="button" value="정보수정" onclick="location.href='http://localhost:8080/SDDuo/member/checkPassForm.do'" style=" border: none; background: #333; color: #fff; padding: 10px 30px; ">
									<input type="button" value="이전으로" onclick="window.history.go(-1); return false;" style="border: none;  background: #999; color: #fff; padding: 10px 30px; ">
									<input type="button" value="회원탈퇴" onclick="location.href='http://localhost:8080/SDDuo/member/existPassForm.do'" style=" float: right!important;  border: none; background: #333; color: #fff; padding: 10px 30px; ">
								</div>
							</div>
						</div>	
						
					</div>
					
				</div>
</body>
</html>