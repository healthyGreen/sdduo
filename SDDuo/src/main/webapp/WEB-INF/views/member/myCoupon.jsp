<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<div class="sub-top">
						<h2>쿠폰함</h2>
					</div>
					<div class="sub-cont clear">
						<div class="">
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
							<div class="rightbox">
								<div align="center">
									<c:if test="${member.m_r_coupon.equals('1')}">
										<table class="list-board01">
											<tr>
												<th>쿠폰이름</th>
												<th>지급상품</th>
											</tr>
											<tr>
												<td>회원가입 기념 쿠폰</td>
												<td>오프라인 상담 예약 10% DC 이벤트 쿠폰</td>
											</tr>
										</table>
									</c:if>
										
									<c:if test="${member.m_r_coupon.equals('2')}">
										<table class="list-board01">
											<tr>
												<th>쿠폰이름</th>
												<th>지급상품</th>
											</tr>
											<tr>
												<td>회원가입 기념 쿠폰</td>
												<td>오프라인 상담 예약 10% DC 이벤트 쿠폰</td>
											</tr>
											<tr>
												<td>온라인 예약 기념 쿠폰</td>
												<td>오프라인 상담 예약 5% DC 이벤트 쿠폰</td>
											</tr>
										</table>
										
									</c:if>
						
								</div>
							</div>
	</div>
</html>