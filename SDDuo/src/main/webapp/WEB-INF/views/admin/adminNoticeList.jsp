<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<script type="text/javascript">

$('.searchOption').val($('.searchOptionVal').val());
var onWrite = function(){
	location.href = 'noticeWrite.do'; 
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

  
                <div class="resev-box">
					<p class="listnum">ì´ <span>3</span>ê±´ 1/1</p>
					<form name="frmCommonList" method="post">
					<p class="search-area">
						<select name="search_gubun">
							<option value="" selected="">ì ì²´</option>
							<option value="title">ì ëª©</option>
							<option value="content">ë´ì©</option>
						</select>
						<input type="text" name="search" maxlength="20" value="" class="noticebox">
						<input type="button" value="ê²ì" onclick="searchList(document.frmCommonList);" class="noticebtn">
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
						<th>ë²í¸</th>
						<th>ì ëª©</th>
						<th>ìì±ì</th>
						<th>ìì±ì¼</th>
						<th>ì¡°íì</th>
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
			
			<%-- <c:if test="${session_member_name == 'admin' }">
			<button type="button" onclick="onWrite()" class="btn btn-primary">ê¸ì°ê¸°</button>
			</c:if> --%>
			<button type="button" onclick="onWrite()" class="btn btn-primary">ê¸ì°ê¸°</button>
			
			<button type="button" onclick="onList()" class="btn btn-primary">ëª©ë¡</button>
			
			</div>
            </div>
            <!-- /.row -->
            
            <c:if test="${fn:length(noticeList) le 0}">
				<br />
				<center>ë±ë¡ë ê²ìë¬¼ì´ ììµëë¤</center>
				<br />
			</c:if>

		<div class="row">
			<div style="text-align: center;">
				<div id="dataTables-example_filter" class="dataTables_filter">

					<form action="">
						<select class="slcte" name="searchNum" id="searchNum">
							<option value="0">ì ëª©</option>
							<option value="1">ë´ì©</option>
						</select> <input class="txte" type="text" name="isSearch" id="isSearch" />
						<span class="btn btnC_03 btnP_04 mr10"> <input
							type="submit" value="ê²ì"
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

