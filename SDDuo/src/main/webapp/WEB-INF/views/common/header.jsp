<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="wrapper">
			<div class="header">
				<div class="dimd"></div>
				
				<div class="header-inbox clear">
					<div class="header-top">
						<h1><a href="/SDDuo/main.do"><img src="/SDDuo/resources/images/common/logo.gif" alt="로고"></a></h1>
						<ul class="right-area">
							<c:choose>
                        <c:when test="${session_admin == 0}"> 
                           <li>${session_member_name}님 환영합니다!
                           <li><a href="<%=request.getContextPath() %>/member/myInfoView.do" >마이페이지</a>
                           <li><a href="<%=request.getContextPath() %>/member/logout.do" >로그아웃</a>
                        </c:when>
                        <c:when test="${session_admin == 1}"> 
                           <li>${session_member_name} (관리자)님 환영합니다!
                           <li><a href="<%=request.getContextPath() %>/AdminReserve/OneReserList.do" >관리자페이지</a>
                           <li><a href="<%=request.getContextPath() %>/member/logout.do" >로그아웃</a>
                        </c:when>
                        <c:otherwise>
                           <li><a href="<%=request.getContextPath() %>/member/agree.do" >회원가입</a>
                           <li><a href="<%=request.getContextPath() %>/member/loginForm.do" >로그인</a>
                        </c:otherwise>
                     </c:choose>
						</ul>
					</div>
					<div class="header-bottom head_box" >
						<!-- gnb 시작 -->
					    <div id="gnb" class="pc_gnb nav">
							<ul id="nav">
								<li class="has-sub g1"><a href="<%=request.getContextPath() %>/member/about.do"><img src="/SDDuo/resources/images/common/gnb01.gif">상담해듀오소개</a>
								</li>
								<li class="has-sub g2"><a>상담예약</a>
									<div class="dropdown dropdown1">
										<ul>
											<li><a href="<%=request.getContextPath() %>/Reserve/OneReserveForm.do">개인예약</a></li>
			                                <li><a href="<%=request.getContextPath() %>/Reserve/GroupReserveForm.do">그룹예약</a></li>
			                                <li><a href="<%=request.getContextPath() %>/Reserve/OneReserList.do">예약현황</a></li>
										</ul>
									</div>
								</li>
								<li class="has-sub g3"><a>온라인상담</a>
									<div class="dropdown dropdown1">
										<ul>
											<li><a href="<%=request.getContextPath() %>/consulting/consultingList.do">온라인 상담 리스트</a></li>
			                                <li><a href="<%=request.getContextPath() %>/consulting/consultingForm.do">온라인 상담</a></li>
										</ul>
									</div>
								<li class="has-sub g4"><a href="<%=request.getContextPath() %>/self/selfWrite.do">심리검사</a></li>
								<li class="has-sub g5"><a>커뮤니티</a>
									<div class="dropdown dropdown2">
										<ul>
										<c:choose>
                       						 <c:when test="${session_admin == 1}"> 
                       						 <li><a href="<%=request.getContextPath() %>/admin/adminNoticeList.do">공지사항</a></li>
											</c:when>
											<c:otherwise>
											<li><a href="<%=request.getContextPath() %>/notice/NoticeList.do">공지사항</a></li>	
                       						 </c:otherwise>
										</c:choose>										
										</ul>
									</div>
								</li>
							</ul>
						</div>
					<!-- //gnb 끝 -->
					</div>
				</div>
			</div>