<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 


        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="">회원 관리</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="resev-box">
					<p class="listnum">총 <span>3</span>건 1/1</p>
				</div>
				
				<table class="list-board01">
					<caption>상담문의 리스트</caption>
					<colgroup>
						<col width="5%"/>
						<col width="10%"/>
						<col width="10%"/>
						<col width="20%"/>
						<col width="10%"/>
						<col />
					</colgroup>
					<tbody>
						<tr>
							<th>번호</th>
							<th>아이디</th>
							<th>이름</th>
							<th>전화번호</th>
							<th>성별</th>
							<th>주소</th>
						</tr>
						<c:forEach var="memberList" items="${memberList}" varStatus="stat">
							<tr>
								<td>${memberList.m_number}</td>
								<td>${memberList.m_id}</td>
								<td>${memberList.m_name}</td>
								<td>${memberList.m_phone1}-${memberList.m_phone2}-${memberList.m_phone3}</td>
								<td>${memberList.m_sex}</td>
								<td>${memberList.m_add1}<br/>${memberList.m_add2} </td>
							</tr>
							
						</c:forEach>
						<c:if test="${fn:length(memberList) le 0}">
							<tr><td colspan="6" style="text-align:center;">회원이 없습니다.</td></tr>
						</c:if> 
					</tbody>
				</table>
				<form name="frmCommonList">
					<p class="search-area"style="width: 337px;    margin: 50px auto;">
						<select name="searchNum" id="searchNum" style="border: 1px solid #ccc; border-radius: 0px;">
							<option value="0">이름</option>
						</select>
						<input style="border: 1px solid #ccc;  height: 39px;    width: 215px;    padding-left: 10px;" type="text" name="isSearch" id="isSearch" maxlength="20" value="" class="noticebox">
						<input type="submit" value="검색"  class="noticebtn" style=" height: 39px; background: #333; color:#fff; border: none; width: 60px; ">
						
					</p>
				</form>
				<div class="pageing">
					${pagingHtml}
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

</html>
