


<script type="text/javascript">

function reviewList() {
	if(confirm("목록으로 가시겠습니까?") == true){
		location.href='adminNoticeList.do';
	}else {
		return;
	}
}

function checkIt() {
    var userinput = eval("document.userinput");
    
    if(!userinput.n_title.value) {
        alert("제목을 입력하세요");
        return false;
    }
   
    if(!userinput.n_content.value ) {
        alert("내용을 입력하세요");
        return false;
    }
     
}

</script>





		<form:form commandName="noticeModel" action="adminNoticeWrite.do" enctype="multipart/form-data"	method="post">
        <!-- Navigation -->
        

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
							
							<%-- <td colspan=3>
								<strong>
									${session_member_name}
								</strong>
							</td> --%>
							
							<td colspan=3>
							<input type="textarea" name="n_name" value="${noticeModel.n_name}">
							<font color="red"><form:errors path="n_name" /></font>
							</td>
						</tr>
							
						<tr><!-- 글내용 -->
							<th>글내용</th>
							<td colspan=3 height=600 style="padding: 0px !important;">
							   <textarea  name="n_content" id="n_content" style=" padding:3px; margin: 1px; width: 100%; height: 98%;"></textarea>
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
					<div style="width: 125px; margin: 40px auto; ">
						<button type="submit" onclick="checkIt();" class="btn btn-outline btn-primary" style="margin-right: 10px; ">확인</button>
						<button type="button" onclick="reviewList();" class="btn btn-outline btn-default">취소</button>
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




