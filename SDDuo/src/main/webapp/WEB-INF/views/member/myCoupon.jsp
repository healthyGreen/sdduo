<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<h3>My Coupons</h3>
<html>
<div class="sub-top">
						<h2>회원정보보기</h2><br>
					</div>
					<div class="sub-cont clear">
						<div class="sub-cont-inbox">
							<div class="leftbox">
								<div class="tit"><span>MY</span> PAGE</div>
									<dl class="mlist">
										<dt><a href="<%=request.getContextPath() %>/member/myInfoView.do">나의 정보 수정/탈퇴</a></dt>
										<dt><a href="<%=request.getContextPath() %>/Reserve/myOneReserList.do">예약 현황</a></dt>
										<dt><a href="<%=request.getContextPath() %>/consulting/myConsultingList.do">온라인 상담 내역</a></dt>
										<dt><a href="<%=request.getContextPath() %>/self/selfTestList.do?t_category=1">나의 자가 진단</a></dt>
										<dt><a>쿠폰함(${member.m_r_coupon}개)</a></dt>
									</dl>
								</div>
							</div>
<div align="center">
-----------------------------------------------------------------------<br><br>
	<c:if test="${member.m_r_coupon.equals('1')}">
		<h2>★ 회원가입 기념 쿠폰 ★<br>오프라인 상담 예약 10% DC 이벤트 쿠폰</h2>
		<br>사용은 결제 시 보여드리면 됩니다.
	</c:if>
		
	<c:if test="${member.m_r_coupon.equals('2')}">
		<h2><font color="red">★ 회원가입 기념 쿠폰 ★</font><br><br>오프라인 상담 예약 10% DC 이벤트 쿠폰</h2>
		<br>사용은 결제 시 보여드리면 됩니다.<br><br>--------------------------------------<br><br>
		<h2><font color="red">★ 온라인 예약 기념 쿠폰 ★</font><br><br>오프라인 상담 예약 5% DC 이벤트 쿠폰</h2>
		<br>사용은 결제 시 보여드리면 됩니다.
	</c:if>
	<br><br>-----------------------------------------------------------------------
	</div>
	</div>
</html>