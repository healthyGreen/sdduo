<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
<form action="OneReserList.do">
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                	<c:choose>
						<c:when test="${pr_center eq '1'}">
                    		<h1 class="">강남지점</h1>
                    	</c:when>
                    	<c:when test="${pr_center eq '2'}">
                    		<h1 class="">대구지점</h1>
                    	</c:when>
                    	<c:when test="${pr_center eq '3'}">
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
                        		<ul class="nav nav-tabs">
                                <li class="active"><a href="http://localhost:8080/SDDuo/AdminReserve/OneReserList.do?pr_center=${pr_center }" data-toggle="tab">개인예약</a>
                                </li>
                                <li><a href="http://localhost:8080/SDDuo/AdminReserve/GrReserList.do?gr_center=${pr_center }" data-toggle="tab">그룹예약</a>
                                </li>
                            	</ul>
                            <!-- Nav tabs -->
                            

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="home">
                                    <div class="panel-body">
                              <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                              	<colgroup>
                              		<col width="10%">
                              		<col width="10%">
                              		<col width="">
                              		<col width="15%">
                              		<col width="10%">
                              		
                              	</colgroup>
                                 <thead>
                               
                                 	<tr>
                                 		<td>
	                                 		<input type="hidden" name="pr_center" value="${pr_center }">
	                                 			<select name="isSearch" style="height: 34px;">
	                                 				<option value="0">예약일순</option>
	                                 				<option value="1">최신순</option>
	                                 				<option value="2">예약대기</option>
	                                 			</select>
	                                 			<input name="submit" type="submit" value="검색" class="btn btn-outline btn-primary"/>
										</form>
	                                 			
	                                 			
	                                 	</td>
	                                 		<form action="OneReserListDay.do">
                                 		<td colspan="4">
	                                 		<input type="hidden" name="pr_center" value="${pr_center }">
	                                 		<%-- <input type="hidden" name="pr_year" value="${pr_year }">
	                                 		<input type="hidden" name="pr_month" value="${pr_month }">
	                                 		<input type="hidden" name="pr_day" value="${pr_day }"> --%>
	                                 		<select id="pr_year" name="pr_year" style="height: 34px;">
	                                          	<option value="">선택하세요</option>
	                                             <%for(int i=2017; i<=2027; i++){ %>
	                                             <%int from = 'i';
	                                             String to = Integer.toString(from); %>
	                                             
	                                             <option value="<%=i%>"><%=i %></option>
	                                             <%} %>
	                                             </select>년&nbsp;&nbsp;
	                                             
	                                             <select id="pr_month" name="pr_month" style="height: 34px;">
	                                          	<option value="">선택하세요</option>
	                                             <%for(int i=1; i<=12; i++){ %>
	                                             <%
	                                             String s = Integer.toString(i); 
													if(s.length() == 1){
														s = "0"+s;
													}
	                                             %>
	                                             <option value="<%=s%>"><%=s %></option>
	                                             <%} %>
	                                             </select>월&nbsp;&nbsp;
	                                             
	                                             <select id="pr_day" name="pr_day" style="height: 34px;">
	                                          	<option value="">선택하세요</option>
	                                             <%for(int i=1; i<= 31; i++){ %>
	                                             <%
	                                             String s = Integer.toString(i); 
													if(s.length() == 1){
														s = "0"+s;
													}
	                                             %>
	                                             <option value="<%=s%>"><%=s %></option>
	                                             <%} %>
	                                         </select>일&nbsp;&nbsp;
                                             <input name="submit" type="submit" value="검색"  class="btn btn-outline btn-primary"/>
                                 		</td>
                                 		
                                 	</tr>
                                 
                                    <tr>
                                       <th><center>번호</center></th>
                                       <th><center>예약자</center></th>
                                       <th><center>상담내용</center></th>
                                       <th><center>예약일</center></th>
                                       <th><center>예약상태</center></th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    <c:forEach var="oneReserList" items="${oneReserList}">
                                    	<c:url var="viewURL" value="OneReserView.do">
											<c:param name="pr_number" value="${oneReserList.pr_number }"/>
										</c:url>
                                       <tr>
                                          <td>${oneReserList.pr_number}</td>
                                          <td>${ oneReserList.pr_name }</td>
                                          <td><a href="${viewURL}" style="    text-overflow: ellipsis;    display: inline-block; white-space: nowrap;    word-wrap: normal;    width: 750px;    overflow: hidden;">${oneReserList.pr_reason}</a></td> 
                                             <td>${ oneReserList.pr_year }.${ oneReserList.pr_month }.${ oneReserList.pr_day }&nbsp;&nbsp;${ oneReserList.pr_hour }:${ oneReserList.pr_minute }</td>

                                            <td>
                     
                                             <c:choose>

                                                <c:when test="${oneReserList.pr_status eq '0'}">
                                       예약대기
                                                </c:when>
                           
                                             <c:when test="${oneReserList.pr_status ne '0'}">
                                         예약완료
                                                </c:when>
                                             </c:choose>

                                          </td>
                                          
                                          </tr>
                                       </c:forEach>
                                    
                                 </tbody>
                              </table>
                              <div class="pageing">
						${pagingHtml}
					</div>
                              
                              <c:if test="${fn:length(oneReserList) le 0}">
							<br />
							<center>예약내역이 존재하지 않습니다.</center>
							<br />
						</c:if>
                              <!-- /.table-responsive -->
                              
                           </div>
                           
                           
                        <!-- /.panel-body -->
                                </div>
                                <%-- <div class="tab-pane fade" id="profile">
                                    <div class="panel-body">
                              <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                 <thead>
                                    <tr>
                                       <th>번호</th>
                                       <th>그룹명</th>
                                       <th>상담내용</th>
                                       <th>예약일</th>
                                       <th>예약인원</th>
                                       <th>예약상태</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                 <c:forEach var="groupReserList" items="${groupReserList}">
                                       <tr>
                                          <td>${groupReserList.gr_number}</td>
                                          <td>${ groupReserList.gr_group}</td>
                                          <td>${groupReserList.gr_reason}</td> 
                                          <td>${ groupReserList.gr_year }.${ groupReserList.gr_month }.${ groupReserList.gr_day }&nbsp;&nbsp;${ groupReserList.gr_hour }:${ groupReserList.gr_minute }</td>
                                          <td>${groupReserList.gr_p_number}</td> 

                                            <td>
                     
                                             <c:choose>

                                                <c:when test="${groupReserList.gr_status eq '0'}">
                                       예약대기
                                                </c:when>
                           
                                             <c:when test="${groupReserList.gr_status ne '0'}">
                                         예약완료
                                                </c:when>
                                             </c:choose>

                                          </td>
                                          
                                          </tr>
                                       </c:forEach>
                                    
                                 </tbody>
                              </table>
                              <!-- /.table-responsive -->
                              
                           </div>
                           
                        
                                </div> --%>
                               
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
    
   
</form>
</body>
</html>