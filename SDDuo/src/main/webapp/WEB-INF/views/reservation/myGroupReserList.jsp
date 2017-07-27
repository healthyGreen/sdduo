<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="sub-top">
	<h2>나의 예약 현황</h2>
</div>
<div class="leftbox">
	<div class="tit"><span>MY</span> PAGE</div>
	<dl class="mlist">
      <dt><a href="<%=request.getContextPath() %>/member/myInfoView.do">나의 정보 수정/탈퇴</a></dt>
      <dt><a>예약 현황</a></dt>
      <dt><a href="<%=request.getContextPath() %>/consulting/myConsultingList.do">온라인 상담 내역</a></dt>
      <dt><a href="<%= request.getContextPath()%>/Reserve/myReserList.do">나의 자가 진단</dt>
      <dt><a href="<%=request.getContextPath() %>/member/myCoupon.do">쿠폰함(${member.m_r_coupon}개)</a></dt>
   </dl>
</div>
	<div class="rightbox">
        	<div class="resev-box">
				<p class="">총 <span>${ totalCount }</span>건 ${currentPage }/${totalPage }&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" style="    background: #484647;    cursor: pointer;    border: none;    color: #Fff;    padding: 3px 7px;" onclick="location.href='myOneReserList.do'" value="개인 예약 현황"> 
            &nbsp;&nbsp; <input type="button" style="    background: #484647;    cursor: pointer;    border: none;    color: #Fff;    padding: 3px 7px;" onclick="location.href='myGroupReserList.do'" value="그룹 예약 현황"> </p>
			</div>
			<div class="onlinetb">
				<table class="list-board01">
					<caption>상담문의 리스트</caption>
					<colgroup>
						<col width="113px">
						<col width="225px">
						<col width="167px">
						<col width="235px">
						<col width="162px">
						<col width="151px">
					</colgroup>
					<thead>
						<tr>
							<th>번호</th>
							<th>등록일</th>
							<th>신청자</th>
							<th>고객희망일자</th>
							<th>희망센터</th>
							<th>답변상태</th>
						</tr>
					</thead>
					
					<tbody>
					<%int numberN = 1; %>
					
						<c:forEach var="list2" items="${list2}">
							<tr>
								<th><%= numberN++%></th>
								<td><fmt:formatDate value="${list2.gr_date}" pattern="yyyy.MM.dd"/></td>
								<td>${ list2.gr_group }</td> 
                     			<td>${ list2.gr_year }.${ list2.gr_month }.${ list2.gr_day }&nbsp;&nbsp;${ list2.gr_hour }:${ list2.gr_minute }</td>
                     			<td>
                     
                     				<c:choose>

                           				<c:when test="${list2.gr_center eq '1'}">
                                			 서울센터
                           				</c:when>
                           
                          			 	<c:when test="${list2.gr_center eq '2'}">
                               				  대구센터
                           				</c:when>
                           				
                           				<c:when test="${list2.gr_center eq '3'}">
                                			 부산센터
                           				</c:when>
                           			</c:choose>

								</td>
								<td>
                     
                     				<c:choose>

                           				<c:when test="${list2.gr_status eq '0'}">
                                			 예약대기
                           				</c:when>
                           
                          			 <c:when test="${list2.gr_status ne '0'}">
                               				  예약완료
                           				</c:when>
                           			</c:choose>

								</td>
							</tr>
					</c:forEach>
					
					</tbody>
				</table>
				<div class="pageing">
						${html}
				</div>
			</div>
			
			<c:if test="${fn:length(list2) le 0}">
				<br />
				<center>등록된 게시물이 없습니다</center>
				<br />
			</c:if>
		</div>
</body>
</html>