<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>상담해듀오 admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="/rainbow/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/rainbow/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/rainbow/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="/rainbow/resources/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/rainbow/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            
           

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href=""><i class="fa fa-dashboard fa-fw"></i>&nbsp예약 관리<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
                                <li>
                                    <a href="reser1.html">강남지점</a>
                                </li>
                                <li>
                                    <a href="reser2.html">대구지점</a>
                                </li>
								<li>
                                    <a href="reser3.html">부산지점</a>
                                </li>
	
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>&nbsp온라인상담 관리</a>
                            
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="fa fa-table fa-fw"></i>&nbsp공지사항 관리</a>
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

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">공지사항 관리</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="resev-box">
					<p class="listnum">총 <span>3</span>건 1/1</p>
					<form name="frmCommonList" method="post">
					<p class="search-area">
						<select name="search_gubun">
							<option value="" selected="">전체</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
						</select>
						<input type="text" name="search" maxlength="20" value="" class="noticebox">
						<input type="button" value="검색" onclick="searchList(document.frmCommonList);" class="noticebtn">
					</p>
					</form>
				</div>
				<table class="list-board01">
				<colgroup>
					<col width="110px">
					<col width="">
					<col width="137px">
					<col width="137px">
					<col width="150px">
				</colgroup>
				<tbody>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>

					<tr>
						<td>1</td>
						<td class="subject"><img src="/images/sub/notice_icon.gif">&nbsp;<a href="./sub0203_view.html?idx=10">마이스토리 심리상담센터 홈페이지 GRAND OPEN</a></td>
						<td>마이스토리</td>
						<td>2016-04-20</td>
						<td>245</td>
					</tr>

					<tr>
						<td>2</td>
						<td class="subject"><a href="./sub0203_view.html?idx=3">마이스토리 상담사 윤리규정</a></td>
						<td>마이스토리</td>
						<td>2016-03-08</td>
						<td>445</td>
					</tr>

					<tr>
						<td>3</td>
						<td class="subject"><a href="./sub0203_view.html?idx=1">초기상담  예약금 및 환불규정</a></td>
						<td>마이스토리</td>
						<td>2016-03-02</td>
						<td>647</td>
					</tr>

				</tbody>
			</table>
			<div style="margin-top:40px; float: right;"><button type="button" class="btn btn-outline btn-primary">글쓰기</button></div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="/rainbow/resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/rainbow/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="/rainbow/resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="/rainbow/resources/vendor/raphael/raphael.min.js"></script>
    <script src="/rainbow/resources/vendor/morrisjs/morris.min.js"></script>
    <script src="/rainbow/resources/data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="/rainbow/resources/dist/js/sb-admin-2.js"></script>

</body>

</html>