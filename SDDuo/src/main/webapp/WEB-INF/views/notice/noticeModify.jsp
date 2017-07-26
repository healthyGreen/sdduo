<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    



<body>

    <div id="wrapper">
		<form:form commandName="noticeModel" name="form" action="noticeModifySuccess.do" enctype="multipart/form-data">
      	<input type="hidden" name="n_number" value="${noticeModel.n_number}" />

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
								<font color="red"><form:errors path="n_title" /></font>
							</td>
						</tr>
					</thead>
				
					<tbody>
						
						<tr><!-- 사용자 -->
							<th>사용자 ID</th>
							
							<td colspan=3>
								<strong>
									${session_member_id}
								</strong>
								
								<input type="hidden" name="n_name" value="${session_member_id}"/>
								
							</td> 
							
						</tr>
						
						<tr>
							<th>작성일</th>
							
							<td colspan=3>
								<fmt:formatDate value="${noticeModel.n_date}" pattern="yyyy.MM.dd"/>
								
							</td> 
							
						</tr>
						
						
						
							
						<tr><!-- 글내용 -->
							<th>글내용</th>
							<td colspan=3 height=600 style="padding: 0px !important;">
							   <textarea name="n_content" value="${noticeModel.n_content}"
							   		style="margin: 3px; width: 100%; height: 100%;">${noticeModel.n_content}</textarea> 
							   	<font color="red"><form:errors path="n_content" /></font>
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
							<button type="submit" onclick="checkIt()" class="btn btn-primary">확인</button>
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


<script type="text/javascript">

function reviewList() {
	if(confirm("목록으로 가시겠습니까?") == true){
		location.href='noticeList.do';
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