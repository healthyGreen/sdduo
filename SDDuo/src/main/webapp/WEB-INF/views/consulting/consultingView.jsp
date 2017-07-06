<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>마이스토리</title>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<link rel="stylesheet" href="../../css/layout.css" />
	<link rel="stylesheet" href="../../css/default.css" />

	<!--JQUERY-->

	<script  type="text/javascript" src="../../js/jquery-1.9.1.js"></script>
	<script  type="text/javascript" src="../../js/common.js"></script>
	<script  type="text/javascript" src="../../js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script src="../../js/jquery.rolling.js" type="text/javascript"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.js"></script>
	<script type="text/javascript" src="../../js/tab.js"></script>
	<script type="text/javascript">
	    // <![CDATA[
	    $(document).ready(function () {
		   $('#tab').tabify();
	    });
	    // ]]>
	</script>
	<script>
  /*** 롤링배너 ***/
  jQuery(function($){
    $("div.gallery_rolling").gallery_rolling();
  });
  </script>




</head>


 <body>

	<!-- <div id="quick">
		<div class="btn_area">
			<ul class="icon_zone">
				<li q="1"><img src="../../images/common/quick_tit.jpg" border="0" alt="마이스토리" /></li>
				<li q="1"><img src="../../images/common/quick01.png" border="0" alt="카카오톡예약상담" /></li>
				<li q="2"><img src="../../images/common/quick02.png" border="0" alt="실시간전화예약" /></li>
				<li q="3"><img src="../../images/common/quick03.png" border="0" alt="실시간온라인예약" /></li>
				<li q="4"><img src="../../images/common/quick04.png" border="0" alt="오시는길" /></li>
			</ul>
			<p style="text-align:right;"><img src="../../images/common/quick05.png" border="0" alt="02-345-8765" /></p>
			<div class="s-center">
				<p>주변센터찾기</p>
				<input type="text" class="tbox">
				<input type="button" class="sbtn">
			</div>
		</div>END .btn_area
		<div class="show_box">
			<div class="btn_close"><img src="../../images/common/quick_close.gif" border="0" alt="닫기" /></div>
		END .quick_box

			<div id="quick_1" class="quick_box">
				<div style="position:relative;">
					<section class="contents">카톡 상담

					<div class="tit"><img src="../../images/common/tit01.jpg" alt="카카오톡 상담"></div>
					<div class="contents">
						<div class="con">
							<select>
								<option>센터를 선택해주세요</option>
								<option>강남센터</option>
								<option>분당센터</option>
								<option>경기센터</option>
								<option>부산센터</option>
							</select>
							<div class="qr"><img src="../../images/common/qr.png" alt="큐알코드"></div>
							<div class="qrid">ID &nbsp:&nbsp 마이스토리</div>
							<div class="prplus"><a href=""><img src="../../images/common/kabtn.gif" alt="친구추가하기"></a></div>
							<p class="qrtxt">
								아래 코드를 스캔하면 카카오톡<br/>
								친구를 바로 추가할 수 있습니다.<br/>
								<br/>
								QR코드 등록이 어려우신분은<br/>
								카카오톡 아이디검색에 <span>마이스토리</span>를 검색하세요.<br/>
								친구등록 후 자세한 상담이 가능합니다.<br/>
							</p>
						</div>
					</div>
				</section>


	<style>
	/* Popup Layer */

	#quick_2 .contents{position:relative;}
	</style>
			</div>
		</div>END .quick_box

		<div id="quick_3" class="quick_box">
			<div style="position:relative;">

				<div class="tit"><img src="../../images/common/tit03.jpg" /></div>

				<section class="contents">sns비용상담
					<div class="con">
							<table width="265px !important;" style="margin-top: 41px;" border="0" cellspacing="0" cellpadding="0">
							  <tr>
								<td>


								<table width="100%" border="0" cellspacing="0" cellpadding="0">
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										 <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										   <tr>
											<td class="formtit">이름</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<input type="text" style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f3_0' name='fname[3][]'>
											</td>
										  </tr>
										  <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										  <tr>
											<td class="formtit">연락처</td>
											<td align="center" width="3"></td>
											<td>
												<table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
												  <tr>
													<td width="58">
														<input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
													</td>
													<td align="center" width="6"></td>
													<td width="57"><input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;"></td>
													<td align="center" width="6"></td>
													<td width="57"><input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;"></td>
													<td>&nbsp;</td>
												  </tr>
												</table>
											</td>
										  </tr>

										  <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										  <tr>
											<td valign="top"  class="formtit" style="">상담센터</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<select style="width:207px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f4_0' name='fname[4][]'>
													<option value="">상담센터를 선택해주세요.</option>
													<option>강남센터</option>
													<option>강남센터</option>
													<option>강남센터</option>
													<option>강남센터</option>
													<option>강남센터</option>
												</select>
											</td>
										  </tr>
										  <tr>
											<td colspan="3" height="12">&nbsp;</td>
										  </tr>


										  <tr>
											<td class="formtit">통화가능<br />시간</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<select style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f1_0' name='fname[1][]'>
													<option value="">09:00</option>
													<option value="">09:00</option>
													<option value="">09:00</option>
													<option value="">09:00</option>
													<option value="">09:00</option>
													<option value="">09:00</option>
												</select>
											</td>
										  </tr>
										   <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										  <tr>
											<td valign="top"  class="formtit" style="">연령대</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<select style="width:207px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f4_0' name='fname[4][]'>
													<option value="">10~15</option>
													<option value="">10~15</option>
													<option value="">10~15</option>
													<option value="">10~15</option>
													<option value="">10~15</option>
													<option value="">10~15</option>
												</select>
											</td>
										  </tr>

										  <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										  <tr>
											<td valign="top" class="formtit">문의내용</td>
											<td align="center" width="3"></td>
											<td>
												<textarea style="width:205px; height:80px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f5_0' name='fname[5][]'></textarea>
											</td>
										  </tr>
										</table>

									</td>
								  </tr>
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>

											<td colspan="3 " style="font-family:맑은 고딕; font-size:12px; color:#7a7a7a;padding:10px 0; width: 210px; padding-left: 45px;">연령대와 상담내용을 간단히 남겨주세요 </td>
										  </tr>

										</table>
									</td>
								  </tr>
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>

											<td colspan="3 " style="font-family:맑은 고딕;font-size:13px; color:#8b8b8b;padding:10px 0; letter-spacing: -1.5px;"><input type="checkbox" id='133_f6_0' name='fname[6][]' /> 개인정보 취급방침에 동의 <a href="#" style="color:#505050; font-family: 맑은 고딕; text-decoration:underline; " id="layer_open3">개인정보취급방침</a></td>
										  </tr>

										</table>
									</td>
								  </tr>
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>

											<td colspan="3 " ><img src="../../images/common/bar.png"> </td>
										  </tr>

										</table>
									</td>
								  </tr>
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>
											<td  style="padding-left: 10px;"><a href=""><img src="../../images/common/rbtn.jpg"> </a></td>
											<td ><a href=""><img src="../../images/common/ccbtn.jpg"> </a></td>
										  </tr>

										</table>
									</td>
								  </tr>
								</table>
								</form>

								</td>
							  </tr>
							</table>
						</div>
				</section>


			</div>
		</div>END .quick_box

		<div id="quick_2" class="quick_box">
			<div style="position:relative;">
				<section class="contents">온라인예약 

					<div class="tit"><img src="../../images/common/tit02.jpg"></div>
					<div class="contents">
						<div class="con">
							<table width="265px !important;" border="0" cellspacing="0" cellpadding="0">
							  <tr>
								<td>


								<table width="100%" border="0" cellspacing="0" cellpadding="0">
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>
											<td colspan="3" height="33">&nbsp;</td>
										  </tr>
										  <tr>
											<td class="formtit" width="58px">날짜</td>
											<td align="center" width="3"></td>
											<td>
												<table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
												  <tr>
													<td width="65">
														<select style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
															<option >2017</option>
															<option >2016</option>
															<option >2015</option>
															<option >2014</option>
															<option >2013</option>
															<option >2012</option>
														</select>
													</td>
													<td align="center" width="6"></td>
													<td width="65">
														<select style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
															<option >01</option>
															<option >02</option>
															<option >03</option>
															<option >04</option>
															<option >05</option>
															<option >06</option>
														</select>
													</td>
													<td align="center" width="6"></td>
													<td width="65">
														<select style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
															<option >01</option>
															<option >02</option>
															<option >03</option>
															<option >04</option>
															<option >05</option>
															<option >06</option>
														</select>
													</td>
													<td>&nbsp;</td>
												  </tr>
												</table>
											</td>
										  </tr>
										  <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										  <tr>
											<td class="formtit">시간</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<select style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f1_0' name='fname[1][]'>
													<option value="">09:00</option>
													<option value="">09:00</option>
													<option value="">09:00</option>
													<option value="">09:00</option>
													<option value="">09:00</option>
													<option value="">09:00</option>
												</select>
											</td>
										  </tr>
										  <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										   <tr>
											<td class="formtit">이름</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<input type="text" style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f3_0' name='fname[3][]'>
											</td>
										  </tr>
										  <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										  <tr>
											<td class="formtit">연락처</td>
											<td align="center" width="3"></td>
											<td>
												<table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
												  <tr>
													<td width="58">
														<input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
													</td>
													<td align="center" width="6"></td>
													<td width="57"><input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;"></td>
													<td align="center" width="6"></td>
													<td width="57"><input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;"></td>
													<td>&nbsp;</td>
												  </tr>
												</table>
											</td>
										  </tr>



										  <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										  <tr>
											<td valign="top"  class="formtit" style="">상담센터</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<select style="width:207px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f4_0' name='fname[4][]'>
													<option value="">상담센터를 선택해주세요.</option>
													<option>강남센터</option>
													<option>강남센터</option>
													<option>강남센터</option>
													<option>강남센터</option>
													<option>강남센터</option>
												</select>
											</td>
										  </tr>
										  <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										  <tr>
											<td valign="top" class="formtit">문의내용</td>
											<td align="center" width="3"></td>
											<td>
												<textarea style="width:205px; height:80px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f5_0' name='fname[5][]'></textarea>
											</td>
										  </tr>
										</table>

									</td>
								  </tr>
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>

											<td colspan="3 " style="font-family:맑은 고딕; font-size:12px; color:#7a7a7a;padding:10px 0; width: 210px; padding-left: 45px;">연령대와 상담내용을 간단히 남겨주세요 </td>
										  </tr>

										</table>
									</td>
								  </tr>
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>

											<td colspan="3 " style="font-family:맑은 고딕;font-size:13px; color:#8b8b8b;padding:10px 0; letter-spacing: -1.5px;"><input type="checkbox" id='133_f6_0' name='fname[6][]' /> 개인정보 취급방침에 동의 <a href="#" style="color:#505050; font-family: 맑은 고딕; text-decoration:underline; " id="layer_open3">개인정보취급방침</a></td>
										  </tr>

										</table>
									</td>
								  </tr>
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>

											<td colspan="2 " ><img src="../../images/common/bar.png"> </td>
										  </tr>

										</table>
									</td>
								  </tr>
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>
											<td  style="padding-left: 10px;"><a href=""><img src="../../images/common/rbtn.jpg"> </a></td>
											<td ><a href=""><img src="../../images/common/ccbtn.jpg"> </a></td>
										  </tr>

										</table>
									</td>
								  </tr>
								</table>
								</form>

								</td>
							  </tr>
							</table>
						</div>
					</div>
				</section>

			</div>
		</div>END .quick_box




		<div id="quick_4" class="quick_box">
			<div style="position:relative;">
				<section class="contents">오시는길
					<div class="tit"><img src="../../images/common/tit04.jpg" alt="" /></div>
					<div class="con">
						<select style="width:260px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f4_0' name='fname[4][]'>
							<option value="">상담센터를 선택해주세요.</option>
							<option>강남센터</option>
							<option>강남센터</option>
							<option>강남센터</option>
							<option>강남센터</option>
							<option>강남센터</option>
						</select>
						<table >
							<tr>
								<td width="75px">강남센터</td>
								<td width="100px">02-1245-8959</td>
								<td  width="63px"><p class="spot">위치안내</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>강남센터</td>
								<td>02-1245-8959</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>강남센터</td>
								<td>02-1245-8959</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>강남센터</td>
								<td>02-1245-8959</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>강남센터</td>
								<td>02-1245-8959</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>강남센터</td>
								<td>02-1245-8959</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr class="last">
								<td>강남센터</td>
								<td>02-1245-8959</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>

						</table>
						<div class="pageing2">
							<a href="#none" class="prev"><img src="../../images/common/prev.png" alt="이전 페이지"></a>
							<a href="#none" class="current"><strong>1</strong></a>
							<a href="#">2</a>
							<a href="#">3</a>
							<a href="#none" class="next"><img src="../../images/common/next.png" alt="다음 페이지로"></a>
						</div>

				</section>
			</div>
		</div>END .quick_box



	</div>END .show_box

 실시간 비용 개인정보 팝업

    <div class="layer3" style="display:none;">
	<div class="bg3"></div>
	<div class="layer_area3" id="layer3" style="margin-top: -375px; margin-left: -390px;">
		<div style="width:780px; height:87px; float:left; cursor:pointer;" id="layer_close3"><img src="../../images/common/popup_tit01.png"></div>
		<div style="width:780px; height:663px; float:left; background:#ffffff;">
			<textarea style="width:720px; height:573px;float:left; margin-top:30px; margin-left:28px; border:0;" readonly="">
				내용
			</textarea>
		</div>
	</div>
</div>

 실시간 비용 개인정보 팝업


 간편카톡상담 개인정보 팝업

	<div class="layer4" style="display: none;">
	<div class="bg4"></div>
	<div class="layer_area4" id="layer4" style="margin-top: -375px; margin-left: -390px;">
		<div style="width:780px; height:87px; float:left; cursor:pointer;" id="layer_close4"><img src="../../images/common/popup_tit01.png"></div>
		<div style="width:780px; height:663px; float:left; background:#ffffff;">
			<textarea style="width:720px; height:573px;float:left; margin-top:30px; margin-left:28px; border:0;" readonly="">
				내용
			</textarea>
		</div>
	</div>
</div>

 간편카톡상담 개인정보 팝업
</div>END #quick
 -->






<!-- START #full_menu_pop -->

<div id="full_menu">

</div><!-- END #full_menu_pop -->

<!--  개인정보 on&off 스크립트#3 -->

<script type="text/javascript">
jQuery(function($){
	function layer_open(el){
		//$('.layer').addClass('open');
		$('.layer3').fadeIn();
		var temp = $('#' + el);
		if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
		else temp.css('top', '0px');
		if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
		else temp.css('left', '0px');
	}
	$('#layer_open3').click(function(){
		layer_open('layer3'); /* 열고자 하는 것의 아이디를 입력 */
		return false;
	});
	$('.layer3 .bg3').click(function(){
		$('.layer3').fadeOut();
	});
	$('#layer_close3').click(function(){
		$('.layer3').fadeOut();
		return false;
	});
	$(document).ready(function(){
	});
});
</script>

<!--  개인정보 on&off 스크립트#4 -->

<script type="text/javascript">
jQuery(function($){
	function layer_open(el){
		//$('.layer').addClass('open');
		$('.layer4').fadeIn();
		var temp = $('#' + el);
		if (temp.outerHeight() < $(document).height() ) temp.css('margin-top', '-'+temp.outerHeight()/2+'px');
		else temp.css('top', '0px');
		if (temp.outerWidth() < $(document).width() ) temp.css('margin-left', '-'+temp.outerWidth()/2+'px');
		else temp.css('left', '0px');
	}
	$('#layer_open4').click(function(){
		layer_open('layer4'); /* 열고자 하는 것의 아이디를 입력 */
		return false;
	});
	$('.layer4 .bg4').click(function(){
		$('.layer4').fadeOut();
	});
	$('#layer_close4').click(function(){
		$('.layer4').fadeOut();
		return false;
	});
	$(document).ready(function(){
	});
});
</script>


<script type="text/javascript">
<!--
    function MM_callJS(jsStr) { //v2.0
      return eval(jsStr)
    }


    function full_menu_close(){
         full_menu.style.display = "none";
    }
	 function full_menu_open(){
         full_menu.style.display = "";
    }



//-->
</script>

<script type="text/javascript">
$(document).ready(function() {
    winWidth = $(window).width();
    if( winWidth <= 1400) {
        $('#quick_mini').show();
        $('#quick').css("right", -322);
    } else {
        $('#quick_mini').hide();
        $('#quick').css("right", -322);
    }
});
</script>


<script type="text/javascript">
$(document).ready(function(){

	var open_check = 0;

	var point_check;

	function quick_open( point_check ){

		$('#quick').animate({
			right:0
		},600, 'easeInOutCubic');

		full_menu_close();


		for( var i = 1; i <= 6; i++ ){

			$('#quick_event').hide();
		//	full_menu_pop();
			if( i != point_check ){
				$('#quick_'+i).hide();
			}else{
				$('#quick_'+i).show();
				if( point_check == 2 ){
					$('.btn_close').find('img').attr('src', '../../images/common/quick_close.gif');
				}else{
					$('.btn_close').find('img').attr('src', '../../images/common/quick_close.gif');
				}
			}



		}

	}

	$('.btn_close').click(function(){
		winWidth = $(window).width();
	    if( winWidth <= 1400) {
	        $('#quick_mini').show();
	        $('#quick').animate({
				right:-322
			},600, 'easeInOutCubic');
	    } else {
	        $('#quick_mini').hide();
	        $('#quick').animate({
				right:-322
			},600, 'easeInOutCubic');

	    }
	});


	$('.icon_zone li').click(function(){

		point_check = $(this).attr('q');

		if(point_check !=7){
			quick_open(point_check);
		}else{
			/* 오른쪽 메뉴 닫아주는 소스 복사해서 붙여야함 */
			$('#quick').animate({
				right:-322
			},600, 'easeInOutCubic');
			full_menu_open();
			//////////////////////////////////////////////////

			$('#quick_mini').hide();
		}

	});

	$('#quick_mini').click(function(){

			/* 오른쪽 메뉴 닫아주는 소스 복사해서 붙여야함 */
			$('#quick').animate({
				right:0
			},600, 'easeInOutCubic');
			full_menu_open();
			//////////////////////////////////////////////////
			$('#quick .show_box').find('#quick_1').css("display", "block");
	});

	$('.quick_top_banner').click(function(){

			/* 오른쪽 메뉴 닫아주는 소스 복사해서 붙여야함 */
			$('#quick').animate({
				right:0
			},600, 'easeInOutCubic');

			$('#quick_event').show();
			for( var i = 1; i <= 6; i++ ){
				$('#quick_'+i).hide();
			}

			$('.btn_close').find('img').attr('src', '../../images/common/quick_close.gif');
			full_menu_close();
	});
});
</script>

<script type="text/javascript">
$(document).ready(function() {

  $(window).resize(function() {
    winWidth = $(window).width();
    if( winWidth <= 1400) {
        $('#quick_mini').show();
        $('#quick').css("right", -322);
    } else {
        $('#quick_mini').hide();
        $('#quick').css("right", -322);
    }
  });

});
</script>

		<!-- <div class="wrapper">
			<div class="header">
				<div class="subBg"></div>
				<div class="header-inbox">
					<div class="header-top">
						<ul class="left-area">
							<li><a href=""><img src="../../images/common/site01.gif" alt="카페"></a></li>
							<li><a href=""><img src="../../images/common/site02.gif" alt="블로그"></a></li>
							<li><a href=""><img src="../../images/common/site03.gif" alt="페이스북"></a></li>
							<li><a href=""><img src="../../images/common/site04.gif" alt="카카오톡"></a></li>
						</ul>
						<h1><a href="../../index.html"><img src="../../images/common/logo.gif" alt="로고"></a></h1>
						<ul class="right-area">
							<li><a href="">사이트맵</a></li>
							<li class="last"><a href="">주변센터찾기</a></li>
						</ul>
					</div>
					<div class="header-bottom">
									gnb 시작
					    <div id="gnbarea">

						   <ul class="gnb clear">
							  <li class="li01"><a href="../sub01/sub0101.html"><img src="../../images/common/gnb01.gif">소개</a>
								 <div class="subWrap sub01">
									<ul>
									    <li><a href="../sub01/sub0101.html">My story is</a></li>
									    <li><a href="../sub01/sub0102.html">마이스토리 이용안내</a></li>
									    <li><a href="../sub01/sub0103_list.html">가까운센터 둘러보기</a></li>
									    <li><a href="../sub01/sub0104.html">마이스토리 사람들</a></li>
									    <li><a href="../sub01/sub0105_list.html">마이스토리 방송이야기</a></li>
									    <li><a href="../sub01/sub0106.html">센터 운영 문의</a></li>
									</ul>
								 </div>
							  </li>
							  <li class="li02"><a href=" sub0201_list.html">예약/커뮤니티</a>
								 <div class="subWrap sub02">
									<ul>
									    <li><a href=" sub0201_list.html">온라인상담</a></li>
									    <li><a href=" sub0202_01.html">온라인 실시간 예약</a></li>
									    <li><a href=" sub0203_list.html">마이스토리 공지사항</a></li>
									    <li><a href=" sub0204_list.html">TODAY 심리컬럼</a></li>
									    <li><a href=" sub0205_list.html">책으로 만나는 심리산책</a></li>
									    <li><a href=" sub0206_list.html">자주하는 질문</a></li>
									</ul>
								 </div>
							  </li>
							  <li class="li03"><a href="../sub03/sub0301.html">아이심리상담</a>
								 <div class="subWrap sub03">
									<ul>
									    <li><a href="../sub03/sub0301.html">ADHD</a></li>
									    <li><a href="../sub03/sub0302.html">아동청소년우울</a></li>
									    <li><a href="../sub03/sub0303.html">문제행동</a></li>
									    <li><a href="../sub03/sub0304.html">불안</a></li>
									    <li><a href="../sub03/sub0305.html">스마트 폰 게임 중독</a></li>
									    <li><a href="../sub03/sub0306.html">학교 부적응, 따돌림</a></li>
										<li><a href="../sub03/sub0307.html">학급부진, 학습장애</a></li>
										<li><a href="../sub03/sub0308.html">틱장애</a></li>
									</ul>
								 </div>
							  </li>
							  <li class="li04"><a href="../sub04/sub0401.html">성인심리상담</a>
								 <div class="subWrap sub04">
									<ul>
									    <li><a href="../sub04/sub0401.html">우울증상</a></li>
									    <li><a href="../sub04/sub0402.html">불안증상</a></li>
									    <li><a href="../sub04/sub0403.html">성경문제행동</a></li>
									    <li><a href="../sub04/sub0404.html">중독</a></li>
									    <li><a href="../sub04/sub0405.html">정신분열</a></li>
									    <li><a href="../sub04/sub0406.html">부부상담</a></li>
									    <li><a href="../sub04/sub0407.html">가족상담</a></li>
									</ul>
								 </div>
							  </li>
							  <li class="li05"><a href="../sub05/sub0501.html" class="last">심리치료프로그램</a>
								 <div class="subWrap sub05">
									<ul>
									    <li><a href="../sub05/sub0501.html">개인상담치료</a></li>
									    <li><a href="../sub05/sub0502.html">미술심리치료</a></li>
									    <li><a href="../sub05/sub0503.html">놀이심리치료</a></li>
									    <li><a href="../sub05/sub0504.html">연극심리치료</a></li>
									    <li><a href="../sub05/sub0505.html">독서심리치료</a></li>
									    <li><a href="../sub05/sub0506.html">음악심리치료</a></li>
									    <li><a href="../sub05/sub0507.html">언어치료</a></li>
									    <li><a href="../sub05/sub0508.html">학습치료-진로상담</a></li>
									</ul>
								 </div>
							  </li>
							  <li class="li06"><a href="../sub06/sub0601.html" class="last">심리검사프로그램</a>
								 <div class="subWrap sub06">
									<ul>
										<li><a href="../sub06/sub0601.html">종합심리평가</a></li>
									    <li><a href="../sub06/sub0602.html">종합정서평가</a></li>
									    <li><a href="../sub06/sub0603.html">영유아 발달검사</a></li>
									    <li><a href="../sub06/sub0604.html">학슴 및 진로 종합평가</a></li>
									    <li><a href="../sub06/sub0605.html">영유아 놀이평가</a></li>
									    <li><a href="../sub06/sub0606.html">언어평가</a></li>
									</ul>
								 </div>
							  </li>
							  <li class="li07"><a href="../sub07/sub0701.html" class="last">기업상담프로그램</a>
								 <div class="subWrap sub07">
									<ul>
									    <li><a href="../sub07/sub0701.html">마이스토리 기업상담</a></li>
									    <li><a href="../sub07/sub0702.html">기업상담진행절차</a></li>
									    <li><a href="../sub07/sub0703_01.html">실시간 기업상담예약</a></li>
									    <li><a href="../sub07/sub0704.html">기업상담사례모음</a></li>
									    <li><a href="../sub07/sub0705.html">심리 강의 교육</a></li>
									</ul>
								 </div>
							  </li>
						   </ul>
					    </div>

					//gnb 끝
					</div>
				</div>
			</div> -->
			<div class="sub-content">
				<!-- <div class="bg02area">
					<p class="tit">예약/커뮤니티</p>
				</div> -->
				<div class="sub-content-inbox">
					<ul class="sub-menu2">
						<li class="act"><a href="sub0201_list.html">온라인상담</a></li>
						<li><a href="sub0202_01.html">온라인 실시간예약</a></li>
						<li><a href="sub0203_list.html">마이스토리 공지사항</a></li>
						<li><a href=" sub0204_list.html">마이스토리 심리 컬럼</a></li>
						<li><a href="sub0205_list.html">책으로 만나는 심리이야기</a></li>
						<li class="last"><a href="sub0206_list.html">자주하는 질문</a></li>
					</ul>
					<h3>온라인 상담</h3>
					<p class="sub02_txt">
						마이스토리에 남겨주신 소중한 이야기는 내담자 보호 규정에 따라 철저히 비밀 보장 되며 병원과 달리 절대 기록이 남지 않습니다.<br />
						<span>답변은 질문 내용에 따라 분류되어 해당 분야 전문선생님에 의해 성실이 이루어집니다. <br />
						답변 순서는 각 센터별 전문가 선생님들의 여건에 따라 달라질 수 있음을 양해해 주시기 바랍니다.</span><br />
					</p>
					<div class="resev-box">
						<p class="listnum">총 <span>88</span>건 1/9</p>
						<p class="reserv-btn">실시간예약 바로가기</p>
					</div>
					<table width="100%" class="view-board01">
						<colgroup>
							<col width="" />
						</colgroup>
						<thead>
						<tr>
							<th scope="col">
								<div class="tit"><span class="mark">제목 : </span>${consultingmodel.c_title }</div>
							</th>
							<th></th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>
								<div class="board-infor">
									<strong>작성자</strong>
									<span>${ consultingmodel.m_id}</span>
									<span class="line"><img src="../../images/sub/line.jpg" class="vertical-m"  alt="" /></span>
									<strong>작성일</strong>
									<span><fmt:formatDate value="${consultingmodel.c_date}" pattern="yyyy.MM.dd"/></span>
							
								</div>
							</td>
						</tr>
						<tr><th>상담 내용</th></tr>
						<tr>
							<td class="dmc_content content">
								
${consultingmodel.c_content }
							</td>
						</tr>
						<!-- <tr>
							<td class="recontent">
								<p class="retit"><img src="../../images/sub/redat.gif">[답변 입니다!!]</p>
								<div class="recont">
									
								</div>
							</td>
						</tr> -->
					</tbody>
				</table>
					<div class="viewbtn">
					<c:if test="${session_member_id != 1 }">
					<c:url var="replyURL" value="consultingReply.do">
								<c:param name="c_ref" value="${consultingmodel.c_ref }"/>
								<c:param name="c_number" value="${consultingmodel.c_number }"/>
							</c:url>
						<%-- 	<c:if test="${isReply.equals('noReply') }"> --%>
							<a href="${replyURL}" class="storywrite">관리자 답변달기</a> 
			<%-- 	</c:if> --%>
 				</c:if>
						<p class="btn01 list"><input type="button" value="목록" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingList.do'"></p>
						<div class="area">
							<p class="btn01"><input type="button" value="수정" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingModify.do?c_number=${consultingmodel.c_number }'"></p>
							<p class="btn02"><input type="button" value="삭제" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingDeletePro.do?c_number=${consultingmodel.c_number }'"></p>
						</div>
					</div>
				</div>
			</div>
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
