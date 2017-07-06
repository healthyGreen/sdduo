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

<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>REVIEW</title> 
</head>
<body>

<div class="category_top">
   <ul>
       <li class="post1">커뮤니티</li><li>></li><li class="post2">구매후기</li>         
   </ul>
</div>

<div id="wrapper">
<form:form commandName="noticeModel" name="form" action="adminNoticeModifySuccess.do" enctype="multipart/form-data" method="post" onSubmit="return checkIt()">
      <input type="hidden" name="n_number" value="${noticeModel.n_number}" />
      <div id="page-wrapper">
         <div class="row">
            <div class="col-lg-12">
				<h3 class="page-header">REVIEW 수정</h3>
				<table class="table table-striped table-bordered table-hover"  id="dataTables-example">
					<caption>번호,제목,글쓴이,날짜,조회를 나타내는 공지사항 표</caption>
					
					<thead>
						<tr class="danger" >
							<th width="100">글제목</th>
							<td colspan=3>
								<input type="textarea" name="n_title" value="${noticeModel.n_title}"/>
							</td>
						</tr>
					</thead>
					
					<tbody>
						<tr><!-- 사용자 -->
							<th>사용자 ID</th>
							<td>
								<%-- <strong>
									${session_member_name }
								</strong> --%>
								
								<input type="textarea" name="n_name" value="${noticeModel.n_name}"/>
								
							</td>
							
							<td>
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
			</div>
		</div>
	</div>
		
		<div class="row">
            <div class="col-lg-12">
            	<div class="panel panel-default">	
					
				
				
				<!-- 취소 작성완료 버튼 -->
				<div class="menu-wrap">
					<button type="submit"  class="btn btn-primary">확인</button>
					<button type="button" onclick="reviewList();" class="btn btn-primary">목록</button>
				</div>
				<!-- 취소 작성완료 버튼 -->
				</div>
				</div></div>
			 </form:form>
				
				<br/>
				<br/>
				<br/>
				<br/>
				</div>
				
				
				
			
			
	<!-- </div>
	
	</div>
	
</div> -->

</body>
</html>