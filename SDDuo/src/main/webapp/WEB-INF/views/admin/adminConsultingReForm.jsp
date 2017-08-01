<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<div id="page-wrapper">
				<!-- <div class="col-lg-12">
             <h1 class="">온라인 상담 글쓰기</h1>	
             </div> -->
				<c:choose>
			<c:when test="${state.equals('modify')}">
				<div class="col-lg-12">
             <h1 class="">온라인 상담 글수정</h1>	
             </div>
				<spring:hasBindErrors name="consulting" />
				<form:errors path="consulting" /> 
				<form:form commandName="consulting" action="adminConsultingModifyPro.do">
					<table class="write-board01">
						<tbody>
							<tr>
								<th>이야기 제목</th>
								<td colspan="3"><%-- <input type="hidden" name="c_ref"
									value="${consultingmodel.c_ref }" />  --%>
									<input type="hidden" name="c_number" value="${consultingModmodel.c_number }"> 
									<input type="text" class="writetxt01" name="c_title" value="${consultingModmodel.c_title }" size="20" style="    width: 98%;    height: 35px;    border: 1px solid #f6f6f6;    padding-left: 10px;    margin-left: 10px;"> 
										
									<form:errors path="c_title" /></td>
							</tr>
							<%-- <c:if test="${session_member_id != 1 }">
							<tr>
								<th>비밀설정</th>
								<td>
									<input type="text" class="writetxt03" name="c_pass">
									비밀번호4자리 입력
								</td>
							</tr>
						 </c:if>  --%>
							<tr>


								<th>문의내용</th>
								<td colspan="3"><textarea class="writetxt04"
										name="c_content" style="    width: 98%;    height: 98%;    border: 1px solid #f6f6f6;    padding-left: 10px;    margin-left: 10px;">${consultingModmodel.c_content }</textarea> 
										<form:errors path="c_content" /></td>
							</tr>
						</tbody>
					</table>

					<!-- <div class="btn-area">
						<input type="submit" value="확인" class="submit"> <input
							type="button" value="취소" class="cancel">
					</div> -->
					<div class="menu-wrap" style="width: 150px; margin: 20px auto;">
							<button type="submit" class="btn btn-outline btn-primary" style="margin-right: 10px; " >확인</button>
							<button type="button" class="btn btn-primary" onclick="javascript:history.back();">취소</button>
						</div>
					
				</form:form>
			</c:when>
			<c:otherwise>
			<div class="col-lg-12">
             <h1 class="">온라인 상담 글쓰기</h1>	
             </div>
			<spring:hasBindErrors name="consulting" />
			<form:errors path="consulting" /> 
				<form:form commandName="consulting" action="adminConsultingRePro.do">
					<table class="write-board01">
						<tbody>
							<tr>
								<th>이야기 제목</th>
								<td colspan="3">
										<input type="hidden" name="c_ref" value="${consultingmodel.c_ref }" />
										<input type="hidden" name="c_number" value="${consultingmodel.c_number }">
										<input type="text" class="writetxt01" name="c_title" size="20" value="${consultingmodel.c_title }"  style="    width: 98%;    height: 35px;    border: 1px solid #f6f6f6;    padding-left: 10px;    margin-left: 10px;">
										<form:errors path="c_title" />
									</td>
							</tr>

							<tr>
								<th>문의내용</th>
								<td colspan="3"><textarea class="writetxt04"
										name="c_content" cols="30" rows="10" width="100%" style="    width: 98%;    height: 98%;    border: 1px solid #f6f6f6;    padding-left: 10px;    margin-left: 10px;"></textarea>
									<form:errors path="c_content" />
								<td>
							</tr>
						</tbody>
					</table>
					<div class="menu-wrap" style="width: 150px; margin: 20px auto;">
							<button type="submit" class="btn btn-outline btn-primary" style="margin-right: 10px; ">확인</button>
							<button type="button" class="btn btn-primary" onclick="javascript:history.back();">취소</button>
						</div>
					
					
				</form:form>
				</c:otherwise></c:choose>
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