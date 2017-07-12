<%@page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>마이스토리</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<link rel="stylesheet" href="SDDuo/src/main/webapp/WEB-INF/views/css/layout.css" />
	<link rel="stylesheet" href="SDDuo/src/main/webapp/WEB-INF/views/css/default.css" />

	<!--JQUERY-->

	<script  type="text/javascript" src="../../js/jquery-1.9.1.js"></script>
	<script  type="text/javascript" src="../../js/common.js"></script>
	<script  type="text/javascript" src="../../js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script src="../../js/jquery.rolling.js" type="text/javascript"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.js"></script>
	<script type="text/javascript" src="../../js/tab.js"></script>
	<script src="../../js/jquery.supercal.js"></script>
	<script type="text/javascript">
	    // <![CDATA[
	    /* $(document).ready(function () {
		   $('#tab').tabify();
	    }); */
	    // ]]>
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





</head>


 <body>
 <div class="sub-content">
            <div class="bg02area">
               <p class="tit">예약/커뮤니티</p>
            </div>
            <div class="sub-content-inbox">
               <ul class="sub-menu2">
                  <li><a href="sub0201_list.html">온라인상담</a></li>
                  <li class="act act2"><a href="sub0202_01.html">온라인 실시간예약</a></li>
                  <li><a href="sub0203_list.html">마이스토리 공지사항</a></li>
                  <li><a href=" sub0204_list.html">마이스토리 심리 컬럼</a></li>
                  <li><a href="sub0205_list.html">책으로 만나는 심리이야기</a></li>
                  <li class="last"><a href="sub0206_list.html">자주하는 질문</a></li>
               </ul>
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
                     <tr>
                                    <td colspan="3" height="15"></td>
                                   </tr>
                                   <tr>
                                    <td valign="top" class="formtit"  style="color: #4f4f4f; font-size: 16px; line-height: 120%; padding-top: 10px;">예약일 선택&nbsp;</td>
                                    <td align="center" width="4" ></td>
                                    <td>
                                       <select name="gr_year" class="form-control" style="width: 20%; display: inline-block;">
                                       		<option value="">-선택하세요-</option>
                                             <option value="2017">2017</option>
                                             <option value="2018">2018</option>
                                             <option value="2019">2019</option>
                                             <option value="2020">2020</option>
                                             <option value="2021">2021</option>
                                             <option value="2022">2022</option>
                                             <option value="2023">2023</option>
                                             <option value="2024">2024</option>
                                             <option value="2025">2025</option>
                                             <option value="2026">2026</option>
                                             <option value="2027">2027</option>
                                             <option value="2028">2028</option>
                                             <option value="2029">2029</option>
                                             <option value="2030">2030</option>
                                             <option value="2031">2031</option>
                                             <option value="2032">2032</option>
                                             <option value="2033">2033</option>
                                             <option value="2034">2034</option>
                                             <option value="2035">2035</option>
                                          </select>
                                          년&nbsp;&nbsp;

                                          <select name="gr_month" class="form-control"  style="width: 20%; display: inline-block;">
                                          	<option value="">-선택하세요-</option>
                                             <option value="01">01</option>
                                             <option value="02">02</option>
                                             <option value="03">03</option>
                                             <option value="04">04</option>
                                             <option value="05">05</option>
                                             <option value="06">06</option>
                                             <option value="07">07</option>
                                             <option value="08">08</option>
                                             <option value="09">09</option>
                                             <option value="10">10</option>
                                             <option value="11">11</option>
                                             <option value="12">12</option>
                                          </select>
                                          월&nbsp;&nbsp;
                                          
                                          <select name="gr_day" class="form-control"  style="width: 20%; display: inline-block;">
                                          	<option value="">-선택하세요-</option>
                                             <option value="01">01</option>
                                             <option value="02">02</option>
                                             <option value="03">03</option>
                                             <option value="04">04</option>
                                             <option value="05">05</option>
                                             <option value="06">06</option>
                                             <option value="07">07</option>
                                             <option value="08">08</option>
                                             <option value="09">09</option>
                                             <option value="10">10</option>
                                             <option value="11">11</option>
                                             <option value="12">12</option>
                                             <option value="13">13</option>
                                             <option value="14">14</option>
                                             <option value="15">15</option>
                                             <option value="16">16</option>
                                             <option value="17">17</option>
                                             <option value="18">18</option>
                                             <option value="19">19</option>
                                             <option value="20">20</option>
                                             <option value="21">21</option>
                                             <option value="22">22</option>
                                             <option value="23">23</option>
                                             <option value="24">24</option>
                                             <option value="25">25</option>
                                             <option value="26">26</option>
                                             <option value="27">27</option>
                                             <option value="28">28</option>
                                             <option value="29">29</option>
                                             <option value="30">30</option>
                                             <option value="31">31</option>
                                             
                                          </select>
                                          일&nbsp;&nbsp;
                                    </td>
                                   </tr>
                  </div>
                  <div class="calright">
                     <p class="tit">예약정보를 입력해 주세요</p>
                     <p class="txt">왼쪽 달력에서 먼저 원하는 날짜를 선택 후 예약해주세요</p>
							<div>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
									  <tr>
										<td>
											<table width="100%" border="0" cellspacing="0" cellpadding="0">

											  <tr>
												<td colspan="3" height="20"></td>
											  </tr>
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

												<td colspan="3 " style="font-family:맑은 고딕; font-size:14px; color:#ab9159;padding:10px 0; width: 290px; letter-spacing: -2.2px;">*&nbsp;연락처를 남기시지 않으면 예약이 확정 되지 않습니다. </td>
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
					<p><span>2016년 02월 25일</span>에 예약하시겠습니까?</p>
					<div>
						<input type="button" onclick="return checkForm()" value="확인" />
						<input type="button" value="취소" class="cancel" />
					</div>
			</form>
			
			
			<div class="footer">
				<div class="footer-top">
					<div class="footer-top-inbox">
						<ul>
							<li>회사소개</li>
							<li>사이트이용약관</li>
							<li>개인정보처리방침</li>
							<li>임직원서비스</li>
						</ul>
					</div>
				</div>
				<div class="footer-bottom">
					<div class="footer-bottom-inbox">
						<h2><img src="../../images/common/b_logo.gif"></h2>
						<p>
							고객서비스센터 080-3243-2312<br>
							(주)마이스토리 서울특별시 강남구 테헤란로길 52길 17 역삼동 이에스타워 10층 사업자등록번호:505-88-00158 홈페이지 관리책임자:안영미<br>
							<br/>
							Copyright ⓒ MYSTORY All Rights Reserved
						</p>
					</div>
				</div>
			</div>
		</div>

 </body>
</html>

