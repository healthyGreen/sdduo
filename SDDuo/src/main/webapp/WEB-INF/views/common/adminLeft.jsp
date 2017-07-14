<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            
           

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <div align="center">
                        <h1><a href="/SDDuo/main.do"><img src="/SDDuo/resources/images/common/logo.gif" alt="로고"></a></h1></div>
                           <!--  <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                             </div> -->
                            <!-- /input-group -->
                      	<br>
                        <li>
                            <a href="http://localhost:8080/SDDuo/AdminReserve/OneReserList.do?pr_center=1"><i class="fa fa-dashboard fa-fw"></i>&nbsp예약 관리<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
                                <li>
                                    <a href="http://localhost:8080/SDDuo/AdminReserve/OneReserList.do?pr_center=1">서울지점</a>
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
                                    <a href="<%=request.getContextPath()%>/admin/adminConsultingNoReplyList.do">답글 대기중 글들</a>
                                </li>
                                <li>
                                    <a href="<%=request.getContextPath()%>/admin/adminConsultingReplyOkList.do">답글 확인된 글들</a>
                                </li>
								<li>
                                    <a href="<%=request.getContextPath()%>/admin/adminConsultingList.do">전체 글들</a>
                                </li>
							</ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="<%=request.getContextPath()%>/admin/adminNoticeList.do"><i class="fa fa-table fa-fw"></i>&nbsp공지사항 관리</a>
                        </li>
                        <li>
                            <a href=""><i class="fa fa-edit fa-fw"></i>&nbsp회원 관리</a>
                        </li>
                       
                       
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>