<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>


<div class="sub-top">
	<h2>나의 예약 현황</h2>
</div>
<div class="leftbox">
	<div class="tit">
		<span>MY</span> PAGE
	</div>
	<dl class="mlist">
		<dt>
			<a href="<%=request.getContextPath() %>/member/myInfoView.do">나의
				정보 수정/탈퇴</a>
		</dt>
		<dt>
			<a href="<%=request.getContextPath() %>/Reserve/myReserList.do">예약
				현황</a>
		</dt>
		<dt>상담내역</dt>
		<dt>나의 자가 진단</dt>
		<dt>
			<a href="<%=request.getContextPath() %>/member/myCoupon.do">쿠폰함(${member.m_r_coupon}개)</a>
		</dt>
	</dl>
</div>
<div class="sub-content">

	<div class="sub-content-inbox">

		<!-- <h3>온라인 상담</h3>
					<p class="sub02_txt">
						마이스토리에 남겨주신 소중한 이야기는 내담자 보호 규정에 따라 철저히 비밀 보장 되며 병원과 달리 절대 기록이 남지 않습니다.<br />
						<span>답변은 질문 내용에 따라 분류되어 해당 분야 전문선생님에 의해 성실이 이루어집니다. <br />
						답변 순서는 각 센터별 전문가 선생님들의 여건에 따라 달라질 수 있음을 양해해 주시기 바랍니다.</span><br />
					</p> -->
		<div class="resev-box">
			<p class="listnum">
				총 <span>${totalCount }</span>건 ${currentPage}/${totalPage }
			</p>
			<p class="reserv-btn">실시간예약 바로가기</p>
		</div>
		<!-- <caption>내 상담문의 리스트</caption><br> -->
		<table class="list-board01">
			<colgroup>
				<col width="110px">
				<col width="">
				<col width="100px">
				<col width="120px">
				<col width="85px">
				<col width="135px">
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
						<c:param name="c_number" value="${list.c_number }" />
					</c:url>
					<c:url var="viewURL" value="consultingView.do">
						<c:param name="c_number" value="${list.c_number }" />
										<c:param name="c_ref" value="${list.c_ref }"/>
					</c:url>
					<tr>
						<th><%= number++%></th>
						<th class="subject"><c:if test="${session_member_id != 1 }">
								<a href="${passURL}"><img src="../../images/sub/lock.gif"
									alt="자물쇠" class="lock">${list.c_title }</a>
							</c:if> <c:if test="${session_member_id == 1 }">
								<a href="${viewURL}">${list.c_title }</a>
							</c:if></th>
						<th>${list.m_id }</th>
						<th><p class="finish">${list.c_re_status }</p></th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<c:if test="${fn:length(myConsultinglist) le 0}">
							등록된 게시물이 없습니다.
					</c:if>
		<!-- 	<!— 언니 위에 요거 button으로 하고싶은데 버튼으로하면 jstl이 안머거영 ㅠㅠ —> -->
		<input type="button" onclick="${replyURL}" value="관리자 답변달기"
			class="storywrite">
		<p class="btn01">
			<input type="button" value="이야기 쓰기"
				onclick="location.href='<%=request.getContextPath() %>/consulting/consultingForm.do'">
		</p>
		<div class="pageing">${html}</div>
	</div>
</div> 
</html>