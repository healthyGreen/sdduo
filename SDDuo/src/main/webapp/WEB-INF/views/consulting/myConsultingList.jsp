<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>나의 상담 내역</title>
</head>
<body>
<div class="sub-content">
				<div class="sub-content-inbox">
<div class="sub-top">
	<h2>나의 상담 내역</h2>
</div><br>

<div class="sub-cont clear">
						<div class="sub-cont-inbox">
							<div class="leftbox">
								<div class="tit"><span>MY</span> PAGE</div>
									<dl class="mlist">
										<dt><a href="<%=request.getContextPath() %>/member/myInfoView.do">나의 정보 수정/탈퇴</a></dt>
										<dt><a href="<%=request.getContextPath() %>/Reserve/myOneReserList.do">예약 현황</a></dt>
										<dt><a>온라인 상담 내역</a></dt>
										<dt><a href="<%=request.getContextPath() %>/self/selfTestList.do?t_category=1">나의 자가 진단</a></dt>
										<dt><a href="<%=request.getContextPath() %>/member/myCoupon.do">쿠폰함(${member.m_r_coupon}개)</a></dt>
									</dl>
								</div>
							</div>
					
							<div class="rightbox">
								<div class="resev-box">
									<p class="listnum">총 <span>${totalCount }</span>건 ${currentPage}/${totalPage }</p>
									<p class="reserv-btn">실시간예약 바로가기</p>
								</div>
					
								<table class="list-board01">
									<colgroup>
										<col width="110px">
										<col width="">
										<col width="100px">
										<col width="200px">
									</colgroup>
									<tbody>
										<tr>
											<th>번호</th>
											<th>제목</th>
											<th>작성자</th>
											<th>답변상태</th>
										</tr>
										<%int number = 1; %>
										
										<c:forEach var="list" items="${myConsultinglist }">
										<c:url var="passURL" value="consultingPassForm.do">
											<c:param name="c_number" value="${list.c_number }"/>
										</c:url>	
									<%-- 	<c:url var="viewURL" value="consultingView.do">
											<c:param name="c_number" value="${list.c_number }"/>
											<c:param name="c_ref" value="${list.c_ref }"/>
										</c:url> --%>
										<tr>
											<th><%= number++%></th>
											<th class="subject">
												<a href="${passURL}"><!-- <img src="../../images/sub/lock.gif" alt="자물쇠" class="lock"> --><b></b> ${list.c_title }</a>
											</th>
											<th>${list.m_id }</th>
											<th><p class="finish">
											<c:if test="${list.c_re_status==1}">
											답변 대기중
											</c:if>
											<c:if test="${list.c_re_status==2 }">
											상담글 확인
											</c:if>
											<c:if test="${list.c_re_status==3 }">
											<font color="red">답변글</font>
											</c:if> 
											</p></th>
										</tr>
										</c:forEach>
									</tbody>
								</table>
								<c:if test="${fn:length(myConsultinglist) le 0}">
										<br><center>등록된 게시물이 없습니다.</center>
								</c:if>

								<p class="btn01"><input type="button" value="이야기 쓰기" style="    background: #484647;    cursor: pointer;    border: none;    color: #Fff;    padding: 3px 7px; margin: 20px 0px;" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingForm.do'"></p>
								<div class="pageing">
									${html}
								</div>
							</div>		
						</div>
				</div>
			</div>
</body>
