<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<script type="text/javascript">
$(document).ready(function () {
    // 초기 값 지정
    $('#year').text($("#gr_year option:selected").val());
    $('#month').text($("#gr_month option:selected").val());
    $('#day').text($("#gr_day option:selected").val());
   
    // select 선택이 변경 됐을 때 호출 되는 함수
    $('#gr_year').change(function() {
    $('#year').text($("#gr_year option:selected").val());
  });
    $('#gr_month').change(function() {
	    $('#month').text($("#gr_month option:selected").val());
	  });
    $('#gr_day').change(function() {
	    $('#day').text($("#gr_day option:selected").val());
	  });
});
</script>
<script language="javascript">


  function checkForm(){
     if(!document.reserAgree.agree.checked){
        alert("개인정보 취급방침에 동의하셔야 됩니다");
     }else{   
        reserAgree.submit();
     }
     }
  </script>






 <body>
 <div class="sub-content">
           
               <h3>온라인 실시간예약</h3>
               <p class="sub02_txt">
                  마이스토리 심리상담센터는 예약상담으로만 운영되고 있으며 상담을 희망하시는 경우 반드시 예약 및 상담규정을 준수해야 합니다.<br />
                  <span>온라인 예약을 하시면 상담 직원이 전화를 드리며 상담문의 내용 등을 확인 한 후 정확한 예약이 확정 됩니다.    </span><br />
               </p>

							<form name="reserAgree" action="GroupReserveForm.do" method="post">
							<div class="step"><img src="/SDDuo/resources/images/sub/step1.gif"></div>
               <div class="calarea">
                  <div class="calleft">
                     <p class="tit">원하시는 희망 예약날짜를 선택해 주세요</p>
                     <script src="/SDDuo/resources/js/jquery.supercal.js"></script>
                     <div class="example1" style="margin:0 auto"></div>
                     <script>
                        $('.example1').supercal({
                           
                        });
                     </script>
                  		<div class="reserCenter">
                                       <select id="gr_year" name="gr_year" class="form-control" style="width: 100px; display: inline-block;">
                                       		<option value="">-선택하세요-</option>
                                             <%for(int i=2017; i<=2027; i++){ %>
                                             <%int from = 'i';
                                             String to = Integer.toString(from); %>
                                             
                                             <option value="<%=i%>"><%=i %></option>
                                             <%} %>
                                             
                                          </select>
                                          년&nbsp;&nbsp;

                                          <select id="gr_month" name="gr_month" class="form-control"  style="width: 100px; display: inline-block;">
                                          	<option value="">-선택하세요-</option>
                                             <%for(int i=1; i<=12; i++){ %>
                                             <%
                                             String s = Integer.toString(i); 
												if(s.length() == 1){
													s = "0"+s;
												}
                                             %>
                                             <option value="<%=s%>"><%=s %></option>
                                             <%} %>
                                          </select>
                                          월&nbsp;&nbsp;
                                          
                                          <select id="gr_day" name="gr_day" class="form-control"  style="width: 100px; display: inline-block;">
                                          	<option value="">-선택하세요-</option>
                                             <%for(int i=1; i<=31; i++){ %>
                                             <%
                                             String s = Integer.toString(i); 
												if(s.length() == 1){
													s = "0"+s;
												}
                                             %>
                                             <option value="<%=s%>"><%=s %></option>
                                             <%} %>
                                          </select>
                                             
                                          
                                          일&nbsp;&nbsp;
                                          
                                          <p style="font-size: 20px; text-align: center;margin-top: 30px;"><span id="year" style="color: red;"></span>년<span id="month" style="color: red;"></span>월<span id="day" style="color: red;">일</span>에 예약하시겠습니까?</p>
                         </div>          
                  </div>
                  <div class="calright">
                     <p class="tit">예약정보를 입력해 주세요</p>
                     
							<div  style="width: 295px; margin: 0 auto;">
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
									  <tr>
										<td>
											<table width="100%" border="0" cellspacing="0" cellpadding="0">

											
											  <tr>
												<td valign="top"  class="formtit" style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">센&nbsp&nbsp&nbsp&nbsp터</td>
												<td align="center" width="4" ></td>
												<td valign="top">
												<input type="hidden" name="m_id" value="${session_member_id }" />
													<select name="gr_center" style="width:220px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f4_0' name='fname[4][]'>
														<option value="1">서울센터</option>
														<option value="2">대구센터</option>
														<option value="3">부산센터</option>
													</select>
												</td>
											  </tr>
											  <tr>
												<td colspan="3" height="15">&nbsp;</td>
											  </tr>
											  <tr>
												<td class="formtit"  style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">시&nbsp&nbsp&nbsp&nbsp간 </td>
												<td align="center" width="4" ></td>
												<td>
													<table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
													  <tr>
														<td width="65">
															<select name="gr_hour" style="width:100px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb;  font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
																<option value="09">09시</option>
																<option value="10">10시</option>
																<option value="11">11시</option>
																<option value="12">12시</option>
																<option value="14">14시</option>
																<option value="15">15시</option>
																<option value="16">16시</option>
																<option value="17">17시</option>
																<option value="18">18시</option>
															</select>
														</td>
														<td align="center" width="18" style="vertical-align: middle;">&nbsp&nbsp:&nbsp&nbsp</td>
														<td width="65">
															<select name="gr_minute" style="width:100px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
																<option value="00">00분</option>
																<option value="30">30분</option>
															</select>
														</td>
														<td>&nbsp;</td>
													  </tr>
													</table>
												</td>
											  </tr>
											  <tr>
												<td colspan="3" height="15"></td>
											  </tr>


											   <tr>
												<td class="formtit"  style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">그&nbsp;룹&nbsp;명</td>
												<td align="center" width="4" ></td>
												<td valign="top">
													<input type="text" value="" name="gr_group" style="width:220px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f3_0' name='fname[3][]'>
												</td>
											  </tr>
											  <tr>
												<td class="formtit"  style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">인&nbsp;원&nbsp;수</td>
												<td align="center" width="4" ></td>
												<td valign="top">
													<select name="gr_p_number" style="width:100px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
													</select>&nbsp;명
												</td>
											  </tr>
											  <tr>
												<td colspan="3" height="15"></td>
											  </tr>
											  <tr>
												<td class="formtit"  style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">연&nbsp;락&nbsp;처</td>
												<td align="center" width="4" ></td>
												<td>
													<table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
													  <tr>
														<td width="63">
															<input type="text" value="" name="gr_phone1" style="width:65px;  height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
														</td>
														<td align="center" width="13" style="vertical-align: middle;">-</td>
														<td width="63"><input type="text" value="" name="gr_phone2" style="width:65px;  height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;"></td>
														<td align="center" width="13" style="vertical-align: middle;">-</td>
														<td width="63"><input type="text" value="" name="gr_phone3" style="width:65px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;"></td>
														<td>&nbsp;</td>
													  </tr>
													</table>
												</td>
											  </tr>
											  <tr>
												<td class="formtit"  style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">대표번호</td>
												<td align="center" width="4" ></td>
												<td>
													<table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
													  <tr>
														<td width="63">
															<input type="text" value="" name="gr_rephone1" style="width:65px;  height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
														</td>
														<td align="center" width="13" style="vertical-align: middle;">-</td>
														<td width="63"><input type="text" value="" name="gr_rephone2" style="width:65px;  height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;"></td>
														<td align="center" width="13" style="vertical-align: middle;">-</td>
														<td width="63"><input type="text" value="" name="gr_rephone3" style="width:65px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;"></td>
														<td>&nbsp;</td>
													  </tr>
													</table>
												</td>
											  </tr>



											  <tr>
												<td colspan="3" height="15"></td>
											  </tr>
											  <tr>
												<td valign="top" class="formtit"  style="color: #4f4f4f; font-size: 16px; line-height: 120%; padding-top: 10px;">상담신청<br>사유&nbsp;</td>
												<td align="center" width="4" ></td>
												<td>
													<textarea value="" name="gr_reason" style="width:220px; height:110px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f5_0' name='fname[5][]'></textarea>
												</td>
											  </tr>
											</table>

										</td>
									  </tr>
									 
									  <tr>
										<td>
											<table width="100%" border="0" cellspacing="0" cellpadding="0">
											  <tr>

												<td colspan="3 " style="font-family:맑은 고딕;font-size:14px; color:#8b8b8b;padding:10px 0; letter-spacing: -1.5px;"><input type="checkbox" name="agree" value="yes" /> 개인정보 취급방침에 동의 <a href="#" style="color:#505050; font-family: 맑은 고딕; text-decoration:underline; " id="layer_open3">개인정보취급방침</a></td>
											  </tr>

											</table>
										</td>
									  </tr>
									</table>
									</div>
					
					 <div class="btn-area">
		                  <input type="button" onclick="return checkForm()" value="확인"   class="submit" />
		                  <input type="button" value="취소" class="cancel" class="cancel" onclick="javascript:history.back()"/>
		               </div>
			</form>
			
			
			
					</div>
				</div>
				</div>

