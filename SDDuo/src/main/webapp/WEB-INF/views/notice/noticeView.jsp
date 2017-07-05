<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>상담해듀오 admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="../resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../resources/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
<script type="text/javascript">
function noticeDelete() {
	alert("삭제하겠습니까?");
	location.href='adminNoticeDelete.do?n_number=${noticeModel.n_number}';
}

var onModify = function(n_number){
	var form = $('.viewForm')[0];
	form.action = 'adminNoticeModify.do?n_number='+n_number;
	form.submit();
};

var onList = function(){
	location.href='adminNoticeList.do';
};

</script>

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
                            <a href='noticeList.do'><i class="fa fa-table fa-fw"></i>&nbsp공지사항 관리</a>
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
				<table width="100%" class="view-board01">
					<colgroup>
						<col width="">
					</colgroup>
					<thead>
					<tr>
						<th scope="col">
							<div class="tit"><span> ${noticeModel.n_title }</span></div>
						</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td>
							<div class="board-infor">
								<strong>작성자</strong>
								<span>${noticeModel.n_name }</span>
								<span class="line"><img src="../resources/images/sub/line.jpg" class="vertical-m" alt=""></span>
								<strong>작성일</strong>
								<span>
									<fmt:formatDate value="${noticeModel.n_date }" pattern="yyyy-MM-dd" />
								</span>
							</div>
						</td>
					</tr>
					<tr>
						<td class="dmc_content content">
						<img src="../resources/upload/${noticeModel.n_sav_image}" alt="이미지가 없습니다" /><br>
						${noticeModel.n_content }
						</td>
					</tr>
					</tbody>
				</table>
			
			<div style="width: 240px; margin: 40px auto; ">
				<form class="viewForm" method="post">
				<input type="hidden" name="${noticeModel.n_number }" />
				<%-- <input type="hidden" name="seq" value="${item.seq }" /> --%>
					<button type="button" onclick="onModify(${noticeModel.n_number })" class="btn btn-outline btn-primary" style="margin-right: 10px; ">수정</button>
					<button type="button" onclick="noticeDelete(${noticeModel.n_number })" class="btn btn-outline btn-primary" style="margin-right: 10px; ">삭제</button>
					<button type="button" onclick="onList()" class="btn btn-outline btn-default">목록</button>
				</form>	
			</div>
							<!--  	<c:if test="${session_member_id == 'admin' }">	</c:if>-->
				
            </div>    
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../resources/vendor/raphael/raphael.min.js"></script>
    <script src="../resources/vendor/morrisjs/morris.min.js"></script>
    <script src="../resources/data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../resources/dist/js/sb-admin-2.js"></script>

</body>

</html>