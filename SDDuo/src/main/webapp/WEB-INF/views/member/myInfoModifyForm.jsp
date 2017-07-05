<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 수정</title>
</head>
<body>
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
										<dt>나의 정보 수정/탈퇴</dt>
										<dt>예약 현황</dt>
										<dt>상담 내역</dt>
										<dt>나의 자가 진단</dt>
										<dt>쿠폰함(1개)</dt>
									</dl>
								</div>
							</div>
							<div class="rightbox">
								<form action="/SDDuo/member/myInfoModify.do" method="post">
								<input type="hidden" name="m_id" value="${sessionScope.session_member_id}" >
								<table width="100%" cellpadding="0" cellspacing="0">
									<tbody><tr>
									<td style="padding:10px; border:1px solid #dedede; background-color:#fbfbfb;" align="center">

										<table width="97%" cellpadding="5" cellspacing="0" border="0" class="jogin_infotbl">
										<tbody><tr>
											<td class="memberCols1"><font color="FF6000">*</font> 아이디</td>
									
											<td class="memberCols2"><span class="eng"><b>${sessionScope.session_member_id}</b></span></td>
										</tr>
										
										<tr>
											<td class="memberCols1"><font color="FF6000">*</font> 비밀번호</td>
											<!-- 비밀번호 버튼 -->
											<td class="memberCols2">
												<input type="password" name="m_pass">
												
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
											<input type="radio" name="m_sex" required="" label="성별" value="m"> 남자
											<input type="radio" name="m_sex" required="" label="성별" value="w" checked=""> 여자
											</span></td>
										</tr>
										
										<tr>
											<td class="memberCols1"><font color="FF6000">*</font> 생년월일</td>
											<td class="memberCols2">
											<input type="text" name="m_year" value="${member.m_year }" required="" label="생년월일" style="background:#FFF" size="4" maxlength="4">년
											<input type="text" name="m_month" value="${member.m_month }" required="" label="생년월일" style="background:#FFF" size="2" maxlength="2">월
											<input type="text" name="m_date" value="${member.m_date }" required="" label="생년월일" style="background:#FFF" size="2" maxlength="2">일
										
										
											</td>
										</tr>
										
										
										
										
										<tr>
											<td class="memberCols1"><font color="FF6000">*</font> 이메일</td>
											<td class="memberCols2">
											<input type="text" name="m_email" value="${member.m_email }" size="30" required="" option="regEmail" label="이메일" style="background:#FFF">
											<a href="javascript:void(0)" onclick="chkEmail()"><img src="/shop/data/skin/standard_C/dsm/img/mb/join_btn_mail.jpg" border="0" align="absmiddle"></a>
											
											
											
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
										<input type="text" name="m_phone1" id="mobile0" value="${member.m_phone1 }" size="4" maxlength="4" required="" option="regNum" label="핸드폰"> -
										<input type="text" name="m_phone2" id="mobile1" value="${member.m_phone2 }" size="4" maxlength="4" required="" option="regNum" label="핸드폰"> -
										<input type="text" name="m_phone3" id="mobile2" value="${member.m_phone3 }" size="4" maxlength="4" required="" option="regNum" label="핸드폰">
										
										</td>
									</tr>
								


									</tbody></table>

								</td>
								</tr>
								</tbody></table>
								<div style="width:100%" class="btnArea">
									<input type="submit" value="수정완료" style="border: none;  background: #999; color: #fff; padding: 10px 30px; ">
									
								</div>
								</form>
							</div>
						</div>	
						
					</div>
					
				</div>
</body>
</html>