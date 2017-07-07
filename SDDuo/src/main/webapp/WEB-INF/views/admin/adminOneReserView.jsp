<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<body>
<form name="form" action="" method="post">
<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <c:choose>
						<c:when test="${OneReserModel.pr_center eq '1'}">
                    		<h1 class="page-header">강남지점</h1>
                    	</c:when>
                    	<c:when test="${OneReserModel.pr_center eq '2'}">
                    		<h1 class="page-header">대구지점</h1>
                    	</c:when>
                    	<c:when test="${OneReserModel.pr_center eq '3'}">
                    		<h1 class="page-header">부산지점</h1>
                    	</c:when>
                    </c:choose>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><data-toggle="tab">개인예약
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="home">
                                    <div class="panel-body">
										<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
											<colgroup>
												<col width="25%">
												<col width="">
											</colgroup>
											
											<tbody>
												<tr class="odd gradeX">
													<th>센터</th>
													<td>
														<select name="pr_center" class="form-control" style="width: 20%;">
															<option value="1">서울센터</option>
															<option value="2">대구센터</option>
															<option value="3">부산센터</option>
														</select>
													</td>
												</tr>
												<tr class="odd gradeX">
													<th>예약날짜</th>
													<td>
														<input type="hidden" name="pr_year">
														<select id="year" name="pr_year" class="form-control" style="width: 20%; display: inline-block;">
															<option>- 선택하세요 -</option>
														</select>
														년&nbsp;&nbsp;

														<select name="pr_month" class="form-control"  style="width: 20%; display: inline-block;">
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select>
														월&nbsp;&nbsp;
														
														<select name="pr_day" class="form-control"  style="width: 20%; display: inline-block;">
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															<option value="12">12</option>
															
														</select>
														월&nbsp;&nbsp;
													</td>
												</tr>
												<tr class="odd gradeX">
													<th>예약시간</th>
													<td>
														<select name="pr_hour" class="form-control" style="width: 20%; display: inline-block;">
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
														</select>
														 시&nbsp;&nbsp;

														<select name="pr_minute" class="form-control"  style="width: 20%; display: inline-block;">
															<option value="00">00</option>
															<option value="30">30</option>
														</select>
														 분
													</td>
												</tr>
												<tr class="odd gradeX">
													<th>이름</th>
													<td><div class="tit"><span> ${OneReserModel.pr_name }</span></div></td>
												</tr>
												<tr class="odd gradeX">
													<th>핸드폰</th>
													<td width="63"><input type="text" value="" name="pr_phone1" style="width:65px;  height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">&nbsp;&nbsp;-&nbsp;&nbsp;
													<input type="text" value="" name="pr_phone2" style="width:65px;  height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">&nbsp;&nbsp;-&nbsp;&nbsp;
													<input type="text" value="" name="pr_phone1" style="width:65px;  height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;"></td>
												</tr>
												<tr class="odd gradeX">
													<th>상담사유</th>
													<td><div class="tit"><span> ${OneReserModel.pr_reason }</span></div></td>
												</tr>
											</tbody>
										</table>
										<!-- /.table-responsive -->
										<button type="button" onclick="return checkIt()" class="btn btn-outline btn-primary">저장</button>
									</div>
                        <!-- /.panel-body -->
									
                                </div>
                                <%-- <div class="tab-pane fade" id="profile">
                                    <div class="panel-body">
										<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
											<colgroup>
												<col width="25%">
												<col width="">
											</colgroup>
											
											<tbody>
												<tr class="odd gradeX">
													<th>센터</th>
													<td>
														<select class="form-control" style="width: 20%;">
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</td>
												</tr>
												<tr class="odd gradeX">
													<th>예약시간</th>
													<td>
														<select class="form-control" style="width: 20%; display: inline-block;">
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
														~

														<select class="form-control" style="width: 20%; display: inline-block;">
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</td>
												</tr>
												<tr class="odd gradeX">
													<th>이름</th>
													<td></td>
												</tr>
												<tr class="odd gradeX">
													<th>핸드폰</th>
													<td></td>
												</tr>
												<tr class="odd gradeX">
													<th>그룹명</th>
													<td></td>
												</tr>
												<tr class="odd gradeX">
													<th>아이디</th>
													<td></td>
												</tr>
												<tr class="odd gradeX">
													<th>대표번호</th>
													<td></td>
												</tr>
												<tr class="odd gradeX">
													<th>예약인원</th>
													<td>
														<select class="form-control" style="width: 20%;">
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
														</select>
													</td>
												</tr>
												<tr class="odd gradeX">
													<th>상담사유</th>
													<td></td>
												</tr>

												
											</tbody>
										</table>
										<!-- /.table-responsive -->
										<button type="button" onclick="oneModify()" class="btn btn-outline btn-primary">저장</button>
									</div>
                                </div>
                                --%>
                            </div>
							
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    </form>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../vendor/raphael/raphael.min.js"></script>
    <script src="../vendor/morrisjs/morris.min.js"></script>
    <script src="../data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
</body>
<script>
function checkIt() {
	 if(document.form.pr_center.value==""){
		 alert("센터를 선택해주세요.");
		 document.form.pr_center.focus();
		 return false;
	}else if(document.form.pr_hour.value==""){
		 alert("시간을 선택해주세요.");
		 document.form.pr_hour.focus();
		 return false;
	}else if(document.form.pr_minute.value==""){
		 alert("시간을 선택해주세요.");
		 document.form.pr_minute.focus();
		 return false;
	}else if(document.form.pr_phone1.value==""){
		 alert("핸드폰 번호를 입력해주세요.");
		 document.form.pr_phone1.focus();
		 return false;
	}else if(document.form.pr_phone2.value==""){
		 alert("핸드폰 번호를 입력해주세요.");
		 document.form.pr_phone2.focus();
		 return false;
	}else if(document.form.pr_phone3.value==""){
		 alert("핸드폰 번호를 입력해주세요.");
		 document.form.pr_phone3.focus();
		 return false;
	}
}

function appendYear(){

	   var date = new Date();

	   var year = date.getFullYear();

	   var selectValue = document.getElementById("year");

	   var optionIndex = 0;



	   for(var i=year-100;i<=year;i++){

	         selectValue.add(new Option(i+"년",i),optionIndex++);                        

	   }

	}
</script>