<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

   



<body>

    <div id="wrapper">

            
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
						<c:if test="${noticeModel.n_sav_image != null}">
						<img src="../resources/upload/${noticeModel.n_sav_image}" /><br>
						</c:if>
						${noticeModel.n_content }
						</td>
					</tr>
					</tbody>
				</table>
			
			<div style="width: 240px; margin: 40px auto; ">
				<form class="viewForm" method="post">
				<input type="hidden" name="${noticeModel.n_number }" />
				<%-- <input type="hidden" name="seq" value="${item.seq }" /> --%>
					<c:choose>
					<c:when test="${session_member_id == 'admin' }">
					<button type="button" onclick="onModify(${noticeModel.n_number })" class="btn btn-outline btn-primary" style="margin-right: 10px; ">수정</button>
					<button type="button" onclick="noticeDelete(${noticeModel.n_number })" class="btn btn-outline btn-primary" style="margin-right: 10px; ">삭제</button>
					<button type="button" onclick="adminOnList()" class="btn btn-outline btn-default">목록</button>
					</c:when>
					
					<c:otherwise>
					<button type="button" onclick="onList()" class="btn btn-outline btn-default">목록</button>
					</c:otherwise>
					</c:choose>
				</form>	
			</div>
							
				
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
	location.href='NoticeList.do';
};


var adminOnList = function(){
	location.href='adminNoticeList.do';
};

</script>
