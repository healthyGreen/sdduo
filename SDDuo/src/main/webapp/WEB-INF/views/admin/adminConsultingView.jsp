<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript">
	function deletOk() {
		if(confirm("삭제하시겠습니까?")){
			window.location.href='adminConsultingDeletePro.do?c_number=${consultingmodel.c_number}&c_ref=${consultingmodel.c_ref}';
		}else{
			alert("취소되었습니다.");
		}
	}
</script>
<html>
<body>
<div id="page-wrapper">
            <div class="row">
             <div class="col-lg-12">
             <h1 class="">온라인 상담</h1>	
             </div>
			
						
					</div>
					<table width="100%" class="view-board01">
						<colgroup>
							<col width="" />
						</colgroup>
						<thead>
						<tr>
							<th scope="col">
								<div class="tit">${consultingmodel.c_title }</div>
							</th>
							<th></th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>
								<div class="board-infor">
									<strong>작성자</strong>
									<span>${ consultingmodel.m_id}</span>
									<span class="line"><img src="/SDDuo/resources/images/sub/line.jpg" class="vertical-m"  alt="" /></span>
									<strong>작성일</strong>
									<span><fmt:formatDate value="${consultingmodel.c_date}" pattern="yyyy.MM.dd"/></span>
							
								</div>
							</td>
						</tr>
						<tr>
							<td class="dmc_content content">
								
${consultingmodel.c_content }
							</td>
						</tr>
						
					</tbody>
				</table>
					<div class="viewbtn" style="float:right">
				<%-- 	<c:if test="${session_admin!=1}"> --%>
							<c:url var="replyURL" value="adminConsultingReply.do">
								<c:param name="c_ref" value="${consultingmodel.c_ref }"/>
								<c:param name="c_number" value="${consultingmodel.c_number }"/>
								<%-- <c:param name="c_re_status" value="${consultingmodel.c_re_status }"/> --%>
							</c:url>
						 <c:if test="${consultingmodel.c_re_status=='1' }"> 
						 	<button type="button" onclick="location.href='${replyURL}'" class="btn btn-outline btn-primary" style="margin-right: 10px; ">답변달기</button>
							
						</c:if>				

 			<%-- 	</c:if> --%>
						<%-- <p ><input type="button" value="목록" onclick="location.href='<%=request.getContextPath() %>/admin/adminConsultingList.do'" class="btn01 list"></p> --%>
						 
						<div class="area">
							<input type="button" value="수정" onclick="location.href='<%=request.getContextPath() %>/admin/adminConsultingModify.do?c_number=${consultingmodel.c_number }'" class="btn btn-outline btn-primary" style="margin-right: 10px; ">
							<input type="button" value="삭제" onclick="javascript:deletOk();" class="btn btn-outline btn-primary" style="margin-right: 10px; ">
						<%-- 	<p class="btn02"><input type="button" value="삭제" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingDeletePro.do?c_number=${consultingmodel.c_number }'"></p> --%>
						</div>
						
					</div>
				</div>
				
				
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