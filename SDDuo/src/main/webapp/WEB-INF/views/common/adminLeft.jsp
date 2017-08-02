<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            
           

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                	 <div align="center">
                        	<h1><a href="/SDDuo/main.do"><img src="/SDDuo/resources/images/common/logo.jpg" alt="로고"></a></h1>
	                        <c:choose>
	                        <c:when test="${session_admin == 1}">
	                           <span style="   color: #999;    font-size: 11px;    margin-top: 10px; ">${session_member_name} (관리자)님 환영합니다!</span>
	                           <a href="<%=request.getContextPath() %>/member/logout.do"  style="color: #666; font-size: 11px;" >로그아웃</a>
	                        </c:when>
	                        </c:choose>
	                        
                        </div>
                    <ul class="nav" id="side-menu" style="    margin-top: 21px;    border-top: 1px solid #e7e7e7;">
                       
                         
                         
                      	
                        <li>
                            <a href="http://localhost:8080/SDDuo/AdminReserve/OneReserList.do?pr_center=1"><i class="fa fa-dashboard fa-fw"></i>&nbsp예약 관리<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
                                <li>
                                    <a href="http://localhost:8080/SDDuo/AdminReserve/OneReserList.do?pr_center=1">강남지점</a>
                                </li>
                                <li>
                                    <a href="http://localhost:8080/SDDuo/AdminReserve/OneReserList.do?pr_center=2">대구지점</a>
                                </li>
								<li>
                                    <a href="http://localhost:8080/SDDuo/AdminReserve/OneReserList.do?pr_center=3">부산지점</a>
                                </li>
	
                            </ul>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/admin/adminConsultingNoReplyList.do"><i class="fa fa-bar-chart-o fa-fw"></i>&nbsp온라인상담 관리</a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="<%=request.getContextPath()%>/admin/adminConsultingNoReplyList.do">답글 대기</a>
                                </li>
                                <li>
                                    <a href="<%=request.getContextPath()%>/admin/adminConsultingReplyOkList.do">답글 확인</a>
                                </li>
								<li>
                                    <a href="<%=request.getContextPath()%>/admin/adminConsultingList.do">전체 글</a>
                                </li>
							</ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/admin/adminNoticeList.do"><i class="fa fa-table fa-fw"></i>&nbsp공지사항 관리</a>
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/admin/adminMemberList.do"><i class="fa fa-edit fa-fw"></i>&nbsp회원 관리</a>
                        </li>
                       
                       
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>