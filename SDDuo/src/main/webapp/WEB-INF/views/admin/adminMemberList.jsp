<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 


        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">온라인상담 관리</h1>
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
						<tr>
							<td>1</td>
							<td>gkdjlk</td>
							<td>신희진</td>
							<td>010-5555-5555</td>
							<td>여자</td>
							<td>경기도 가평군 청평면 골안길 경남아너스빌</td>
						</tr>
						<tr>
							<td>1</td>
							<td>gkdjlk</td>
							<td>신희진</td>
							<td>010-5555-5555</td>
							<td>여자</td>
							<td>경기도 가평군 청평면 골안길 경남아너스빌</td>
						</tr>
						
					</tbody>
				</table>
			
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
