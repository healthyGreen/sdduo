<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<body>
<form name="form" action="OneReserModifyPro.do" method="post">
<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <c:choose>
						<c:when test="${OneReserModel.pr_center eq '1'}">
                    		<h1 class="">강남지점</h1>
                    	</c:when>
                    	<c:when test="${OneReserModel.pr_center eq '2'}">
                    		<h1 class="">대구지점</h1>
                    	</c:when>
                    	<c:when test="${OneReserModel.pr_center eq '3'}">
                    		<h1 class="">부산지점</h1>
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
                            <ul class="nav ">
                                <li class="active" style="font-size: 20px; padding-left: 14px; ">개인예약
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
                                       <input type="hidden" name="pr_number" value="${OneReserModel.pr_number }">
                                          <select id="pr_center" name="pr_center" class="form-control" style="width: 20%;">
                                             <option value="1" ${OneReserModel.pr_center eq "1" ? "selected" :""}>서울센터</option>
                                             <option value="2" ${OneReserModel.pr_center eq "2" ? "selected" :""}>대구센터</option>
                                             <option value="3" ${OneReserModel.pr_center eq "3" ? "selected" :""}>부산센터</option>
                                          </select>
                                       </td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <th>예약날짜</th>
                                       <td>
                                          <select id="pr_year" name="pr_year" class="form-control" style="width: 20%; display: inline-block;">
                                          <option value="${OneReserModel.pr_year}">${OneReserModel.pr_year}</option>
                                             <%for(int i=2017; i<=2027; i++){ %>
                                             <%int from = 'i';
                                             String to = Integer.toString(from); %>
                                             
                                             <option value="<%=i%>"><%=i %></option>
                                             <%} %>
                                             <%-- <option value="2017" ${OneReserModel.pr_year eq "2017" ? "selected" :""}>2017</option>
                                             <option value="2018" ${OneReserModel.pr_year eq "2018" ? "selected" :""}>2018</option>
                                             <option value="2019" ${OneReserModel.pr_year eq "2019" ? "selected" :""}>2019</option>
                                             <option value="2020" ${OneReserModel.pr_year eq "2020" ? "selected" :""}>2020</option>
                                             <option value="2021" ${OneReserModel.pr_year eq "2021" ? "selected" :""}>2021</option>
                                             <option value="2022" ${OneReserModel.pr_year eq "2022" ? "selected" :""}>2022</option>
                                             <option value="2023" ${OneReserModel.pr_year eq "2023" ? "selected" :""}>2023</option>
                                             <option value="2024" ${OneReserModel.pr_year eq "2024" ? "selected" :""}>2024</option>
                                             <option value="2025" ${OneReserModel.pr_year eq "2025" ? "selected" :""}>2025</option>
                                             <option value="2026" ${OneReserModel.pr_year eq "2026" ? "selected" :""}>2026</option>
                                             <option value="2027" ${OneReserModel.pr_year eq "2027" ? "selected" :""}>2027</option> --%>
                                          </select>
                                          년&nbsp;&nbsp;

                                          <select id="pr_month" name="pr_month" class="form-control"  style="width: 20%; display: inline-block;">
                                          <option value="${OneReserModel.pr_month}">${OneReserModel.pr_month}</option>
                                             <%for(int i=1; i<=12; i++){ %>
                                             <%
                                             String s = Integer.toString(i); 
												if(s.length() == 1){
													s = "0"+s;
												}
                                             %>
                                             <option value="<%=s%>"><%=s %></option>
                                             <%} %>
                                             <%-- <option value="01" ${OneReserModel.pr_month eq "01" ? "selected" :""}>01</option>
                                             <option value="02" ${OneReserModel.pr_month eq "02" ? "selected" :""}>02</option>
                                             <option value="03" ${OneReserModel.pr_month eq "03" ? "selected" :""}>03</option>
                                             <option value="04" ${OneReserModel.pr_month eq "04" ? "selected" :""}>04</option>
                                             <option value="05" ${OneReserModel.pr_month eq "05" ? "selected" :""}>05</option>
                                             <option value="06" ${OneReserModel.pr_month eq "06" ? "selected" :""}>06</option>
                                             <option value="07" ${OneReserModel.pr_month eq "07" ? "selected" :""}>07</option>
                                             <option value="08" ${OneReserModel.pr_month eq "08" ? "selected" :""}>08</option>
                                             <option value="09" ${OneReserModel.pr_month eq "09" ? "selected" :""}>09</option>
                                             <option value="10" ${OneReserModel.pr_month eq "10" ? "selected" :""}>10</option>
                                             <option value="11" ${OneReserModel.pr_month eq "11" ? "selected" :""}>11</option>
                                             <option value="12" ${OneReserModel.pr_month eq "12" ? "selected" :""}>12</option> --%>
                                          </select>
                                          월&nbsp;&nbsp;
                                          
                                          <select id="pr_day" name="pr_day" class="form-control"  style="width: 20%; display: inline-block;">
                                          <option value="${OneReserModel.pr_day}">${OneReserModel.pr_day}</option>
                                             <%for(int i=1; i<= 31; i++){ %>
                                             <%
                                             String s = Integer.toString(i); 
												if(s.length() == 1){
													s = "0"+s;
												}
                                             %>
                                             <option value="<%=s%>"><%=s %></option>
                                             <%} %>
                                             <%-- <option value="01" ${OneReserModel.pr_day eq "01" ? "selected" :""}>01</option>
                                             <option value="02" ${OneReserModel.pr_day eq "02" ? "selected" :""}>02</option>
                                             <option value="03" ${OneReserModel.pr_day eq "03" ? "selected" :""}>03</option>
                                             <option value="04" ${OneReserModel.pr_day eq "04" ? "selected" :""}>04</option>
                                             <option value="05" ${OneReserModel.pr_day eq "05" ? "selected" :""}>05</option>
                                             <option value="06" ${OneReserModel.pr_day eq "06" ? "selected" :""}>06</option>
                                             <option value="07" ${OneReserModel.pr_day eq "07" ? "selected" :""}>07</option>
                                             <option value="08" ${OneReserModel.pr_day eq "08" ? "selected" :""}>08</option>
                                             <option value="09" ${OneReserModel.pr_day eq "09" ? "selected" :""}>09</option>
                                             <option value="10" ${OneReserModel.pr_day eq "10" ? "selected" :""}>10</option>
                                             <option value="11" ${OneReserModel.pr_day eq "11" ? "selected" :""}>11</option>
                                             <option value="12" ${OneReserModel.pr_day eq "12" ? "selected" :""}>12</option>
                                             <option value="13" ${OneReserModel.pr_day eq "13" ? "selected" :""}>13</option>
                                             <option value="14" ${OneReserModel.pr_day eq "14" ? "selected" :""}>14</option>
                                             <option value="15" ${OneReserModel.pr_day eq "15" ? "selected" :""}>15</option>
                                             <option value="16" ${OneReserModel.pr_day eq "16" ? "selected" :""}>16</option>
                                             <option value="17" ${OneReserModel.pr_day eq "17" ? "selected" :""}>17</option>
                                             <option value="18" ${OneReserModel.pr_day eq "18" ? "selected" :""}>18</option>
                                             <option value="19" ${OneReserModel.pr_day eq "19" ? "selected" :""}>19</option>
                                             <option value="20" ${OneReserModel.pr_day eq "20" ? "selected" :""}>20</option>
                                             <option value="21" ${OneReserModel.pr_day eq "21" ? "selected" :""}>21</option>
                                             <option value="22" ${OneReserModel.pr_day eq "22" ? "selected" :""}>22</option>
                                             <option value="23" ${OneReserModel.pr_day eq "23" ? "selected" :""}>23</option>
                                             <option value="24" ${OneReserModel.pr_day eq "24" ? "selected" :""}>24</option>
                                             <option value="25" ${OneReserModel.pr_day eq "25" ? "selected" :""}>25</option>
                                             <option value="26" ${OneReserModel.pr_day eq "26" ? "selected" :""}>26</option>
                                             <option value="27" ${OneReserModel.pr_day eq "27" ? "selected" :""}>27</option>
                                             <option value="28" ${OneReserModel.pr_day eq "28" ? "selected" :""}>28</option>
                                             <option value="29" ${OneReserModel.pr_day eq "29" ? "selected" :""}>29</option>
                                             <option value="30" ${OneReserModel.pr_day eq "30" ? "selected" :""}>30</option>
                                             <option value="31" ${OneReserModel.pr_day eq "31" ? "selected" :""}>31</option> --%>
                                             
                                          </select>
                                          일&nbsp;&nbsp;
                                       </td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <th>예약시간</th>
                                       <td>
                                          <select id="pr_hour" name="pr_hour" class="form-control" style="width: 20%; display: inline-block;">
                                             <option value="09" ${OneReserModel.pr_hour eq "09" ? "selected" :""}>09</option>
                                             <option value="10" ${OneReserModel.pr_hour eq "10" ? "selected" :""}>10</option>
                                             <option value="11" ${OneReserModel.pr_hour eq "11" ? "selected" :""}>11</option>
                                             <option value="12" ${OneReserModel.pr_hour eq "12" ? "selected" :""}>12</option>
                                             <option value="14" ${OneReserModel.pr_hour eq "14" ? "selected" :""}>14</option>
                                             <option value="15" ${OneReserModel.pr_hour eq "15" ? "selected" :""}>15</option>
                                             <option value="16" ${OneReserModel.pr_hour eq "16" ? "selected" :""}>16</option>
                                             <option value="17" ${OneReserModel.pr_hour eq "17" ? "selected" :""}>17</option>
                                             <option value="18" ${OneReserModel.pr_hour eq "18" ? "selected" :""}>18</option>
                                          </select>
                                           시&nbsp;&nbsp;

                                          <select id="pr_minute" name="pr_minute" class="form-control"  style="width: 20%; display: inline-block;">
                                             <option value="00" ${OneReserModel.pr_minute eq "00" ? "selected" :""}>00</option>
                                             <option value="30" ${OneReserModel.pr_minute eq "30" ? "selected" :""}>30</option>
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
                                       <td><div class="tit"><span> ${OneReserModel.pr_phone1 }</span>&nbsp;-&nbsp;<span> ${OneReserModel.pr_phone2 }</span>&nbsp;-&nbsp;<span> ${OneReserModel.pr_phone3 }</span></div></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <th>상담사유</th>
                                       <td><div class="tit"><span> ${OneReserModel.pr_reason }</span></div></td>
                                    </tr>
                                    <tr class="odd gradeX">
                                       <th>예약상태</th>
                                       <td>
                                          <select id="pr_status" name="pr_status" class="form-control" style="width: 20%;">
                                             <option value="0" ${OneReserModel.pr_status eq "0" ? "selected" :""}>예약대기</option>
                                             <option value="1" ${OneReserModel.pr_status eq "1" ? "selected" :""}>예약완료</option>
                                          </select>
                                       </td>
                                    </tr>
                                 </tbody>
										</table>
										<!-- /.table-responsive -->
										<button type="submit" class="btn btn-outline btn-primary">저장</button>
										<button type="button" onclick="OneReserDelete(${OneReserModel.pr_number })" class="btn btn-outline btn-primary">삭제</button>
										
									</div>
									
                                </div>
                              
                            </div>
							
                        </div>
                        
                    </div>
                    
                </div>
                
                </div>
                
            </div>
    </form>

   
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
/* function checkIt() {
	 if(document.form.pr_center.value==""){
		 alert("센터를 선택해주세요.");
		 document.form.pr_center.focus();
		 
	}else if(document.form.pr_hour.value==""){
		 alert("시간을 선택해주세요.");
		 document.form.pr_hour.focus();
		 
	}else if(document.form.pr_minute.value==""){
		 alert("시간을 선택해주세요.");
		 document.form.pr_minute.focus();
		 r
	}else if(document.form.pr_phone1.value==""){
		 alert("핸드폰 번호를 입력해주세요.");
		 document.form.pr_phone1.focus();
		 
	}else if(document.form.pr_phone2.value==""){
		 alert("핸드폰 번호를 입력해주세요.");
		 document.form.pr_phone2.focus();
		 
	}else if(document.form.pr_phone3.value==""){
		 alert("핸드폰 번호를 입력해주세요.");
		 document.form.pr_phone3.focus();
		 
	}
} */
function OneReserDelete() {
	if (confirm("삭제하시겠습니까?")) {
		window.location.href = 'AdminOneReserDelete.do?pr_number=${OneReserModel.pr_number}';
	} else {
		alert("취소되었습니다");
	}
}
</script>