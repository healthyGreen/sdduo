<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="wrapper">
			<div class="header">
				<div class="dimd"></div>
				
				<div class="header-inbox clear">
					<div class="header-top">
						<h1><a href="/SDDuo/main.do"><img src="/SDDuo/resources/images/common/logo.jpg" alt="로고"></a></h1>
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
								<li class="has-sub g1"><a><img src="/SDDuo/resources/images/common/gnb01.jpg">상담해듀오소개</a>
								
								<div class="dropdown dropdown3">
										<div class="clear"  style=" width: 1100px; margin: 0 auto;">
											<ul class="clear" style="    width: 282px;    margin-left: 60px;">
												<li><a href="<%=request.getContextPath() %>/member/about.do">사이트 소개</a></li>
												<li><a href="<%=request.getContextPath() %>/Introduce.do">선생님 소개</a></li>	
											</ul>
										</div>
									</div>
								
								</li>
								<li class="has-sub g2"><a>상담예약</a>
									<div class="dropdown dropdown1">
										<div class="clear" style=" width: 1100px; margin: 0 auto;">
											<ul class="clear" style="    width: 355px;    margin-left: 177px;">
												<li><a href="<%=request.getContextPath() %>/Reserve/OneReserveForm.do">개인예약</a></li>
				                                <li><a href="<%=request.getContextPath() %>/Reserve/GroupReserveForm.do">그룹예약</a></li>
				                                <li><a href="<%=request.getContextPath() %>/Reserve/OneReserList.do">개인예약현황</a></li>
				                                <li><a href="<%=request.getContextPath() %>/Reserve/GrReserList.do">그룹예약현황</a></li>
											</ul>
										</div>
									</div>
								</li>
								<li class="has-sub g3"><a href="<%=request.getContextPath() %>/consulting/consultingList.do">온라인상담</a>		
								<li class="has-sub g4"><a href="<%=request.getContextPath() %>/self/selfWrite.do">심리검사</a></li>
								<li class="has-sub g5"><a>커뮤니티</a>
									<div class="dropdown dropdown2">
										<div class="clear"  style=" width: 1100px; margin: 0 auto;">
											<ul class="clear" style="    width: 182px;    margin-left: 910px;">

												<li><a href="<%=request.getContextPath() %>/notice/noticeList.do">공지사항</a></li>
												<li><a href="<%=request.getContextPath() %>/notice/Faq.do">자주하는 질문</a></li>	
								
											</ul>
										</div>
									</div>
								</li>
							</ul>
						</div>
					<!-- //gnb 끝 -->
					</div>
				</div>
			</div>