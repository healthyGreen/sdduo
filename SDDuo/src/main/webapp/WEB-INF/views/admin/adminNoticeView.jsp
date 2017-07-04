<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

    
<script type="text/javascript">
function noticeDelete() {
	alert("ì­ì íê² ìµëê¹?");
	location.href='noticeDelete.do?n_number=${noticeModel.n_number}';
}

var onModify = function(n_number){
	var form = $('.viewForm')[0];
	form.action = 'noticeModify.do?n_number='+n_number;
	form.submit();
};

var onList = function(){
	location.href='noticeList.do';
};

</script>


        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">ê³µì§ì¬í­ ê´ë¦¬</h1>
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
								<strong>ìì±ì</strong>
								<span>${noticeModel.n_name }</span>
								<span class="line"><img src="../resources/images/sub/line.jpg" class="vertical-m" alt=""></span>
								<strong>ìì±ì¼</strong>
								<span>
									<fmt:formatDate value="${noticeModel.n_date }" pattern="yyyy-MM-dd" />
								</span>
							</div>
						</td>
					</tr>
					<tr>
						<td class="dmc_content content">
							${noticeModel.n_content }
						</td>
					</tr>
					</tbody>
				</table>
				
				
			<div style="width: 140px; margin: 40px auto; ">
				<form class="viewForm" method="post">
				<input type="hidden" name="${noticeModel.n_number }" />
				<%-- <input type="hidden" name="seq" value="${item.seq }" /> --%>
					<button type="button" onclick="onModify(${noticeModel.n_number })" class="btn btn-outline btn-primary" style="margin-right: 10px; ">ìì </button>
					<button type="button" onclick="onList()" class="btn btn-outline btn-default">ëª©ë¡</button>
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

