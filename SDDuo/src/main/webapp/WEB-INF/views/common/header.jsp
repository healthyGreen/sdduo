<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="wrapper">
			<div class="header">
				
				<div class="header-inbox">
					<div class="header-top">
						<h1><a href="main.do"><img src="./resources/images/common/logo.gif" alt="로고"></a></h1>
						<ul class="right-area">
							<c:choose>
                        <c:when test="${session_admin == 0}"> 
                           <li>${session_member_name}님 환영합니다!
                           <li><a href="<%=request.getContextPath() %>/member/myInfoView.do" >마이페이지</a>
                           <li><a href="<%=request.getContextPath() %>/member/logout.do" >로그아웃</a>
                        </c:when>
                        <c:when test="${session_admin == 1}"> 
                           <li>${session_member_name} (관리자)님 환영합니다!
                           <li><a href="/<%=request.getContextPath() %>/AdminReserve/adminOneReserList.do" >관리자페이지</a>
                           <li><a href="/<%=request.getContextPath() %>/member/logout.do" >로그아웃</a>
                        </c:when>
                        <c:otherwise>
                           <li><a href="<%=request.getContextPath() %>/member/joinForm.do" >회원가입</a>
                           <li><a href="<%=request.getContextPath() %>/member/loginForm.do" >로그인</a>
                        </c:otherwise>
                     </c:choose>
						</ul>
					</div>
					<div class="header-bottom" >
						<!-- gnb 시작 -->
					    <div id="gnbarea">

                     <ul class="gnb clear">
                       <li class="li01"><a href="about.do"><img src="../resources/images/common/gnb01.gif">상담해듀오소개</a></li>
                       <li class="li02"><a href="oneReserForm.do">상담예약</a>
                         <div class="subWrap sub02">
                           <ul>
                               <li><a href="<%=request.getContextPath() %>/Reserve/oneReserForm.do">개인예약</a></li>
                               <li><a href="<%=request.getContextPath() %>/Reserve/groupReserForm.do">그룹예약</a></li>
                               <li><a href="<%=request.getContextPath() %>/Reserve/oneReserList.do">예약현황</a></li>
               
                           </ul>
                         </div>
                       </li>
                       <li class="li03"><a href="<%=request.getContextPath() %>/consulting/consultingList.do">온라인상담</a></li>
                       <li class="li04"><a href="">심리검사</a> </li>
                       <li class="li05"><a href="" class="last">심리치료</a></li>
                       <li class="li06"><a href="" class="last">커뮤니티</a>
                         <div class="subWrap sub06">
                           <ul>
                              <li><a href="<%=request.getContextPath() %>/admin/adminNoticeList.do">공지사항</a></li>
                           </ul>
                         </div>
                       </li>
                     </ul>
                   </div>

					<!-- //gnb 끝 -->
					</div>
				</div>
			</div>