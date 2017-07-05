<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>마이스토리</title>
	<meta http-equiv="Content-Type" content="text/html;charset=euc-kr" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="심리상담센터, 종합심리상담전국센터, 영유아발달,청소년상담,부부가족, 개별전문상담" />
	<meta name="naver-site-verification" content="ee8b8b596dbdfa38665d15d5a9ae0935d8e543fd"/>
	<link rel="stylesheet" href="/css/style.css?v=170621_2" />
	<link rel="stylesheet" href="/css/default.css" />
	<link rel="stylesheet" href="/css/demo.css">
	
	<!--JQUERY-->
	<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.js"></script>
	<script type="text/javascript" src="/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script type="text/javascript" src="/js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="/js/jquery.rolling.js"></script>
	<script type="text/javascript" src="/js/common.js"></script>
	<script type="text/javascript" src="/js/gallery.js"></script>
	<script type="text/javascript" src="/js/menu.js"></script>
	
	<!--bjqs-->
	<link rel="stylesheet" href="/css/bjqs.css">
	<script type="text/javascript" src="/js/bjqs-1.3.min.js"></script>

</head>

<body>
<%-- <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-86179168-1', 'auto');
  ga('send', 'pageview');

</script><!-- Withpang Tracker v3.0 [결제] start -->
<script src="http://cdn.megadata.co.kr/js/enliple_min2.js"></script>
<script type="text/javascript">
function mobon_conv(){
	var cn = new EN();
	cn.setData("uid",  "mystoryis");
	cn.setData("ordcode",  "");
	cn.setData("qty", "1"); 
	cn.setData("price", "1"); 
	cn.setData("pnm", encodeURIComponent(encodeURIComponent("counsel")));
	cn.sendConv();
}
</script>
<!-- Withpang Tracker v3.0 [결제] end -->
<script type="text/javascript">
        function textarea_maxlength(obj){
          var maxLength = parseInt(obj.getAttribute("maxlength"));
	      if(obj.value.length>maxLength) {
	         alert('글자수가 '+(obj.value.length-1)+'자 이내로 제한됩니다');
		     obj.value=obj.value.substring(0,maxLength);
	      }
        }
        function regOnlineReserve(form){
		form.reserve_date.value = form.reserve_year.value + form.reserve_month.value + form.reserve_day.value;
		if(form.reserve_date.value.trim() == ""){
			alert("예약일자를 선택해주세요.");
			return;
		}
		if(form.name.value.trim() == ""){
			alert("이름을 입력해주세요.");
			form.name.focus();
			return;
		}
		if(form.phone2.value.trim() == ""){
			alert("연락처를 입력해주세요.");
			form.phone2.focus();
			return;
		}
		if(form.phone2.value.trim().length != 3 && form.phone2.value.trim().length != 4 ){
			alert("연락처를 입력해주세요.");
			form.phone2.focus();
			return;
		}
		if(form.phone3.value.trim() == ""){
			alert("연락처를 입력해주세요.");
			form.phone3.focus();
			return;
		}
		if(form.phone3.value.trim().length != 4){
			alert("연락처를 입력해주세요.");
			form.phone3.focus();
			return;
		}
		var phone = form.phone1.value.trim() + form.phone2.value.trim() + form.phone3.value.trim();
		if(phone.length < 10){
			alert("연락처를 정확히 입력해주세요.");
			return;
		}
		if(form.center_code.value.trim() == ""){
			alert("센터를 선택해주세요.");
			form.center_code.focus();
			return;
		}
		if(form.reason.value.trim() == ""){
			alert("상담신청사유를 입력해주세요.");
			form.reason.focus();
			return;
		}
		if(form.chk_res_info_yn.checked != true){
			alert("개인정보 취급방침에 동의해주세요.");
			form.chk_res_info_yn.focus();
			return;
		}
		var Year = form.reserve_year.value;
		var Month = form.reserve_month.value;
		var Day = form.reserve_day.value;
		//var Time = form.reserve_time.value;
		var Hour = form.reserve_time.value.substr(0,2);
		var Minute = form.reserve_time.value.substr(2,2);
		var strDate = Year + "년 " + Month + "월 " + Day + "일 " + Hour + "시 " +  Minute + "분";
		
		if(confirm(strDate + " 예약하시겠습니까?")) {
			form.name.value = form.name.value.trim();
			form.phone1.value = form.phone1.value.trim();
			form.phone2.value = form.phone2.value.trim();
			form.phone3.value = form.phone3.value.trim();
			form.reason.value = form.reason.value.trim();
			form.reserve_hour.value = Hour;
			form.reserve_minute.value = Month;
			
			mobon_conv();
			
			form.action = "/quick/action/online_reserve_join.asp";
			form.submit();
		}
	}
	function regSmsInquery(form){
		if(form.name.value.trim() == ""){
			alert("이름을 입력해주세요.");
			form.name.focus();
			return;
		}
		if(form.phone2.value.trim() == ""){
			alert("연락처를 입력해주세요.");
			form.phone2.focus();
			return;
		}
		if(form.phone2.value.trim().length != 3 && form.phone2.value.trim().length != 4 ){
			alert("연락처를 입력해주세요.");
			form.phone2.focus();
			return;
		}
		if(form.phone3.value.trim() == ""){
			alert("연락처를 입력해주세요.");
			form.phone3.focus();
			return;
		}
		if(form.phone3.value.trim().length != 4){
			alert("연락처를 입력해주세요.");
			form.phone3.focus();
			return;
		}
		var phone = form.phone1.value.trim() + form.phone2.value.trim() + form.phone3.value.trim();
		if(phone.length < 10){
			alert("연락처를 정확히 입력해주세요.");
			return;
		}
		if(form.center_code.value.trim() == ""){
			alert("센터를 선택해주세요.");
			form.center_code.focus();
			return;
		}
		if(form.content.value.trim() == ""){
			alert("문의내용을 입력해주세요.");
			form.content.focus();
			return;
		}
		if(form.chk_sms_inquery_yn.checked != true){
			alert("개인정보 취급방침에 동의해주세요.");
			form.chk_sms_inquery_yn.focus();
			return;
		}
		if(confirm("등록하시겠습니까?")) {
			form.name.value = form.name.value.trim();
			form.phone1.value = form.phone1.value.trim();
			form.phone2.value = form.phone2.value.trim();
			form.phone3.value = form.phone3.value.trim();
			form.content.value = form.content.value.trim();
			mobon_conv();
			form.action = "/quick/action/sms_inquery_join.asp";
			form.submit();
		}
	}
</script>
<script>
       function showQR(v){
		if(v == "mystorygn") {
			document.getElementById("mystorygn").style.display = ""; // 보여줌
			document.getElementById("mystorybs").style.display = "none"; // 숨김
			document.getElementById("mystoryus").style.display = "none"; // 숨김
			document.getElementById("mystorycw").style.display = "none"; // 숨김
			document.getElementById("mystorykd").style.display = "none"; // 숨김
			document.getElementById("mystoryis").style.display = "none"; // 숨김
			document.getElementById("mystoryys").style.display = "none"; // 숨김
		}else if (v == "mystorybs") {
			document.getElementById("mystorybs").style.display = ""; // 보여줌
			document.getElementById("mystorygn").style.display = "none"; // 숨김
			document.getElementById("mystoryus").style.display = "none"; // 숨김
			document.getElementById("mystorycw").style.display = "none"; // 숨김
			document.getElementById("mystorykd").style.display = "none"; // 숨김
			document.getElementById("mystoryis").style.display = "none"; // 숨김
			document.getElementById("mystoryys").style.display = "none"; // 숨김
		}else if (v == "mystoryus") {
			document.getElementById("mystoryus").style.display = ""; // 보여줌
			document.getElementById("mystorygn").style.display = "none"; // 숨김
			document.getElementById("mystorybs").style.display = "none"; // 숨김
			document.getElementById("mystorycw").style.display = "none"; // 숨김
			document.getElementById("mystorykd").style.display = "none"; // 숨김
			document.getElementById("mystoryis").style.display = "none"; // 숨김
			document.getElementById("mystoryys").style.display = "none"; // 숨김
		}else if (v == "mystorycw") {
			document.getElementById("mystorycw").style.display = ""; // 보여줌
			document.getElementById("mystorygn").style.display = "none"; // 숨김
			document.getElementById("mystorybs").style.display = "none"; // 숨김
			document.getElementById("mystoryus").style.display = "none"; // 숨김
			document.getElementById("mystorykd").style.display = "none"; // 숨김
			document.getElementById("mystoryis").style.display = "none"; // 숨김
			document.getElementById("mystoryys").style.display = "none"; // 숨김
		}else if (v == "mystorykd") {
		document.getElementById("mystorykd").style.display = ""; // 보여줌
		document.getElementById("mystorycw").style.display = "none"; // 숨김
		document.getElementById("mystorygn").style.display = "none"; // 숨김
		document.getElementById("mystorybs").style.display = "none"; // 숨김
		document.getElementById("mystoryus").style.display = "none"; // 숨김
		document.getElementById("mystoryis").style.display = "none"; // 숨김
		document.getElementById("mystoryys").style.display = "none"; // 숨김
		}else if (v == "mystoryis") {
			document.getElementById("mystoryis").style.display = ""; // 보여줌
			document.getElementById("mystorycw").style.display = "none"; // 숨김
			document.getElementById("mystorygn").style.display = "none"; // 숨김
			document.getElementById("mystorybs").style.display = "none"; // 숨김
			document.getElementById("mystoryus").style.display = "none"; // 숨김
			document.getElementById("mystorykd").style.display = "none"; // 숨김
			document.getElementById("mystoryys").style.display = "none"; // 숨김
		}else if (v == "mystoryys") {
			document.getElementById("mystoryys").style.display = ""; // 보여줌
			document.getElementById("mystorycw").style.display = "none"; // 숨김
			document.getElementById("mystorygn").style.display = "none"; // 숨김
			document.getElementById("mystorybs").style.display = "none"; // 숨김
			document.getElementById("mystoryus").style.display = "none"; // 숨김
			document.getElementById("mystorykd").style.display = "none"; // 숨김
			document.getElementById("mystoryis").style.display = "none"; // 숨김
		}
	}
</script>
<div id="quick">
	<div class="quickclose open ">CLOSE</div>
	<div class="btn_area">
		<ul class="icon_zone">
			<li q="1"><img src="/images/common/quick_tit.jpg" border="0" alt="마이스토리" /></li>
			<li q="1"><img src="/images/common/quick01.png" border="0" alt="카카오톡예약상담" /></li>
			<li q="2"><img src="/images/common/quick02.png" border="0" alt="실시간전화예약" /></li>
			<li q="3"><img src="/images/common/quick03.png" border="0" alt="실시간온라인예약" /></li>
			<li q="4"><img src="/images/common/quick04.png" border="0" alt="오시는길" /></li>
		</ul>
		<p style="text-align:right;"><img src="/images/common/quick05_01.jpg" border="0" alt="상담 운영시간" /></p>
		<!--<div class="s-center">
			<p>주변센터찾기</p>
			<input type="text" class="tbox">
			<input type="button" class="sbtn">
		</div>-->
	</div>
	<!-- END .btn_area -->
	<div class="show_box">
		<div class="btn_close"><img src="/images/common/quick_close.png" border="0" alt="닫기" /></div>
		<div id="quick_1" class="quick_box">
			<div style="position:relative;">
				<section class="contents"><!-- 카톡 상담 -->
					<div class="tit"><img src="/images/common/tit01.jpg" alt="카카오톡 상담"></div>
					<div class="contents">
						<div class="con">
							<select onchange="showQR(this.value);">
								<option value="mystorygn">강남본점</option>
								<option value="mystorybs">부산센터</option>
								<option value="mystoryus">울산센터</option>
								<option value="mystorycw">창원센터</option>
								<option value="mystorykd">강동센터</option>
								<option value="mystoryis">일산센터</option>
								<option value="mystoryys">양산센터</option>
								<option value="mystorybd">분당센터</option>
							</select>
							<div id="mystorygn" style="display:show"> 
								<div class="qr"><img src="/images/qr/gn_mystorygn.jpg" alt="큐알코드"></div>
								<div class="qrid">ID &nbsp:&nbsp mystorygn</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="친구추가하기"></a>-->&nbsp;</div>
								<p class="qrtxt">
									아래 코드를 스캔하면 카카오톡<br/>
									친구를 바로 추가할 수 있습니다.<br/>
									<br/>
									QR코드 등록이 어려우신분은<br/>
									카카오톡 아이디검색에 <span>마이스토리</span>를 검색하세요.<br/>
									친구등록 후 자세한 상담이 가능합니다.<br/>
								</p>
							</div>
							
							<div id="mystorybs" style="display:none">
								<div class="qr"><img src="/images/qr/bs_mystorybs.jpg" alt="큐알코드"></div>
								<div class="qrid">ID &nbsp:&nbsp mystorybs</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="친구추가하기"></a>-->&nbsp;</div>
								<p class="qrtxt">
									아래 코드를 스캔하면 카카오톡<br/>
									친구를 바로 추가할 수 있습니다.<br/>
									<br/>
									QR코드 등록이 어려우신분은<br/>
									카카오톡 아이디검색에 <span>마이스토리</span>를 검색하세요.<br/>
									친구등록 후 자세한 상담이 가능합니다.<br/>
								</p>
							</div>
							
							<div id="mystoryus" style="display:none"> 
								<div class="qr"><img src="/images/qr/us_mystoryus.jpg" alt="큐알코드"></div>
								<div class="qrid">ID &nbsp:&nbsp mystoryus</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="친구추가하기"></a>-->&nbsp;</div>
								<p class="qrtxt">
									아래 코드를 스캔하면 카카오톡<br/>
									친구를 바로 추가할 수 있습니다.<br/>
									<br/>
									QR코드 등록이 어려우신분은<br/>
									카카오톡 아이디검색에 <span>마이스토리</span>를 검색하세요.<br/>
									친구등록 후 자세한 상담이 가능합니다.<br/>
								</p>
							</div>
							
							<div id="mystorycw" style="display:none"> 
								<div class="qr"><img src="/images/qr/cw_mystorycw.jpg" alt="큐알코드"></div>
								<div class="qrid">ID &nbsp:&nbsp mystorycw</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="친구추가하기"></a>-->&nbsp;</div>
								<p class="qrtxt">
									아래 코드를 스캔하면 카카오톡<br/>
									친구를 바로 추가할 수 있습니다.<br/>
									<br/>
									QR코드 등록이 어려우신분은<br/>
									카카오톡 아이디검색에 <span>마이스토리</span>를 검색하세요.<br/>
									친구등록 후 자세한 상담이 가능합니다.<br/>
								</p>
							</div>
							
							<div id="mystorykd" style="display:none"> 
								<div class="qr"><img src="/images/qr/kd_mystorykd.jpg" alt="큐알코드"></div>
								<div class="qrid">ID &nbsp:&nbsp mystorykd</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="친구추가하기"></a>-->&nbsp;</div>
								<p class="qrtxt">
									아래 코드를 스캔하면 카카오톡<br/>
									친구를 바로 추가할 수 있습니다.<br/>
									<br/>
									QR코드 등록이 어려우신분은<br/>
									카카오톡 아이디검색에 <span>마이스토리</span>를 검색하세요.<br/>
									친구등록 후 자세한 상담이 가능합니다.<br/>
								</p>
							</div>
							
							<div id="mystoryis" style="display:none"> 
								<div class="qr"><img src="/images/qr/is_mystoryis.jpg" alt="큐알코드"></div>
								<div class="qrid">ID &nbsp:&nbsp mystoryis</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="친구추가하기"></a>-->&nbsp;</div>
								<p class="qrtxt">
									아래 코드를 스캔하면 카카오톡<br/>
									친구를 바로 추가할 수 있습니다.<br/>
									<br/>
									QR코드 등록이 어려우신분은<br/>
									카카오톡 아이디검색에 <span>마이스토리</span>를 검색하세요.<br/>
									친구등록 후 자세한 상담이 가능합니다.<br/>
								</p>
							</div>
							
							<div id="mystoryys" style="display:none"> 
								<div class="qr"><img src="/images/qr/ys_mystoryys.jpg" alt="큐알코드"></div>
								<div class="qrid">ID &nbsp:&nbsp mystoryys</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="친구추가하기"></a>-->&nbsp;</div>
								<p class="qrtxt">
									아래 코드를 스캔하면 카카오톡<br/>
									친구를 바로 추가할 수 있습니다.<br/>
									<br/>
									QR코드 등록이 어려우신분은<br/>
									카카오톡 아이디검색에 <span>마이스토리</span>를 검색하세요.<br/>
									친구등록 후 자세한 상담이 가능합니다.<br/>
								</p>
							</div>

								<div id="mystorybd" style="display:none"> 
								<div class="qr"><img src="/images/qr/bd_mystorybd.jpg" alt="큐알코드"></div>
								<div class="qrid">ID &nbsp:&nbsp mystorybd</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="친구추가하기"></a>-->&nbsp;</div>
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
					</div>
				</section>
			</div>
		</div><!-- END .quick_box -->
		
		<div id="quick_3" class="quick_box">
			<div style="position:relative;">
				<div class="tit"><img src="/images/common/tit03.jpg" /></div>
				<section class="contents"><!-- sms비용상담 -->
					<div class="con">
						<table width="265px !important;" style="margin-top: 41px;" border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td>
							<form name="frmSmsInquery" method="post">
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
											<input type="text" name="name" id="name" maxlength="20" style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
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
													<select name="phone1" id="phone1" style="width:60px;height:30px">
														 <option value="010">010</option>
														 <option value="011">011</option>
														 <option value="016">016</option>
														 <option value="017">017</option>
														 <option value="018">018</option>
														 <option value="019">019</option>
													</select>
												</td>
												<td align="center" width="6"></td>
												<td width="57"><input type="text" name="phone2" id="phone2" maxlength="4" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;ime-mode: disabled;" onkeypress="return onlyNumber();"></td>
												<td align="center" width="6"></td>
												<td width="57"><input type="text" name="phone3" id="phone3" maxlength="4" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;ime-mode: disabled;" onkeypress="return onlyNumber();"></td>
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
											<select name="center_code" id="center_code" style="width:207px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">

                                    <option value="CT0001">강남센터</option>

                                    <option value="CT0002">일산센터</option>

                                    <option value="CT0003">창원센터</option>

                                    <option value="CT0004">울산센터</option>

                                    <option value="CT0005">부산센터</option>

                                    <option value="CT0007">강동센터</option>

                                    <option value="CT0008">양산센터</option>

                                    <option value="CT0009">분당센터</option>

                                    <option value="CT0010">창원센터(두산중공업)</option>

                                    <option value="CT0011">기업심리상담센터</option>

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
											<select name="call_rcv" id="call_rcv" style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
												<option value="0900">09:00</option>
												<option value="0930">09:30</option>
												<option value="1000">10:00</option>
												<option value="1030">10:30</option>
												<option value="1100">11:00</option>
												<option value="1130">11:30</option>
												<option value="1200">12:00</option>
												<option value="1230">12:30</option>
												<option value="1300">13:00</option>
												<option value="1330">13:30</option>
												<option value="1400">14:00</option>
												<option value="1430">14:30</option>
												<option value="1500">15:00</option>
												<option value="1530">15:30</option>
												<option value="1600">16:00</option>
												<option value="1630">16:30</option>
												<option value="1700">17:00</option>
												<option value="1730">17:30</option>
												<option value="1800">18:00</option>
												<option value="1830">18:30</option>
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
											<select id="age" name="age" style="width:207px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
												<option value="10">10대</option>
												<option value="20">20대</option>
												<option value="30">30대</option>
												<option value="40">40대</option>
												<option value="50">50대</option>
												<option value="60">60대이상</option>
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
											<textarea name="content" id="content" style="width:205px; height:80px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" maxlength="200" onkeyup="return textarea_maxlength(this)"></textarea>
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
										<td colspan="3 " style="font-family:맑은 고딕;font-size:13px; color:#8b8b8b;padding:10px 0; letter-spacing: -1.5px;"><input type="checkbox" id='chk_sms_inquery_yn' name='chk_sms_inquery_yn' /> 개인정보 취급방침에 동의 <a href="#" style="color:#505050; font-family: 맑은 고딕; text-decoration:underline; " id="layer_open3">개인정보취급방침</a></td>
									  </tr>
									</table>
								</td>
							  </tr>
							  <tr>
								<td>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
									  <tr>
										<td colspan="3 " ><img src="/images/common/bar.png"> </td>
									  </tr>
									</table>
								</td>
							  </tr>
							  <tr>
								<td>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
									  <tr>
										<td  style="padding-left: 10px;"><a href="javascript:void(0);" onclick="regSmsInquery(document.frmSmsInquery);"><img src="/images/common/rbtn.jpg"> </a></td>
										<td ><a href="/index.html"><img src="/images/common/ccbtn.jpg"> </a></td>
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
		</div>
		<!-- END .quick_box -->
		
		<div id="quick_2" class="quick_box">
			<div style="position:relative;">
				<section class="contents"><!-- 온라인예약  -->
					<div class="tit"><img src="/images/common/tit02.jpg"></div>
					<div class="contents">
						<div class="con">
							<table width="265px !important;" border="0" cellspacing="0" cellpadding="0">
							  <tr>
								<td>
								<form name="frmOnlineReserveInfo" method="post">
								<input type="hidden" name="reserve_date" value="">
								<input type="hidden" name="reserve_hour" value="">
								<input type="hidden" name="reserve_minute" value="">
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
														<select name="reserve_year" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
															
															<option value="2017">2017</option>
															
															<option value="2018">2018</option>
															
														</select>
													</td>
													<td align="center" width="6"></td>
													<td width="65">
														<select name="reserve_month" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
															<option value="01" >01</option>
															<option value="02" >02</option>
															<option value="03" >03</option>
															<option value="04" >04</option>
															<option value="05" >05</option>
															<option value="06" >06</option>
															<option value="07" selected>07</option>
															<option value="08" >08</option>
															<option value="09" >09</option>
															<option value="10" >10</option>
															<option value="11" >11</option>
															<option value="12" >12</option>
														</select>
													</td>
													<td align="center" width="6"></td>
													<td width="65">
														<select name="reserve_day" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
															<option value="01" >01</option>
															<option value="02" >02</option>
															<option value="03" >03</option>
															<option value="04" >04</option>
															<option value="05" selected>05</option>
															<option value="06" >06</option>
															<option value="07" >07</option>
															<option value="08" >08</option>
															<option value="09" >09</option>
															<option value="10" >10</option>
															<option value="11" >11</option>
															<option value="12" >12</option>
															<option value="13" >13</option>
															<option value="14" >14</option>
															<option value="15" >15</option>
															<option value="16" >16</option>
															<option value="17" >17</option>
															<option value="18" >18</option>
															<option value="19" >19</option>
															<option value="20" >20</option>
															<option value="21" >21</option>
															<option value="22" >22</option>
															<option value="23" >23</option>
															<option value="24" >24</option>
															<option value="25" >25</option>
															<option value="26" >26</option>
															<option value="27" >27</option>
															<option value="28" >28</option>
															<option value="29" >29</option>
															<option value="30" >30</option>
															<option value="31" >31</option>
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
												<select name="reserve_time" style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
													<option value="0900">09:00</option>
													<option value="0930">09:30</option>
													<option value="1000">10:00</option>
													<option value="1030">10:30</option>
													<option value="1100">11:00</option>
													<option value="1130">11:30</option>
													<option value="1200">12:00</option>
													<option value="1230">12:30</option>
													<option value="1300">13:00</option>
													<option value="1330">13:30</option>
													<option value="1400">14:00</option>
													<option value="1430">14:30</option>
													<option value="1500">15:00</option>
													<option value="1530">15:30</option>
													<option value="1600">16:00</option>
													<option value="1630">16:30</option>
													<option value="1700">17:00</option>
													<option value="1730">17:30</option>
													<option value="1800">18:00</option>
													<option value="1830">18:30</option>
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
												<input type="text" name="name" id="name" maxlength="20" style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
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
														<!--<input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">-->
														<select name="phone1" id="phone1" style="width:60px;height:30px">
															 <option value="010">010</option>
															 <option value="011">011</option>
															 <option value="016">016</option>
															 <option value="017">017</option>
															 <option value="018">018</option>
															 <option value="019">019</option>
														</select>
													</td>
													<td align="center" width="6"></td>
													<td width="57"><input type="text" name="phone2" id="phone2"  maxlength="4" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;ime-mode: disabled;" onkeypress="return onlyNumber();"></td>
													<td align="center" width="6"></td>
													<td width="57"><input type="text" name="phone3" id="phone3"  maxlength="4" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;ime-mode: disabled;" onkeypress="return onlyNumber();"></td>
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
												<select name="center_code" id="center_code" style="width:207px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
													<option value="">센터를 선택해주세요</option>

                                    <option value="CT0001">강남센터</option>

                                    <option value="CT0002">일산센터</option>

                                    <option value="CT0003">창원센터</option>

                                    <option value="CT0004">울산센터</option>

                                    <option value="CT0005">부산센터</option>

                                    <option value="CT0007">강동센터</option>

                                    <option value="CT0008">양산센터</option>

                                    <option value="CT0009">분당센터</option>

                                    <option value="CT0010">창원센터(두산중공업)</option>

                                    <option value="CT0011">기업심리상담센터</option>

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
												<textarea name="reason" id="reason" style="width:205px; height:80px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" maxlength="200" onkeyup="return textarea_maxlength(this)"></textarea>
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
											<td colspan="3" style="font-family:맑은 고딕;font-size:13px; color:#8b8b8b;padding:10px 0; letter-spacing: -1.5px;"><input type="checkbox" id='chk_res_info_yn' name='chk_res_info_yn' /> 개인정보 취급방침에 동의 <a href="#" style="color:#505050; font-family: 맑은 고딕; text-decoration:underline; " id="layer_open3">개인정보취급방침</a></td>
										  </tr>
										</table>
									</td>
								  </tr>
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>
											<td colspan="2 " ><img src="/images/common/bar.png"> </td>
										  </tr>
										</table>
									</td>
								  </tr>
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>
											<td style="padding-left: 10px;"><a href="javascript:void(0);" onclick="regOnlineReserve(document.frmOnlineReserveInfo)"><img src="/images/common/rbtn.jpg"> </a></td>
											<td ><a href="/index.html"><img src="/images/common/ccbtn.jpg"> </a></td>
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
		</div>
		<!-- END .quick_box -->
		
		<div id="quick_4" class="quick_box">
			<div style="position:relative;">
				<section class="contents"><!-- 오시는길 -->
					<div class="tit"><img src="/images/common/tit04.jpg" alt="" /></div>
					<div class="con">
						<select style="width:260px; height:33px; border:2px solid #d1d1d1; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" name="select"  onchange="if(this.value) location.href=(this.value);">
							<option value="">상담센터를 선택해주세요.</option>
							<option value="/sub/sub01/sub0103_view.html">강남본점</option>
							<option value="/sub/sub01/sub0103_view2.html">부산센터</option>
							<option value="/sub/sub01/sub0103_view3.html">울산센터</option>
							<option value="/sub/sub01/sub0103_view4.html">창원센터</option>
							<option value="/sub/sub01/sub0103_view5.html">강동센터</option>
							<option value="/sub/sub01/sub0103_view6.html">일산센터</option>
							<option value="/sub/sub01/sub0103_view7.html">양산센터</option>
							<option value="/sub/sub01/sub0103_view7.html">분당센터</option>
						</select>
						<table >
							<tr>
								<td width="75px">강남본점</td>
								<td width="100px">02- 557-1275</td>
								<td  width="63px"><p class="spot">위치안내</p></td>
								<td><a href="/sub/sub01/sub0103_view.html"><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">부산센터</td>
								<td width="100px">051-781-5412</td>
								<td  width="63px"><p class="spot">위치안내</p></td>
								<td><a href="/sub/sub01/sub0103_view2.html"><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">울산센터</td>
								<td width="100px">052-266-5412</td>
								<td  width="63px"><p class="spot">위치안내</p></td>
								<td><a href="/sub/sub01/sub0103_view3.html"><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">창원센터</td>
								<td width="100px">055-284-5412</td>
								<td  width="63px"><p class="spot">위치안내</p></td>
								<td><a href="/sub/sub01/sub0103_view4.html"><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">강동센터</td>
								<td width="100px">02-404-5412</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href="/sub/sub01/sub0103_view5.html"><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">일산센터</td>
								<td width="100px">031-924-1271</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href="/sub/sub01/sub0103_view6.html"><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">양산센터</td>
								<td width="100px">055-372-1275</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href="/sub/sub01/sub0103_view7.html"><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">분당센터</td>
								<td width="100px">031-714-1255</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href="/sub/sub01/sub0103_view8.html"><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<!--<tr>
								<td>강남본점</td>
								<td>02-1245-8959</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href=""><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>강남본점</td>
								<td>02-1245-8959</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href=""><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>강남본점</td>
								<td>02-1245-8959</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href=""><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>강남본점</td>
								<td>02-1245-8959</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href=""><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>강남본점</td>
								<td>02-1245-8959</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href=""><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr class="last">
								<td>강남본점</td>
								<td>02-1245-8959</td>
								<td><p class="spot">위치안내</p></td>
								<td><a href=""><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>-->
						</table>
						<!--<div class="pageing2">
							<a href="#none" class="prev"><img src="/images/common/prev.png" alt="이전 페이지"></a>
							<a href="#none" class="current"><strong>1</strong></a>
							<a href="#">2</a>
							<a href="#">3</a>
							<a href="#none" class="next"><img src="/images/common/next.png" alt="다음 페이지로"></a>
						</div>-->
				</section>
			</div>
		</div>
		<!-- END .quick_box -->
	</div>
	<!-- END .show_box -->
	
	<!--  실시간 비용 개인정보 팝업 -->
	<div class="layer3" style="display:none;">
		<div class="bg3"></div>
		<div class="layer_area3" id="layer3" style="margin-top: -375px; margin-left: -390px;">
			<div style="width:780px; height:87px; float:left; cursor:pointer;" id="layer_close3"><img src="/images/common/popup_tit01.png"></div>
			<div style="width:780px; height:663px; float:left; background:#ffffff;">
				<textarea style="width:720px; height:573px;float:left; margin-top:30px; margin-left:28px; border:0;" readonly="">
					내용
				</textarea>
			</div>
		</div>
	</div>
	<!--  실시간 비용 개인정보 팝업 -->
	
	<!--  간편카톡상담 개인정보 팝업 -->
	<div class="layer4" style="display: none;">
		<div class="bg4"></div>
		<div class="layer_area4" id="layer4" style="margin-top: -375px; margin-left: -390px;">
			<div style="width:780px; height:87px; float:left; cursor:pointer;" id="layer_close4"><img src="/images/common/popup_tit01.png"></div>
			<div style="width:780px; height:663px; float:left; background:#ffffff;">
				<textarea style="width:720px; height:573px;float:left; margin-top:30px; margin-left:28px; border:0;" readonly="">
					내용
				</textarea>
			</div>
		</div>
	</div>
	<!--  간편카톡상담 개인정보 팝업 -->
</div>
<!-- END #quick -->

<!-- START #full_menu_pop -->
<div id="full_menu">
</div>
<!-- END #full_menu_pop -->

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
			if( i != point_check ){
				$('#quick_'+i).hide();
			}else{
				$('#quick_'+i).show();
				if( point_check == 2 ){
					$('.btn_close').find('img').attr('src', '/images/common/quick_close.png');
				}else{
					$('.btn_close').find('img').attr('src', '/images/common/quick_close.png');
				}
			}
		}
	}
/*수정해야할 부분 0 -500*/
	$('.btn_close').click(function(){
		winWidth = $(window).width();
		if( winWidth <= 700) {
			$('#quick_mini').show();
			$('#quick').animate({
				right:-0
			},600, 'easeInOutCubic');
		} else {
			$('#quick_mini').hide();
			$('#quick').animate({
				right:-494
			},600, 'easeInOutCubic');
		}
	});
	/*close 버튼 클릭시*/
	
	$('.quickclose').click(function(){
		$('.quickclose').toggleClass('open qo');
		
		if ($('.quickclose').hasClass('open'))
		{
			winWidth = $(window).width();
			if( winWidth <= 700) {
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
		}else{
			winWidth = $(window).width();
			if( winWidth <= 700) {
				$('#quick_mini').show();
				$('#quick').animate({
					right:0
				},600, 'easeInOutCubic');
			} else {
				$('#quick_mini').hide();
				$('#quick').animate({
					right:-494
				},600, 'easeInOutCubic');
			}
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
		$('.btn_close').find('img').attr('src', '/images/common/quick_close.png');
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

<!-- Withpang Tracker v3.0 [공용] start -->
  <script src="http://cdn.megadata.co.kr/js/enliple_min2.js"></script>
  <script type="text/javascript">
  <!--
  	var rf = new EN();
  	rf.setData("sc", encodeURIComponent(""));
  	rf.sendRf();
  //-->
  </script>
<!-- Withpang Tracker v3.0 [공용] end -->
<div class="wrapper">
	<div class="dimd"></div>
	<!-- header -->
	<div class="header line">
		<!-- topBar -->
		<div class="topBar">
			<div class="areaBox">
				<ul>
					<li><a href="/sub/sub01/sub0103_list.html">마이스토리 주변센터 둘러보기</a></li>
					<li><a href="/sub/sub01/sub0103_view.html">강남센터</a></li>
					<li><a href="/sub/sub01/sub0103_view2.html">부산센터</a></li>
					<li><a href="/sub/sub01/sub0103_view5.html">강동센터</a></li>
					<li><a href="/sub/sub01/sub0103_view3.html">울산센터</a></li>
					<li><a href="/sub/sub01/sub0103_view6.html">일산센터</a></li>
					<li><a href="/sub/sub01/sub0103_view4.html">창원센터</a></li>
					<li><a href="/sub/sub01/sub0103_view7.html">양산센터</a></li>
					<li><a href="/sub/sub01/sub0103_view8.html">분당센터</a></li>
				</ul>
			</div>
			<div class="snsBox">
				<ul>
					<li class="sns_f"><a href="https://facebook.com/mystorypeople" target="_blank" title="페이스북">페이스북</a></li>
					<li class="sns_b"><a href="http://mystorycenter.kr" target="_blank" title="블로그">블로그</a></li>
					<li class="sns_i"><a href="https://www.instagram.com/mystoryhappy" target="_blank" title="인스타그램">인스타그램</a></li>
					<li class="sns_t"><a href="http://mystorycenter.tistory.com" target="_blank" title="티스토리">티스토리</a></li>
				</ul>
			</div>
		</div>
		<!-- //topBar -->
		
		<div class="head_box">
			<h1 class="logo">
				<a href="/main.html"><img src="/images/common/logo.gif" alt="마이스토리"></a>
			</h1> 
			<span class="btn_allMenu">
				<a href="#" class="btnOpen" title="전체메뉴 보기">Menu</a>
				<a href="#" class="btnClose" title="전체메뉴 닫기">close</a>
			</span>
			<div id="gnb" class="pc_gnb nav">
				<h3 class="skip">PC_menu</h3>
				<ul id="nav">
					<li class="has-sub g1"><a href="/sub/sub01/sub0101.html"><img src="/images/common/gnb01.gif">소개</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub01/sub0101.html">My story is</a></li>
								<li><a href="/sub/sub01/sub0102.html">마이스토리 이용안내</a></li>
								<li><a href="/sub/sub01/sub0103_list.html">가까운센터 둘러보기</a></li>
								<li><a href="/sub/sub01/sub0104.html">마이스토리 사람들</a></li>
								<li><a href="/sub/sub01/sub0105_list.html">마이스토리 방송이야기</a></li>
								<li><a href="/sub/sub01/sub0106.html">센터 운영 문의</a></li>
							</ul>
						</div>
					</li>
					<li class="has-sub g2"><a href="/sub/sub02/sub0201.html">예약/커뮤니티</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub02/sub0201.html">온라인상담</a></li>
								<li><a href="/sub/sub02/sub0202_01.html">온라인 실시간 예약</a></li>
								<li><a href="/sub/sub02/sub0203_list.html">마이스토리 공지사항</a></li>
								<li><a href="/sub/sub02/sub0204_list.html">마이스토리 심리칼럼</a></li>
								<li><a href="/sub/sub02/sub0205_list.html">마이스토리 이야기</a></li>
								<li><a href="/sub/sub02/sub0206_list.html">자주하는 질문</a></li>
							</ul>
						</div>
					</li>
					<li class="has-sub g3"><a href="/sub/sub03/sub0301.html">아동/청소년상담</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub03/sub0301.html">ADHD</a></li>
								<li><a href="/sub/sub03/sub0302.html">아동청소년우울</a></li>
								<li><a href="/sub/sub03/sub0303.html">문제행동</a></li>
								<li><a href="/sub/sub03/sub0304.html">불안</a></li>
								<li><a href="/sub/sub03/sub0305.html">스마트폰 중독</a></li>
								<li><a href="/sub/sub03/sub0309.html">게임 중독</a></li>
								<li><a href="/sub/sub03/sub0306.html">학교 부적응, 따돌림</a></li>
								<li><a href="/sub/sub03/sub0307.html">학습부진, 학습장애</a></li>
								<li><a href="/sub/sub03/sub0308.html">틱장애</a></li>
							</ul>
						</div>
					</li>
					<li class="has-sub g4"><a href="/sub/sub04/sub0401.html">성인/부부상담</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub04/sub0401.html">우울증상</a></li>
								<li><a href="/sub/sub04/sub0402.html">불안증상</a></li>
								<li><a href="/sub/sub04/sub0403.html">성격문제행동</a></li>
								<li><a href="/sub/sub04/sub0404.html">중독</a></li>
								<li><a href="/sub/sub04/sub0405.html">정신분열</a></li>
								<li><a href="/sub/sub04/sub0406.html">부부상담</a></li>
								<li><a href="/sub/sub04/sub0407.html">가족상담</a></li>
							</ul>
						</div>
					</li>
					<li class="has-sub g5"><a href="/sub/sub05/sub0501.html">심리치료프로그램</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub05/sub0501.html">개인상담치료</a></li>
								<li><a href="/sub/sub05/sub0502.html">미술심리치료</a></li>
								<li><a href="/sub/sub05/sub0503.html">놀이심리치료</a></li>
								<li><a href="/sub/sub05/sub0504.html">연극심리치료</a></li>
								<li><a href="/sub/sub05/sub0505.html">독서심리치료</a></li>
								<li><a href="/sub/sub05/sub0506.html">음악심리치료</a></li>
								<li><a href="/sub/sub05/sub0507.html">언어치료</a></li>
								<li><a href="/sub/sub05/sub0508.html">학습치료-진로상담</a></li>
							</ul>
						</div>
					</li>
					<li class="has-sub g6"><a href="/sub/sub06/sub0601.html">심리검사프로그램</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub06/sub0601.html">종합심리평가</a></li>
								<li><a href="/sub/sub06/sub0602.html">종합정서평가</a></li>
								<li><a href="/sub/sub06/sub0603.html">영유아 발달검사</a></li>
								<li><a href="/sub/sub06/sub0604.html">학습 및 진로 종합평가</a></li>
								<li><a href="/sub/sub06/sub0605.html">영유아 놀이평가</a></li>
								<li><a href="/sub/sub06/sub0606.html">언어평가</a></li>
								<li><a href="/sub/sub06/sub0607.html">One day Solution</a></li>
								<li><a href="/sub/sub06/sub0608.html">자가진단</a></li>
							</ul>
						</div>
					</li>
					<li class="has-sub g7"><a href="/sub/sub07/sub0701.html">마이스토리 연구소</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub07/sub0701.html">심리상담 연구센터</a></li>
								<li><a href="/sub/sub07/sub0702.html">기업상담 연구센터</a></li>
								<li><a href="/sub/sub07/sub0703.html">주식중독 연구센터</a></li>
								<li><a href="/sub/sub07/sub0704.html">연구소 활동 이야기</a></li>
								<li><a href="/sub/sub07/sub0705.html">실시간 기업상담문의</a></li>
								<li><a href="/sub/sub07/sub0706.html">두산중공업 상담예약</a></li>
							</ul>
						</div>
					</li>
				</ul>
			</div>
		</div>
		
		<!-- allMenu -->
		<div id="gnb" class="all_gnb nav">
			<h3 class="skip">all_menu</h3>
			<ul id="all_nav">
				<li class="has-sub g1"><a href="/sub/sub01/sub0101.html">Mystory 소개</a>
					<ul>
						<li><a href="/sub/sub01/sub0101.html">My story is</a></li>
						<li><a href="/sub/sub01/sub0102.html">마이스토리 이용안내</a></li>
						<li><a href="/sub/sub01/sub0103_list.html">가까운센터 둘러보기</a></li>
						<li><a href="/sub/sub01/sub0104.html">마이스토리 사람들</a></li>
						<li><a href="/sub/sub01/sub0105_list.html">마이스토리 방송이야기</a></li>
						<li><a href="/sub/sub01/sub0106.html">센터 운영 문의</a></li>
					</ul>
				</li>
				<li class="has-sub g2"><a href="/sub/sub02/sub0201.html">예약/커뮤니티</a>
					<ul>
						<li><a href="/sub/sub02/sub0201.html">온라인상담</a></li>
						<li><a href="/sub/sub02/sub0202_01.html">온라인 실시간 예약</a></li>
						<li><a href="/sub/sub02/sub0203_list.html">마이스토리 공지사항</a></li>
						<li><a href="/sub/sub02/sub0204_list.html">마이스토리 심리칼럼</a></li>
						<li><a href="/sub/sub02/sub0205_list.html">마이스토리 이야기</a></li>
						<li><a href="/sub/sub02/sub0206_list.html">자주하는 질문</a></li>
					</ul>
				</li>
				<li class="has-sub g3"><a href="/sub/sub03/sub0301.html">아동/청소년상담</a>
					<ul>
						<li><a href="/sub/sub03/sub0301.html">ADHD</a></li>
						<li><a href="/sub/sub03/sub0302.html">아동청소년우울</a></li>
						<li><a href="/sub/sub03/sub0303.html">문제행동</a></li>
						<li><a href="/sub/sub03/sub0304.html">불안</a></li>
						<li><a href="/sub/sub03/sub0305.html">스마트폰 중독</a></li>
						<li><a href="/sub/sub03/sub0309.html">게임 중독</a></li>
						<li><a href="/sub/sub03/sub0306.html">학교 부적응, 따돌림</a></li>
						<li><a href="/sub/sub03/sub0307.html">학습부진, 학습장애</a></li>
						<li><a href="/sub/sub03/sub0308.html">틱장애</a></li>
					</ul>
				</li>
				<li class="has-sub g4"><a href="/sub/sub04/sub0401.html">성인/부부상담</a>
					<ul>
						<li><a href="/sub/sub04/sub0401.html">우울증상</a></li>
						<li><a href="/sub/sub04/sub0402.html">불안증상</a></li>
						<li><a href="/sub/sub04/sub0403.html">성격문제행동</a></li>
						<li><a href="/sub/sub04/sub0404.html">중독</a></li>
						<li><a href="/sub/sub04/sub0405.html">정신분열</a></li>
						<li><a href="/sub/sub04/sub0406.html">부부상담</a></li>
						<li><a href="/sub/sub04/sub0407.html">가족상담</a></li>
					</ul>
				</li>
				<li class="has-sub g5"><a href="/sub/sub05/sub0501.html">심리치료프로그램</a>
					<ul>
						<li><a href="/sub/sub05/sub0501.html">개인상담치료</a></li>
						<li><a href="/sub/sub05/sub0502.html">미술심리치료</a></li>
						<li><a href="/sub/sub05/sub0503.html">놀이심리치료</a></li>
						<li><a href="/sub/sub05/sub0504.html">연극심리치료</a></li>
						<li><a href="/sub/sub05/sub0505.html">독서심리치료</a></li>
						<li><a href="/sub/sub05/sub0506.html">음악심리치료</a></li>
						<li><a href="/sub/sub05/sub0507.html">언어치료</a></li>
						<li><a href="/sub/sub05/sub0508.html">학습치료-진로상담</a></li>
					</ul>
				</li>
				<li class="has-sub g6"><a href="/sub/sub06/sub0601.html">심리검사프로그램</a>
					<ul>
						<li><a href="/sub/sub06/sub0601.html">종합심리평가</a></li>
						<li><a href="/sub/sub06/sub0602.html">종합정서평가</a></li>
						<li><a href="/sub/sub06/sub0603.html">영유아 발달검사</a></li>
						<li><a href="/sub/sub06/sub0604.html">학습 및 진로 종합평가</a></li>
						<li><a href="/sub/sub06/sub0605.html">영유아 놀이평가</a></li>
						<li><a href="/sub/sub06/sub0606.html">언어평가</a></li>
						<li><a href="/sub/sub06/sub0607.html">One day Solution</a></li>
						<li><a href="/sub/sub06/sub0608.html">자가진단</a></li>
					</ul>
				</li>
				<li class="has-sub g7"><a href="/sub/sub07/sub0701.html">마이스토리 연구소</a>
					<ul>
						<li><a href="/sub/sub07/sub0701.html">심리상담 연구센터</a></li>
						<li><a href="/sub/sub07/sub0702.html">기업상담 연구센터</a></li>
						<li><a href="/sub/sub07/sub0703.html">주식중독 연구센터</a></li>
						<li><a href="/sub/sub07/sub0704.html">연구소 활동 이야기</a></li>
						<li><a href="/sub/sub07/sub0705.html">실시간 기업상담문의</a></li>
						<li><a href="/sub/sub07/sub0706.html">두산중공업 상담예약</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- //allMenu -->
	</div>
	<!-- //header -->

	<div class="sub-content">
		<div class="bg02area">
			<p class="tit">예약/커뮤니티</p>
		</div>
		<div class="sub-content-inbox">
			<div class="sub-menu2">
				<ul class="sub-menu2-inbox">

					<li class="act act1"><a href="sub0201.html">온라인상담</a></li>
					<li class=""><a href="sub0202_01.html">온라인 실시간예약</a></li>
					<li class=""><a href="sub0203_list.html">마이스토리 공지사항</a></li>
					<li class=""><a href=" sub0204_list.html">마이스토리 심리칼럼</a></li>
					<li class=""><a href="sub0205_list.html">마이스토리 이야기</a></li>
					<li class="last "><a href="sub0206_list.html">자주하는 질문</a></li>

				</ul>
			</div>
			<div class="top"><a href="#top"><img src="/images/sub/top.gif" alt="탑버튼"></a></div>--%>

			<h3>온라인 상담</h3>
			<p class="sub02_txt">
				마이스토리에 남겨주신 소중한 이야기는 내담자 보호 <span class="bold">규정에 따라 철저히 비밀 보장 되며 기록이 남지 않습니다.</span><br />
				<span>답변은 질문 내용에 따라 분류되어 해당 분야 전문선생님에 의해 성실히 이루어집니다. <br />
				답변 순서는 각 센터별 전문가 선생님들의 여건에 따라 달라질 수 있음을 양해해 주시기 바랍니다.</span><br />
			</p>
			<a href="./sub0202_01.html"><p class="reserv-btn">실시간예약 바로가기</p></a> 

<script type="text/javascript">
function checkLockPwd(form){
	if(form.c_pass.value.trim().length != 4){
		alert("비밀번호를 정확히 입력해주세요.");
		form.c_pass.focus();
		return;
	}
	form.c_pass.value = form.lock_pwd.value.trim()
	form.action = "consultingPassPro.do";
	form.submit();
}
</script>
			<form name="LockPwd" method="post">
			<table class="write-board01">
				<caption>비밀번호 확인</caption>
				<tbody>
					<tr>
						<th >비밀번호 확인 (4자리)</th>
						<td >
							<input type="hidden" value="${c_number}" name="c_number">
							<input type="password" name="c_pass" id="lock_pwd"  maxlength="4" style="IME-MODE: disabled;" class="writetxt03">
						</td>
					</tr>
				</tbody>
			</table>
			</form>
			
			<div class="btn-area">
				<input type="button" value="확인" class="submit" onclick="checkLockPwd(document.LockPwd);">
				<input type="button" value="취소" class="cancel" onclick="javascript:history.back(-1);">
			</div>

		</div>
	</div>

	<!-- <div class="footer">
		<div class="footer-top">
			<div class="footer-top-inbox">
				<ul>
					<li>회사소개</li>
					<li id="service">사이트이용약관</li>
					<li id="person">개인정보처리방침</li>
					<li><a href="/intro.html">임직원서비스</a></li>
					<li id="sitemap">사이트맵</li>
				</ul>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-bottom-inbox">
				<h2><img src="/images/common/b_logo.gif"></h2>
				<p>
					고객서비스센터&nbsp 02-557-1275<br>
					(주)마이스토리 서울특별시 강남구 테헤란로 52길 17 역삼동 이에스타워 10층  |  사업자등록번호 : 505-88-00158 |  대표이사 : 이석주<br>
					<br/>
					Copyright ⓒ MYSTORY All Rights Reserved
				</p>
			</div>
		</div>
	</div>
</div>
개인정보팝업
<div class="pop01" id="pop">
	<div class="popheader">
		<div class="close"><img src="/images/common/quick_close.gif" border="0" alt="닫기" /></div>
		<p class="tit">마이스토리 개인정보 취급 방침</p>
	</div>
	<div class="popcont">
		<p class="txt">
			■ 개인 정보 취급 방침<br/>
<br/>
(주)마이스토리심리상담센터(이하 본원)는  회원님의 개인정보 보호를 위해 최선을 다합니다 <br/>
본원은 회원의 개인정보보호를 매우 중요시하며, 언제나 회원이 안심하고 본원의 서비스를 사용하실 수 있도록 최선을 다하고 있습니다. 본원은 개인정보보호정책을 통하여 회원이 제공하는 개인 정보가 어떠한 용도와 방식으로 이용되고 있으며 본원이 개인정보 보호를 위해 어떠한 조치를 취하고 있는지 알려드립니다. 개인정보보호정책은 새로운 서비스가 추가되거나 개선될 경우에 변경될 수 있으며 본원은 최소 14일 전에 이를 공지할 것입니다. 수시로 본 페이지를 통해서 본원의 개인정보보호정책을 확인해 주시기 바랍니다. <br/>
<br/>
<br/>
■ 이용자의 개인정보보호 <br/>
<br/>
본원은 통신비밀보호법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 정보통신서비스제공자가 준수하여야 할 관련 법규상의 개인정보보호 규정 및 정보통신부가 제정한 개인정보보호지침을 준수하고 있습니다.
<br/>
<br/>
■ 개인정보의 수집에 대한 동의 <br/>
<br/>
본원은 회원이 개인정보를 입력할 때 본원의 개인정보취급방침 또는 이용약관의 내용에 대하여 [동의함], [동의안함] 단추를 클릭할 수 있는 절차를 두어, [동의함]을 클릭하면 개인 정보 수집 및 이용에 대해 동의한 것으로 간주합니다.

<br/>
■ 개인정보를 수집하고 이용하는 목적 및 항목 <br/>
<br/>
1) 본원은 원활한 고객상담, 각종 서비스의 제공을 위해 온라인 상담예약 등록 시 아래와 같은 개인정보를 수집하고 있습니다. <br/>
가. 필수 개인 정보 <br/>
- 이름, 휴대폰 번호, e-mail, 주소 <br/>
나. 선택적 개인 정보 <br/>
- 은행명, 계좌번호(자동이체 등록 시), 카드사명, 카드번호, 결제승인번호(카드결제 시) <br/>
다. 만14세 미만 미성년자 가입 시 수집정보 <br/>
- 부모님(법정대리인)의 이름, 연락처 <br/>
(만 14세 미만 어린이 가입 시 법정대리인 동의여부확인, 추후 법정대리인 본인확인 등을 위하여 사용됩니다.) <br/>
라. 수집 방법 <br/>
- 홈페이지 온라인 상담예약 등록을 통한 수집 <br/>
그 밖에 제한적 본인 확인제에 따른, 실명확인정보가 신용정보회사로 전송될 수 있으며, 본 정보는 관계법령에 의하여 보호 및 관리 됩니다. <br/>
2) 본원이 회원의 개인정보를 사용하는 목적은 다음과 같으며, 다른 어떠한 용도로도 사용되지 않습니다. <br/>
가. 서비스 제공 및 상품안내 <br/>
- 컨텐츠 제공, 특정 맞춤 서비스 제공, 서비스 안내, 기타 연관된 상품안내, <br/>
나. 회원관리 <br/>
- 회원제 서비스 이용 및 제한적 본인 확인제에 따른 본인확인, 개인식별, 불량회원의 부정 이용방지와 비인가 사용방지, 가입의사 확인, 가입 및 가입횟수 제한, 만14세 미만 아동 개인정보 수집 시 법정 대리인 동의여부 확인, 추후 법정 대리인 본인확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달 <br/>
다. 신규 서비스 개발 및 마케팅 <br/>
- 신규 서비스 개발 및 맞춤 서비스 제공, 이벤트 및 광고성 정보 제공 및 참여기회 제공, 접속빈도 파악, 회원의 서비스이용에 대한 통계 <br/>
본원은 수집한 개인 정보를 상기 고지한 범위 내에서만 사용하며, 회원의 사전 동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다. 다만, 아래의 경우에는 예외로 합니다.
- 이용자들이 사전에 공개에 동의한 경우 <br/>
- 법령의 규정에 의거하거나, 수사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우 <br/>
<br/>
<br/>
■ 개인정보의 보유 기간 및 이용 기간 <br/>
<br/>
본원은 회원이 개인정보의 수집 및 이용에 대한 동의를 철회하는 때까지 회원이 제공한 모든 개인 정보를 보유 및 이용하게 되며, 회원이 이용 동의를 철회하는 경우에는 회원의 개인 정보를 재생 불가능한 방법으로 지체 없이 저장 장치에서 삭제하여, 어떠한 방법으로도 열람 또는 이용할 수 없도록 만듭니다. <br/>
다만, 관계법령에서 일정한 보관기간을 정한 경우는 예외로 합니다. 이 경우 본원은 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다. <br/>
- 계약 또는 청약철회 등에 관한 기록 <br/>
보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 <br/>
보존 기간 : 5년 <br/>
- 대금결제 및 재화 등의 공급에 관한 기록 <br/>
보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 <br/>
보존 기간 : 5년 <br/>
- 소비자의 불만 또는 분쟁처리에 관한 기록 <br/>
보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 <br/>
보존 기간 : 3년 <br/>
- 본인확인에 관한 기록 <br/>
보존 이유 : 정보통신 이용촉진 및 정보보호 등에 관한 법률 <br/>
보존 기간 : 6개월 <br/>
- 방문에 관한 기록 <br/>
보존 이유 : 통신비밀보호법 <br/>
보존 기간 : 3개월 <br/>
본원은 귀중한 회원의 개인정보를 안전하게 처리하며, 유출의 방지를 위하여 다음과 같은 방법을 통하여 개인정보를 파기합니다. <br/>
- 서면 상의 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다. <br/>
- 전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. <br/>
<br/>
<br/>
■ 개인정보의 열람, 수정, 동의 철회 요구 권리 및 행사 방법 <br/>
<br/>
1) 홈페이지를 통해 가입한 회원은 언제든지 본원 회원 가입 시에 제공한 개인 정보를 열람, 수정할 수 있으며, 개인 정보 이용에 대한 동의를 철회할 수 있습니다. 이 때 본원은 회원 탈퇴의 진위를 확인한 후 지체 없이 필요한 조치를 취하여, 이용자의 개인 정보를 파기하고 어떠한 용도로도 이용되지 않도록 처리합니다. <br/>
2) 홈페이지 외의 방법으로 가입한 회원은 서비스를 제공하는 해당 지점을 통하여 언제든지 본원 회원 가입 시에 제공한 개인 정보를 열람, 수정할 수 있습니다. 정보 이용에 대한 동의철회는 다음 담당자에게 전화 및 E-mail의 방법으로 연락해주시기 바랍니다. <br/>
담당자 정보 <br/>
이름 직책 전화번호 E-mail <br/>
안영미 본부장 02-557-1275 mystory@mystoryis.krr <br/>
<br/>
■ 개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항 <br/>
<br/>
본원은 귀하의 정보를 수시로 저장하고 찾아내는 '쿠키(cookie)'등을 운용합니다. 쿠키란 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 본원은 다음과 같은 목적을 위해 쿠키를 사용합니다. <br/>
1) 쿠키 등 사용 목적 <br/>
회원과 비회원의 접속 빈도나 방문 시간 등을 분석, 이용자의 취향과 관심분야를 파악 및 자취 추적, 각종 이벤트 참여 정도 및 방문 회수 파악 등을 통한 타켓 마케팅 및 개인 맞춤 서비스 제공 <br/>
귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 귀하는 웹브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. <br/>
2) 쿠키 설정 거부 방법 <br/>
예:쿠키설정을 거부하는 방법으로는 회원님이 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장될 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다. <br/>
설정방법 예(인터넷 익스플로어의 경우) <br/>
: 웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보 <br/>
단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다. <br/>
<br/>
■ 개인 정보 보호에 대한 기술적, 관리적 대책 <br/>
<br/>
본원은 회원의 개인 정보를 소중히 여기며 안전하게 보호, 관리되도록 최선을 다하고 있으며 다음과 같은 기술적, 관리적인 대책을 세워 시행하고 있습니다. <br/>
가, 기술적 조치 <br/>
회원님의 개인 정보는 접근 권한과 비밀번호에 의해서 철저히 보호되고 있으며, 파일 및 전송 데이터를 암호화하거나 파일 잠금 기능(Lock)을 사용하여 중요한 데이터는 별도의 보안 기능을 통해서 보호되고 있습니다. 또한 최신 백신 프로그램을 사용하여 개인 정보가 침해되는 것을 방지하고 있으며, 침입차단 시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다. 개인 정보가 급작스런 시스템 장애로 훼손되는 것에 대비하여 데이터를 정기적으로 백업하며, 기타 시스템의 안정성을 확보하기 위한 모든 기술적인 장비를 갖추려고 노력하고 있습니다. <br/>
나, 관리적 조치 <br/>
본원은 개인 정보 관련 직원을 필요한 최소한의 인원으로 운영하며 정기 또는 수시로 담당자 교육을 통하여 개인 정보 보호 정책을 준수하도록 강조하고 있습니다. 그리고 사내 개인 정보 보호 지침 이행 및 준수 여부를 감사하기 위한 내부 절차를 마련하여 감사 결과 지침 위반 및 문제점이 발견될 경우에는 지체 없이 시정, 개선하는 등 필요한 조치를 취하고 있습니다. <br/>
<br/>
■ 만 14세 미만 어린이의 개인정보 보호 <br/>
<br/>
만 14세 미만의 어린이가 본원에 가입하려면 반드시 법정대리인(부모님)의 동의를 얻어야 합니다. 본원은 만 14세 미만의 어린이가 회사에 가입할 경우 법정대리인(부모님)의 동의를 구하는 절차를 마련하고 있습니다. 만 14세 미만 어린이의 법정대리인(부모님)은 어린이의 개인 정보 열람, 정정, 동의철회를 요구할 수 있으며, 이러한 요청이 있을 경우 본원은 지체 없이 필요한 조치를 취합니다. <br/>
<br/>
<br/>
■ 개인정보 관련 불만처리 사항 및 고객 유의 사항 <br/>
<br/>
본원은 개인 정보와 관련한 회원님의 의견에 항상 소중히 여깁니다. 만일 개인 정보 관련 불만 사항이나 의문 사항이 있으시면 고객센터나 메일(mystory@mystoryis.kr)으로 문의하시면 접수 즉시 조치하여 결과를 통보해 드립니다. 본원과 이용회원은 개인정보에 관련한 분쟁이 있는 경우 신속하고 효과적인 분쟁 해결을 위하여 개인정보분쟁조정위원회에 그 처리를 의뢰할 수 있습니다. <br/>
* 개인정보분쟁조정위원회 <br/>
- 전화 : 02-405-4747 <br/>
- 팩스 : 02-405-4729 <br/>
- 홈페이지 : http://www.kopico.or.kr/ <br/>
<br/>
<br/>
■ e메일 주소 무단수집 거부 <br/>
<br/>
본 웹사이트에 게시된 e메일 주소가 전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며, 이를 위반 시 정보통신망 법에 의해 형사처벌 됨을 유념하시기 바랍니다. <br/>
[게시일 2016년 3월 1일] <br/>
개인정보 관리 책임자 <br/>
이름 직책 E-mail <br/>
---------------------------------------------- <br/>
안영미 본부장 mystory@mystoryis.kr <br/>
		</p>
	</div>
</div>

<div class="pop01" id="pop2">
	<div class="popheader">
		<div class="close"><img src="/images/common/quick_close.gif" border="0" alt="닫기" /></div>
		<p class="tit">마이스토리 홈페이지 서비스이용약관</p>
	</div>
	<div class="popcont">
		<p class="txt">
[제 1 장 총칙]<br/>
<br/>
제 1 조   목적<br/>
이 약관은 마이스토리 심리상담센터(이하 본원)  홈페이지에서 제공하는 모든 서비스의 이용조건 및 절차에 관한 사항과 기타 필요한 사항을 전기통신사업법 및 동법 시행령이 정하는 대로 준수하고 규정함을 목적으로 합니다.<br/>
<br/>
제 2 조   정의<br/>
"이용자"라 함은 홈페이지에 접속하여 이 약관에 따라 홈페이지가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.<br/>
"회원"이라 함은 홈페이지에 개인정보를 제공하여 회원등록을 한 자로서, 홈페이지의 정보를 지속적으로 제공받으며, 홈페이지가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.<br/>
"비회원"이라 함은 회원에 가입하지 않고 회사 홈페이지에서 제공하는 서비스를 이용하는 자를 말합니다.<br/>
<br/>
제 3 조   약관의 효력과 변경<br/>
이 약관은 본원 홈페이지의 초기 서비스 화면에 이용자에게 공지사항을 통해 공시함으로써 효력이 발생합니다.<br/>
본원은 사정 변경의 경우와 영업상 중요 사유가 있을 때 약관의 규제 등에 관한 법률 등 관련법을 위반하지 않는 범위에서 이 약관을 변경할 수 있으며, 이 경우에는 적용일자 및 개정사유, 변경되는 내용을 명시하여 현행 약관과 함께 초기 서비스 화면에 그 적용일자 7일전부터 적용일자 전일까지 공지합니다.<br/>
제2항에 의거, 변경된 약관은 제1항과 같은 방법으로 효력이 발생합니다.<br/>
<br/>
제 4 조   약관 외 준칙<br/>
이 약관에 명시되지 않은 사항이 관계 법령에 규정되어 있을 경우에는 그 규정에 따릅니다.<br/>
<br/>
[제 2 장 회원 가입 및 서비스 이용]<br/>
<br/>
제 1 조   서비스 이용 계약의 성립<br/>
본원 홈페이지 상 서비스 이용 계약은 이용자가 회원 가입에 따른 서비스 이용 신청에 대한본원의 이용 승낙과 이용자의 이 약관에 동의한다는 의사표시로 성립됩니다.<br/>
이용자가 회원에 가입하여 본원 홈페이지 상 서비스를 이용하고자 하는 경우, 회원은 본원에서 요청하는 개인 신상정보를 제공해야 합니다.<br/>
이용자의 본원 홈페이지 상 서비스 이용신청에 대하여 본원이 승낙한 경우, 본원은 회원 ID와 기타 본원이 필요하다고 인정하는 내용을 이용자에게 통지합니다.<br/>
본원은 다음 각 호에 해당하는 서비스 이용 신청에 대하여는 이를 승낙하지 아니합니다.<br/>
  가. 다른 사람의 명의를 사용하여 신청하였을 때<br/>
  나. 본인의 실명으로 신청하지 않았을 때<br/>
  다. 서비스 이용 계약 신청서의 내용을 허위로 기재하였을 때<br/>
  라. 사회의 안녕과 질서 혹은 미풍양속을 저해할 목적으로 신청하였을 때<br/>
<br/>
제 2 조   서비스 이용 및 제한<br/>
본원 홈페이지 상 서비스 이용은 본원의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간을 원칙으로 합니다.<br/>
전항의 서비스 이용시간은 정보통신 시스템 등 정기점검/교체 등 본원이 필요한 경우, 회원에게 사전 통지한 후, 제한할 수 있습니다.<br/>
제2항에 의한 서비스 중단의 경우에는 본원은 회원이 회사의 홈페이지에 제출한 전자우편 주소로 개별 통지하거나, 불특정다수 회원에 대하여는 1주일 이상 게시판에 게시함으로써 개별 통지에 갈음할 수 있습니다.<br/>
<br/>
[제 3 장 의무]<br/>
<br/>
제 1 조   본원의 의무<br/>
본원은 특별한 사정이 없는 한 회원이 신청한 서비스 제공 개시일에 서비스를 이용할 수 있도록 합니다.<br/>
본원은 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다.<br/>
본원은 회원으로부터 소정의 절차에 의해 제기되는 의견에 대해서는 적절한 절차를 거쳐 처리하며, 처리 시 일정 기간이 소요될 경우 회원에게 그 사유와 처리 일정을 알려주어야 합니다.<br/>
본원은 회원의 정보를 철저히 보안 유지하며, 양질의 서비스를 운영하거나 개선하는 경우 또는 제품소개 등 회사 내부 목적으로 이용하는 데만 사용하고, 이외의 다른 목적으로 타 기관 및 제3자에게 양도하지 않습니다.<br/>
<br/>
제 2 조   회원의 의무<br/>
ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있습니다.<br/>
회원은 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.<br/>
회원은 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지하는 경우에는 회원은 반드시 본원에 그 사실을 통보해야 합니다.<br/>
회원은 이 약관 및 관계 법령에서 규정한 사항을 준수하여야 합니다.<br/>
이용자는 다음 행위를 하여서는 안됩니다.<br/>
  가. 신청 또는 변경 시 허위내용의 등록<br/>
  나. 본원 홈페이지에 게시된 정보의 변경<br/>
  다. 본원 홈페이지가 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시<br/>
  라. 본원 홈페이지 기타 제3자의 저작권 등 지적재산권에 대한 침해<br/>
  마. 본원 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위<br/>
  바. 외설 또는 폭력적인 메시지, 화상, 음성 기타 공서양속에 반하는 정보를 공개 또는 게시하는 행위<br/>
<br/>
[제 4 장 서비스 이용 계약 해지 및 이용 제한]<br/>
<br/>
제 1 조   서비스 이용 계약 해지 및 이용 제한<br/>
회원이 서비스 이용 계약을 해지하고자 하는 때에는 회원 본인이 직접 (주)엘리스정보통신에게 서비스 이용 계약 해지 신청을 요청해야 합니다.<br/>
전항의 경우, 회원은 이름, ID, 비밀번호를 입력하여 (주)엘리스정보통신에게 메일을 보내면 회원 가입 및 서비스 이용 계약이 해지됩니다.<br/>
회원 가입 및 서비스 이용 계약 해지 여부는 기존의 ID,비밀번호로 로그인이 되지 않으면 해지된 것이며, 한번 해지된 ID는 기존 이용자라도 사용할 수 없음을 알려드립니다.<br/>
본원은 회원이 다음 사항에 해당하는 행위를 하였을 경우, 사전 통지 없이 서비스 이용 계약을 해지하거나 또는 상당한 기간을 정하여 서비스 이용을 중지할 수 있습니다.<br/>
  가. 공공 질서 및 미풍 양속에 반하는 경우<br/>
  나. 범죄적 행위에 관련되는 경우<br/>
  다. 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행할 경우<br/>
  라. 타인의 ID 및 비밀번호를 도용한 경우<br/>
  마. 타인의 명예를 손상시키거나 불이익을 주는 경우<br/>
  바. 같은 사용자가 다른 ID로 이중 등록을 한 경우<br/>
  사. 서비스에 위해를 가하는 등 건전한 이용을 저해하는 경우<br/>
  아. 기타 관련 법령이나 회사가 정한 이용조건에 위배되는 경우<br/>
<br/>
제 2 조 서비스 이용 제한의 해제 절차<br/>
본원은 서비스 이용 제한을 하고자 하는 경우에는 그 사유, 일시 및 기간을 정하여 서면 또는 전화 등의 방법을 이용하여 해당 회원 또는 대리인에게 통지합니다. 다만, 본원이 긴급하게 이용을 중지해야 할 필요가 있다고 인정하는 경우에는 전항의 과정없이 서비스 이용을 제한할 수 있습니다.<br/>
전항의 규정에 의하여 서비스 이용 중지를 통지 받은 회원 또는 그 대리인은 서비스 이용 중지에 대하여 이의신청을 할 수 있습니다.<br/>
본원은 서비스 이용중지 기간 중에 그 이용중지 사유가 해소된 것이 확인된 경우에 한하여 이용중지 조치를 즉시 해제합니다.<br/>
(부칙) 이 약관은 2016년 03월 08일부터 시행합니다.<br/>
		</p>
	</div>
</div>
<div class="pop02" id="pop3">
	<div class="popheader">
		<div class="close"><img src="/images/common/close2.gif" border="0" alt="닫기" /></div>
		<p class="tit">마이스토리 사이트맵</p>
	</div>
	<div class="popcont">
		<ul>
			<li>
				<p class="tit tit2">소개</p>
				<ul>
					<li><a href="/sub/sub01/sub0101.html">My story is</a></li>
					<li><a href="/sub/sub01/sub0102.html">마이스토리 이용안내</a></li>
					<li><a href="/sub/sub01/sub0103_list.html">가까운센터 둘러보기</a></li>
					<li><a href="/sub/sub01/sub0104.html">마이스토리 사람들</a></li>
					<li><a href="/sub/sub01/sub0105_list.html">마이스토리 방송이야기</a></li>
					<li><a href="/sub/sub01/sub0106.html">센터운영 문의</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">예약/커뮤니티</p>
				<ul>
					 <li><a href="/sub/sub02/sub0201.html">온라인상담</a></li>
					<li><a href="/sub/sub02/sub0202_01.html">온라인 실시간예약</a></li>
					<li><a href="/sub/sub02/sub0203_list.html">마이스토리 공지사항</a></li>
					<li><a href="/sub/sub02/sub0204_list.html">마이스토리 심리칼럼</a></li>
					<li><a href="/sub/sub02/sub0205_list.html">마이스토리 이야기</a></li>
					<li><a href="/sub/sub02/sub0206_list.html">자주하는 질문</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">아동/청소년상담</p>
				<ul>
					<li><a href="/sub/sub03/sub0301.html">ADHD</a></li>
					<li><a href="/sub/sub03/sub0302.html">아동청소년우울</a></li>
					<li><a href="/sub/sub03/sub0303.html">문제행동</a></li>
					<li><a href="/sub/sub03/sub0304.html">불안</a></li>
					<li><a href="/sub/sub03/sub0305.html">스마트폰 중독</a></li>
					<li><a href="/sub/sub03/sub0309.html">게임 중독</a></li>
					<li><a href="/sub/sub03/sub0306.html">학교 부적응, 따돌림</a></li>
					<li><a href="/sub/sub03/sub0307.html">학습부진, 학습장애</a></li>
					<li><a href="/sub/sub03/sub0308.html">틱장애</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">성인/부부상담</p>
				<ul>
					 <li><a href="/sub/sub04/sub0401.html">우울증상</a></li>
					<li><a href="/sub/sub04/sub0402.html">불안증상</a></li>
					<li><a href="/sub/sub04/sub0403.html">성격문제행동</a></li>
					<li><a href="/sub/sub04/sub0404.html">중독</a></li>
					<li><a href="/sub/sub04/sub0405.html">정신분열</a></li>
					<li><a href="/sub/sub04/sub0406.html">부부상담</a></li>
					<li><a href="/sub/sub04/sub0407.html">가족상담</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">심리치료프로그램</p>
				<ul>
					<li><a href="/sub/sub05/sub0501.html">개인상담치료</a></li>
					<li><a href="/sub/sub05/sub0502.html">미술심리치료</a></li>
					<li><a href="/sub/sub05/sub0503.html">놀이심리치료</a></li>
					<li><a href="/sub/sub05/sub0504.html">연극심리치료</a></li>
					<li><a href="/sub/sub05/sub0505.html">독서심리치료</a></li>
					<li><a href="/sub/sub05/sub0506.html">음악심리치료</a></li>
					<li><a href="/sub/sub05/sub0507.html">언어치료</a></li>
					<li><a href="/sub/sub05/sub0508.html">학습치료-진로상담</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">심리검사프로그램</p>
				<ul>
					<li><a href="/sub/sub06/sub0601.html">종합심리평가</a></li>
					<li><a href="/sub/sub06/sub0602.html">종합정서평가</a></li>
					<li><a href="/sub/sub06/sub0603.html">영유아 발달검사</a></li>
					<li><a href="/sub/sub06/sub0604.html">학습 및 진로 종합평가</a></li>
					<li><a href="/sub/sub06/sub0605.html">영유아 놀이평가</a></li>
					<li><a href="/sub/sub06/sub0606.html">언어평가</a></li>
					<li><a href="/sub/sub06/sub0607.html">One day Solution</a></li>
					<li><a href="/sub/sub06/sub0608.html">자가진단</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">마이스토리 연구소</p>
				<ul>
					<li><a href="/sub/sub07/sub0701.html">심리상담 연구센터</a></li>
					<li><a href="/sub/sub07/sub0702.html">기업상담 연구센터</a></li>
					<li><a href="/sub/sub07/sub0703.html">주식중독 연구센터</a></li>
					<li><a href="/sub/sub07/sub0704.html">기업상담 사례모음</a></li>
					<li><a href="/sub/sub07/sub0705.html">실시간 기업상담예약</a></li>
					<li><a href="/sub/sub07/sub0706.html">두산중공업 상담예약</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">센터둘러보기</p>
				<ul>
					<li><a href="/sub/sub01/sub0103_view.html">강남본점</a></li>
					<li><a href="/sub/sub01/sub0103_view2.html">부산센터</a></li>
					<li><a href="/sub/sub01/sub0103_view5.html">강동센터</a></li>
					<li><a href="/sub/sub01/sub0103_view3.html">울산센터</a></li>
					<li><a href="/sub/sub01/sub0103_view4.html">창원센터</a></li>
					<li><a href="/sub/sub01/sub0103_view6.html">일산센터</a></li>
					<li><a href="/sub/sub01/sub0103_view7.html">양산센터</a></li>
					<li><a href="/sub/sub01/sub0103_view8.html">분당센터</a></li>
				</ul>
			</li>
		</ul>
	</div>
</div> -->
</body>
<!--  CPCGUARD SCRIPT V6.0 -->
<script type="text/javascript">
	(function(){
		var _script = document.createElement("script"); _script.id= "include_cpc_script"; _script.type = "text/javascript"; _script.charset = "utf-8"; _script.async = true; _script.src = (document.location.protocol || "http:") + "//nsc1.cpcguard.com/new/cpc_script.js";
		var _node = document.getElementsByTagName("script")[0]; _node.parentNode.insertBefore(_script, _node);
	})();
</script>
<!-- CPCGUARD SCRIPT END -->
<!-- 공통 적용 스크립트 , 모든 페이지에 노출되도록 설치. 단 전환페이지 설정값보다 항상 하단에 위치해야함 -->  
<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> 
<script type="text/javascript"> 
	if (!wcs_add) var wcs_add={};
	wcs_add["wa"] = "s_396e682114f3";
	if (!_nasa) var _nasa={};
	wcs.inflow("mystoryis.kr");
	wcs_do(_nasa);
</script>
</html>
