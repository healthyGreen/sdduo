<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">

function reviewList() {
	if(confirm("목록으로 가시겠습니까?") == true){
		location.href='adminNoticeList.do';
	}else {
		return;
	}
}

function checkIt() {
	 if(document.form.n_title.value==""){ //제목값이 없을 경우
		 alert("제목을 입력하세요");         //메세지 경고창을 띄운 후
		 document.form.n_title.focus();     // 제목 텍스트박스에 커서를 위치
		 return false;
	}else if(document.form.n_content.value==""){
		 alert("내용을 입력하세요");
		 document.form.n_content.focus();
		 return false;
		 }
}

</script>


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

</head>

<body>

    <div id="wrapper">
		<form:form commandName="noticeModel" name="form" action="adminNoticeModifySuccess.do" enctype="multipart/form-data" method="post" onSubmit="return checkIt()">
      	<input type="hidden" name="n_number" value="${noticeModel.n_number}" />
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
                            <a href='noticeList.do'><i class="fa fa-edit fa-fw"></i>&nbsp회원 관리</a>
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
			<table class="write-board01">
				
				<thead>
						<tr class="danger" >
							<th width="100">글제목</th>
							<td colspan=3>
								<input type="textarea" name="n_title" id="n_title" value="${noticeModel.n_title}"/>
							</td>
						</tr>
					</thead>
				
					<tbody>
						
						<tr><!-- 사용자 -->
							<th>사용자 ID</th>
							
							<td colspan=3>
								<%-- <strong>
									${session_member_name}
								</strong>--%>
								
								<input type="textarea" name="n_name" value="${noticeModel.n_name}"/>
								
							</td> 
							
						</tr>
						
						
						
						<tr>
							<td colspan=3>
								<strong>작성일</strong>
							</td>
							<td>
								<fmt:formatDate value="${noticeModel.n_date}" pattern="yyyy.MM.dd"/>
							</td>
						</tr>
						
							
						<tr><!-- 글내용 -->
							<th>글내용</th>
							<td colspan=3 height=600 style="padding: 0px !important;">
							   <textarea name="n_content" value="${noticeModel.n_content}"
							   		style="margin: 3px; width: 100%; height: 100%;">${noticeModel.n_content}</textarea> 
							</td>
						</tr>
						
						<tr>
							<th width="100">현재 이미지 </th>
							<td colspan=3>
								<c:if test="${!empty noticeModel.n_sav_image}">
                            		<img src="../resources/upload/${noticeModel.n_sav_image}" width="100" height="100" alt=""  /><input type="hidden"  name="n_sav_image" value="${noticeModel.n_sav_image}">
                           		</c:if>
                           	</td>
						</tr>
							
						<tr><!-- 파일 -->
							<th>파일</th>
							<td colspan=3>
								<input type="file" name="file" value="${noticeModel.n_sav_image}"/>
							</td>	
						</tr>
	
					</tbody>
				</table>
					<!-- 취소 작성완료 버튼 -->
						<div class="menu-wrap">
							<button type="submit"  class="btn btn-primary">확인</button>
							<button type="button" onclick="reviewList();" class="btn btn-primary">목록</button>
						</div>
            	</div>    
            <!-- /.row -->
            </form:form>
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