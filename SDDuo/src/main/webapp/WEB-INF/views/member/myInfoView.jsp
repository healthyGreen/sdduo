<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<h2>회원정보보기</h2><br>
					</div>
					<div class="sub-cont clear">
						<div class="sub-cont-inbox">
							<div class="leftbox">
								<div class="tit"><span>MY</span> PAGE</div>
									<dl class="mlist">
										<dt><a>나의 정보 수정/탈퇴</a></dt>
										<dt><a href="<%=request.getContextPath() %>/Reserve/myOneReserList.do">예약 현황</a></dt>
										<dt><a href="<%=request.getContextPath() %>/consulting/myConsultingList.do">온라인 상담 내역</a></dt>
										<dt><a href="<%= request.getContextPath()%>/Reserve/myReserList.do">나의 자가 진단</dt>
										<dt><a href="<%=request.getContextPath() %>/member/myCoupon.do">쿠폰함(${member.m_r_coupon}개)</a></dt>
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
									<tbody> <tr>
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

	  <%-- <tr>
               <th class="memberCols1" rowspan="2"><font color="FF6000">*</font> 주소</th>
               
                 <td>
                 <input type="text" name="m_zipcode" id="sample6_postcode" size="5" class="line"  value="${member.m_zipcode }" label="우편번호">
                 <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="background:#484647;cursor: pointer; border: none; color: #Fff; padding: 3px 7px;"><br>
                 
                     </td>
            </tr>
            <tr>
           <td id="mmber1">
           <input type="text" name="m_add1" id="sample6_address" value="${member.m_add1 }"  size="30" required="" label="주소"/>
           <input type="text" name=m_add2 id="sample6_address2" value="${member.m_add2 }" size="30" onkeyup="SameAddressSub(this)" oninput="SameAddressSub(this)" label="상세주소"/><br>
            <input type="hidden" name="m_admin" value="0"/> 
           <div style="padding:5px 5px 0 1px;font:12px dotum;color:#999;float:left;" id="div_road_address"></div>
           <div style="padding:5px 0 0 1px;font:12px dotum;color:#999;" id="div_road_address_sub"></div>
               </td>
            </tr>--%>

								</tbody>  </table>
							

								</tbody></table>
								<div style="width:100%" class="btnArea">
									<input type="button" value="정보수정" onclick="location.href='<%=request.getContextPath() %>/member/checkPassForm.do?thing=modify'" style=" border: none; background: #333; color: #fff; padding: 10px 30px; ">
									<!-- <input type="button" value="이전으로" onclick="window.history.go(-1); return false;" style="border: none;  background: #999; color: #fff; padding: 10px 30px; "> -->
									<input type="button" value="회원탈퇴" onclick="location.href='<%=request.getContextPath() %>/member/checkPassForm.do?thing=delete'" style=" float: right!important;  border: none; background: #333; color: #fff; padding: 10px 30px; ">
								</div>
							</div>
						</div>	
						
					</div>
					
				</div>
</body>
</html>