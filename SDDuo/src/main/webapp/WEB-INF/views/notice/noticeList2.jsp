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
    <link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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

				</tbody>
				<tbody>
					<c:forEach var="list" items="${noticeList}">
						<c:url var="viewURL" value="noticeView.do" >
							<c:param name="n_number" value="${list.n_number }" />
						    <c:param name="currentPage" value="${currentPage }" />
						</c:url>
					<tr>
						<td>${list.n_number}</td>
						<td style="text-align:left;">
							<a href="${viewURL}">${list.n_title}</a>
						</td>
						<td>${list.n_name}</td> 
						<td><fmt:formatDate value="${list.n_date}" pattern="yyyy.MM.dd"/></td>
						<td>
							${list.n_hit}
						</td>
					</tr>
					</c:forEach>

				</tbody>
			</table>
			<div style="margin-top:40px; float: right;">
			
			<c:if test="${session_member_name == 'admin' }">
			<button type="button" onclick="onWrite()" class="btn btn-primary">글쓰기</button>
			</c:if>
			<button type="button" onclick="onList()" class="btn btn-primary">목록</button>
			
			</div>
            </div>
            <!-- /.row -->
            
            <c:if test="${fn:length(noticeList) le 0}">
				<br />
				<center>등록된 게시물이 없습니다</center>
				<br />
			</c:if>

		<div class="row">
			<div style="text-align: center;">
				<div id="dataTables-example_filter" class="dataTables_filter">

					<form action="">
						<select class="slcte" name="searchNum" id="searchNum">
							<option value="0">제목</option>
							<option value="1">내용</option>
						</select> <input class="txte" type="text" name="isSearch" id="isSearch" />
						<span class="btn btnC_03 btnP_04 mr10"> <input
							type="submit" value="검색"
							style="font-size: 11px; padding-bottom: 20; vertical-align: middle;" />
						</span>
					</form>
					
				</div>
			</div>
		</div>
		
		<div class="paging">
			${pagingHtml}
		</div>
            
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

<script type="text/javascript">

$('.searchOption').val($('.searchOptionVal').val());
var onWrite = function(){
	location.href = 'noticeWrite.do'; 
};
</script>

</html>