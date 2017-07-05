<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>���̽��丮</title>
	<meta http-equiv="Content-Type" content="text/html;charset=euc-kr" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="�ɸ���㼾��, ���սɸ������������, �����ƹߴ�,û�ҳ���,�κΰ���, �����������" />
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

</script><!-- Withpang Tracker v3.0 [����] start -->
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
<!-- Withpang Tracker v3.0 [����] end -->
<script type="text/javascript">
        function textarea_maxlength(obj){
          var maxLength = parseInt(obj.getAttribute("maxlength"));
	      if(obj.value.length>maxLength) {
	         alert('���ڼ��� '+(obj.value.length-1)+'�� �̳��� ���ѵ˴ϴ�');
		     obj.value=obj.value.substring(0,maxLength);
	      }
        }
        function regOnlineReserve(form){
		form.reserve_date.value = form.reserve_year.value + form.reserve_month.value + form.reserve_day.value;
		if(form.reserve_date.value.trim() == ""){
			alert("�������ڸ� �������ּ���.");
			return;
		}
		if(form.name.value.trim() == ""){
			alert("�̸��� �Է����ּ���.");
			form.name.focus();
			return;
		}
		if(form.phone2.value.trim() == ""){
			alert("����ó�� �Է����ּ���.");
			form.phone2.focus();
			return;
		}
		if(form.phone2.value.trim().length != 3 && form.phone2.value.trim().length != 4 ){
			alert("����ó�� �Է����ּ���.");
			form.phone2.focus();
			return;
		}
		if(form.phone3.value.trim() == ""){
			alert("����ó�� �Է����ּ���.");
			form.phone3.focus();
			return;
		}
		if(form.phone3.value.trim().length != 4){
			alert("����ó�� �Է����ּ���.");
			form.phone3.focus();
			return;
		}
		var phone = form.phone1.value.trim() + form.phone2.value.trim() + form.phone3.value.trim();
		if(phone.length < 10){
			alert("����ó�� ��Ȯ�� �Է����ּ���.");
			return;
		}
		if(form.center_code.value.trim() == ""){
			alert("���͸� �������ּ���.");
			form.center_code.focus();
			return;
		}
		if(form.reason.value.trim() == ""){
			alert("����û������ �Է����ּ���.");
			form.reason.focus();
			return;
		}
		if(form.chk_res_info_yn.checked != true){
			alert("�������� ��޹�ħ�� �������ּ���.");
			form.chk_res_info_yn.focus();
			return;
		}
		var Year = form.reserve_year.value;
		var Month = form.reserve_month.value;
		var Day = form.reserve_day.value;
		//var Time = form.reserve_time.value;
		var Hour = form.reserve_time.value.substr(0,2);
		var Minute = form.reserve_time.value.substr(2,2);
		var strDate = Year + "�� " + Month + "�� " + Day + "�� " + Hour + "�� " +  Minute + "��";
		
		if(confirm(strDate + " �����Ͻðڽ��ϱ�?")) {
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
			alert("�̸��� �Է����ּ���.");
			form.name.focus();
			return;
		}
		if(form.phone2.value.trim() == ""){
			alert("����ó�� �Է����ּ���.");
			form.phone2.focus();
			return;
		}
		if(form.phone2.value.trim().length != 3 && form.phone2.value.trim().length != 4 ){
			alert("����ó�� �Է����ּ���.");
			form.phone2.focus();
			return;
		}
		if(form.phone3.value.trim() == ""){
			alert("����ó�� �Է����ּ���.");
			form.phone3.focus();
			return;
		}
		if(form.phone3.value.trim().length != 4){
			alert("����ó�� �Է����ּ���.");
			form.phone3.focus();
			return;
		}
		var phone = form.phone1.value.trim() + form.phone2.value.trim() + form.phone3.value.trim();
		if(phone.length < 10){
			alert("����ó�� ��Ȯ�� �Է����ּ���.");
			return;
		}
		if(form.center_code.value.trim() == ""){
			alert("���͸� �������ּ���.");
			form.center_code.focus();
			return;
		}
		if(form.content.value.trim() == ""){
			alert("���ǳ����� �Է����ּ���.");
			form.content.focus();
			return;
		}
		if(form.chk_sms_inquery_yn.checked != true){
			alert("�������� ��޹�ħ�� �������ּ���.");
			form.chk_sms_inquery_yn.focus();
			return;
		}
		if(confirm("����Ͻðڽ��ϱ�?")) {
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
			document.getElementById("mystorygn").style.display = ""; // ������
			document.getElementById("mystorybs").style.display = "none"; // ����
			document.getElementById("mystoryus").style.display = "none"; // ����
			document.getElementById("mystorycw").style.display = "none"; // ����
			document.getElementById("mystorykd").style.display = "none"; // ����
			document.getElementById("mystoryis").style.display = "none"; // ����
			document.getElementById("mystoryys").style.display = "none"; // ����
		}else if (v == "mystorybs") {
			document.getElementById("mystorybs").style.display = ""; // ������
			document.getElementById("mystorygn").style.display = "none"; // ����
			document.getElementById("mystoryus").style.display = "none"; // ����
			document.getElementById("mystorycw").style.display = "none"; // ����
			document.getElementById("mystorykd").style.display = "none"; // ����
			document.getElementById("mystoryis").style.display = "none"; // ����
			document.getElementById("mystoryys").style.display = "none"; // ����
		}else if (v == "mystoryus") {
			document.getElementById("mystoryus").style.display = ""; // ������
			document.getElementById("mystorygn").style.display = "none"; // ����
			document.getElementById("mystorybs").style.display = "none"; // ����
			document.getElementById("mystorycw").style.display = "none"; // ����
			document.getElementById("mystorykd").style.display = "none"; // ����
			document.getElementById("mystoryis").style.display = "none"; // ����
			document.getElementById("mystoryys").style.display = "none"; // ����
		}else if (v == "mystorycw") {
			document.getElementById("mystorycw").style.display = ""; // ������
			document.getElementById("mystorygn").style.display = "none"; // ����
			document.getElementById("mystorybs").style.display = "none"; // ����
			document.getElementById("mystoryus").style.display = "none"; // ����
			document.getElementById("mystorykd").style.display = "none"; // ����
			document.getElementById("mystoryis").style.display = "none"; // ����
			document.getElementById("mystoryys").style.display = "none"; // ����
		}else if (v == "mystorykd") {
		document.getElementById("mystorykd").style.display = ""; // ������
		document.getElementById("mystorycw").style.display = "none"; // ����
		document.getElementById("mystorygn").style.display = "none"; // ����
		document.getElementById("mystorybs").style.display = "none"; // ����
		document.getElementById("mystoryus").style.display = "none"; // ����
		document.getElementById("mystoryis").style.display = "none"; // ����
		document.getElementById("mystoryys").style.display = "none"; // ����
		}else if (v == "mystoryis") {
			document.getElementById("mystoryis").style.display = ""; // ������
			document.getElementById("mystorycw").style.display = "none"; // ����
			document.getElementById("mystorygn").style.display = "none"; // ����
			document.getElementById("mystorybs").style.display = "none"; // ����
			document.getElementById("mystoryus").style.display = "none"; // ����
			document.getElementById("mystorykd").style.display = "none"; // ����
			document.getElementById("mystoryys").style.display = "none"; // ����
		}else if (v == "mystoryys") {
			document.getElementById("mystoryys").style.display = ""; // ������
			document.getElementById("mystorycw").style.display = "none"; // ����
			document.getElementById("mystorygn").style.display = "none"; // ����
			document.getElementById("mystorybs").style.display = "none"; // ����
			document.getElementById("mystoryus").style.display = "none"; // ����
			document.getElementById("mystorykd").style.display = "none"; // ����
			document.getElementById("mystoryis").style.display = "none"; // ����
		}
	}
</script>
<div id="quick">
	<div class="quickclose open ">CLOSE</div>
	<div class="btn_area">
		<ul class="icon_zone">
			<li q="1"><img src="/images/common/quick_tit.jpg" border="0" alt="���̽��丮" /></li>
			<li q="1"><img src="/images/common/quick01.png" border="0" alt="īī���忹����" /></li>
			<li q="2"><img src="/images/common/quick02.png" border="0" alt="�ǽð���ȭ����" /></li>
			<li q="3"><img src="/images/common/quick03.png" border="0" alt="�ǽð��¶��ο���" /></li>
			<li q="4"><img src="/images/common/quick04.png" border="0" alt="���ô±�" /></li>
		</ul>
		<p style="text-align:right;"><img src="/images/common/quick05_01.jpg" border="0" alt="��� ��ð�" /></p>
		<!--<div class="s-center">
			<p>�ֺ�����ã��</p>
			<input type="text" class="tbox">
			<input type="button" class="sbtn">
		</div>-->
	</div>
	<!-- END .btn_area -->
	<div class="show_box">
		<div class="btn_close"><img src="/images/common/quick_close.png" border="0" alt="�ݱ�" /></div>
		<div id="quick_1" class="quick_box">
			<div style="position:relative;">
				<section class="contents"><!-- ī�� ��� -->
					<div class="tit"><img src="/images/common/tit01.jpg" alt="īī���� ���"></div>
					<div class="contents">
						<div class="con">
							<select onchange="showQR(this.value);">
								<option value="mystorygn">��������</option>
								<option value="mystorybs">�λ꼾��</option>
								<option value="mystoryus">��꼾��</option>
								<option value="mystorycw">â������</option>
								<option value="mystorykd">��������</option>
								<option value="mystoryis">�ϻ꼾��</option>
								<option value="mystoryys">��꼾��</option>
								<option value="mystorybd">�д缾��</option>
							</select>
							<div id="mystorygn" style="display:show"> 
								<div class="qr"><img src="/images/qr/gn_mystorygn.jpg" alt="ť���ڵ�"></div>
								<div class="qrid">ID &nbsp:&nbsp mystorygn</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="ģ���߰��ϱ�"></a>-->&nbsp;</div>
								<p class="qrtxt">
									�Ʒ� �ڵ带 ��ĵ�ϸ� īī����<br/>
									ģ���� �ٷ� �߰��� �� �ֽ��ϴ�.<br/>
									<br/>
									QR�ڵ� ����� �����ź���<br/>
									īī���� ���̵�˻��� <span>���̽��丮</span>�� �˻��ϼ���.<br/>
									ģ����� �� �ڼ��� ����� �����մϴ�.<br/>
								</p>
							</div>
							
							<div id="mystorybs" style="display:none">
								<div class="qr"><img src="/images/qr/bs_mystorybs.jpg" alt="ť���ڵ�"></div>
								<div class="qrid">ID &nbsp:&nbsp mystorybs</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="ģ���߰��ϱ�"></a>-->&nbsp;</div>
								<p class="qrtxt">
									�Ʒ� �ڵ带 ��ĵ�ϸ� īī����<br/>
									ģ���� �ٷ� �߰��� �� �ֽ��ϴ�.<br/>
									<br/>
									QR�ڵ� ����� �����ź���<br/>
									īī���� ���̵�˻��� <span>���̽��丮</span>�� �˻��ϼ���.<br/>
									ģ����� �� �ڼ��� ����� �����մϴ�.<br/>
								</p>
							</div>
							
							<div id="mystoryus" style="display:none"> 
								<div class="qr"><img src="/images/qr/us_mystoryus.jpg" alt="ť���ڵ�"></div>
								<div class="qrid">ID &nbsp:&nbsp mystoryus</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="ģ���߰��ϱ�"></a>-->&nbsp;</div>
								<p class="qrtxt">
									�Ʒ� �ڵ带 ��ĵ�ϸ� īī����<br/>
									ģ���� �ٷ� �߰��� �� �ֽ��ϴ�.<br/>
									<br/>
									QR�ڵ� ����� �����ź���<br/>
									īī���� ���̵�˻��� <span>���̽��丮</span>�� �˻��ϼ���.<br/>
									ģ����� �� �ڼ��� ����� �����մϴ�.<br/>
								</p>
							</div>
							
							<div id="mystorycw" style="display:none"> 
								<div class="qr"><img src="/images/qr/cw_mystorycw.jpg" alt="ť���ڵ�"></div>
								<div class="qrid">ID &nbsp:&nbsp mystorycw</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="ģ���߰��ϱ�"></a>-->&nbsp;</div>
								<p class="qrtxt">
									�Ʒ� �ڵ带 ��ĵ�ϸ� īī����<br/>
									ģ���� �ٷ� �߰��� �� �ֽ��ϴ�.<br/>
									<br/>
									QR�ڵ� ����� �����ź���<br/>
									īī���� ���̵�˻��� <span>���̽��丮</span>�� �˻��ϼ���.<br/>
									ģ����� �� �ڼ��� ����� �����մϴ�.<br/>
								</p>
							</div>
							
							<div id="mystorykd" style="display:none"> 
								<div class="qr"><img src="/images/qr/kd_mystorykd.jpg" alt="ť���ڵ�"></div>
								<div class="qrid">ID &nbsp:&nbsp mystorykd</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="ģ���߰��ϱ�"></a>-->&nbsp;</div>
								<p class="qrtxt">
									�Ʒ� �ڵ带 ��ĵ�ϸ� īī����<br/>
									ģ���� �ٷ� �߰��� �� �ֽ��ϴ�.<br/>
									<br/>
									QR�ڵ� ����� �����ź���<br/>
									īī���� ���̵�˻��� <span>���̽��丮</span>�� �˻��ϼ���.<br/>
									ģ����� �� �ڼ��� ����� �����մϴ�.<br/>
								</p>
							</div>
							
							<div id="mystoryis" style="display:none"> 
								<div class="qr"><img src="/images/qr/is_mystoryis.jpg" alt="ť���ڵ�"></div>
								<div class="qrid">ID &nbsp:&nbsp mystoryis</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="ģ���߰��ϱ�"></a>-->&nbsp;</div>
								<p class="qrtxt">
									�Ʒ� �ڵ带 ��ĵ�ϸ� īī����<br/>
									ģ���� �ٷ� �߰��� �� �ֽ��ϴ�.<br/>
									<br/>
									QR�ڵ� ����� �����ź���<br/>
									īī���� ���̵�˻��� <span>���̽��丮</span>�� �˻��ϼ���.<br/>
									ģ����� �� �ڼ��� ����� �����մϴ�.<br/>
								</p>
							</div>
							
							<div id="mystoryys" style="display:none"> 
								<div class="qr"><img src="/images/qr/ys_mystoryys.jpg" alt="ť���ڵ�"></div>
								<div class="qrid">ID &nbsp:&nbsp mystoryys</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="ģ���߰��ϱ�"></a>-->&nbsp;</div>
								<p class="qrtxt">
									�Ʒ� �ڵ带 ��ĵ�ϸ� īī����<br/>
									ģ���� �ٷ� �߰��� �� �ֽ��ϴ�.<br/>
									<br/>
									QR�ڵ� ����� �����ź���<br/>
									īī���� ���̵�˻��� <span>���̽��丮</span>�� �˻��ϼ���.<br/>
									ģ����� �� �ڼ��� ����� �����մϴ�.<br/>
								</p>
							</div>

								<div id="mystorybd" style="display:none"> 
								<div class="qr"><img src="/images/qr/bd_mystorybd.jpg" alt="ť���ڵ�"></div>
								<div class="qrid">ID &nbsp:&nbsp mystorybd</div>
								<div class="prplus"><!--<a href=""><img src="/images/common/kabtn.gif" alt="ģ���߰��ϱ�"></a>-->&nbsp;</div>
								<p class="qrtxt">
									�Ʒ� �ڵ带 ��ĵ�ϸ� īī����<br/>
									ģ���� �ٷ� �߰��� �� �ֽ��ϴ�.<br/>
									<br/>
									QR�ڵ� ����� �����ź���<br/>
									īī���� ���̵�˻��� <span>���̽��丮</span>�� �˻��ϼ���.<br/>
									ģ����� �� �ڼ��� ����� �����մϴ�.<br/>
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
				<section class="contents"><!-- sms����� -->
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
										<td class="formtit">�̸�</td>
										<td align="center" width="3"></td>
										<td valign="top">
											<input type="text" name="name" id="name" maxlength="20" style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">
										</td>
									  </tr>
									  <tr>
										<td colspan="3" height="12"></td>
									  </tr>
									  <tr>
										<td class="formtit">����ó</td>
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
												<td width="57"><input type="text" name="phone2" id="phone2" maxlength="4" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;ime-mode: disabled;" onkeypress="return onlyNumber();"></td>
												<td align="center" width="6"></td>
												<td width="57"><input type="text" name="phone3" id="phone3" maxlength="4" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;ime-mode: disabled;" onkeypress="return onlyNumber();"></td>
												<td>&nbsp;</td>
											  </tr>
											</table>
										</td>
									  </tr>
									  <tr>
										<td colspan="3" height="12"></td>
									  </tr>
									  <tr>
										<td valign="top"  class="formtit" style="">��㼾��</td>
										<td align="center" width="3"></td>
										<td valign="top">
											<select name="center_code" id="center_code" style="width:207px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">

                                    <option value="CT0001">��������</option>

                                    <option value="CT0002">�ϻ꼾��</option>

                                    <option value="CT0003">â������</option>

                                    <option value="CT0004">��꼾��</option>

                                    <option value="CT0005">�λ꼾��</option>

                                    <option value="CT0007">��������</option>

                                    <option value="CT0008">��꼾��</option>

                                    <option value="CT0009">�д缾��</option>

                                    <option value="CT0010">â������(�λ��߰���)</option>

                                    <option value="CT0011">����ɸ���㼾��</option>

											</select>
										</td>
									  </tr>
									  <tr>
										<td colspan="3" height="12">&nbsp;</td>
									  </tr>
									  <tr>
										<td class="formtit">��ȭ����<br />�ð�</td>
										<td align="center" width="3"></td>
										<td valign="top">
											<select name="call_rcv" id="call_rcv" style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">
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
										<td valign="top"  class="formtit" style="">���ɴ�</td>
										<td align="center" width="3"></td>
										<td valign="top">
											<select id="age" name="age" style="width:207px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">
												<option value="10">10��</option>
												<option value="20">20��</option>
												<option value="30">30��</option>
												<option value="40">40��</option>
												<option value="50">50��</option>
												<option value="60">60���̻�</option>
											</select>
										</td>
									  </tr>
									  <tr>
										<td colspan="3" height="12"></td>
									  </tr>
									  <tr>
										<td valign="top" class="formtit">���ǳ���</td>
										<td align="center" width="3"></td>
										<td>
											<textarea name="content" id="content" style="width:205px; height:80px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" maxlength="200" onkeyup="return textarea_maxlength(this)"></textarea>
										</td>
									  </tr>
									</table>
								</td>
							  </tr>
							  <tr>
								<td>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
									  <tr>
										<td colspan="3 " style="font-family:���� ���; font-size:12px; color:#7a7a7a;padding:10px 0; width: 210px; padding-left: 45px;">���ɴ�� ��㳻���� ������ �����ּ��� </td>
									  </tr>
									</table>
								</td>
							  </tr>
							  <tr>
								<td>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
									  <tr>
										<td colspan="3 " style="font-family:���� ���;font-size:13px; color:#8b8b8b;padding:10px 0; letter-spacing: -1.5px;"><input type="checkbox" id='chk_sms_inquery_yn' name='chk_sms_inquery_yn' /> �������� ��޹�ħ�� ���� <a href="#" style="color:#505050; font-family: ���� ���; text-decoration:underline; " id="layer_open3">����������޹�ħ</a></td>
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
				<section class="contents"><!-- �¶��ο���  -->
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
											<td class="formtit" width="58px">��¥</td>
											<td align="center" width="3"></td>
											<td>
												<table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
												  <tr>
													<td width="65">
														<select name="reserve_year" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">
															
															<option value="2017">2017</option>
															
															<option value="2018">2018</option>
															
														</select>
													</td>
													<td align="center" width="6"></td>
													<td width="65">
														<select name="reserve_month" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">
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
														<select name="reserve_day" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">
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
											<td class="formtit">�ð�</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<select name="reserve_time" style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">
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
											<td class="formtit">�̸�</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<input type="text" name="name" id="name" maxlength="20" style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">
											</td>
										  </tr>
										  <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										  <tr>
											<td class="formtit">����ó</td>
											<td align="center" width="3"></td>
											<td>
												<table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
												  <tr>
													<td width="58">
														<!--<input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">-->
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
													<td width="57"><input type="text" name="phone2" id="phone2"  maxlength="4" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;ime-mode: disabled;" onkeypress="return onlyNumber();"></td>
													<td align="center" width="6"></td>
													<td width="57"><input type="text" name="phone3" id="phone3"  maxlength="4" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;ime-mode: disabled;" onkeypress="return onlyNumber();"></td>
													<td>&nbsp;</td>
												  </tr>
												</table>
											</td>
										  </tr>
										  <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										  <tr>
											<td valign="top"  class="formtit" style="">��㼾��</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<select name="center_code" id="center_code" style="width:207px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">
													<option value="">���͸� �������ּ���</option>

                                    <option value="CT0001">��������</option>

                                    <option value="CT0002">�ϻ꼾��</option>

                                    <option value="CT0003">â������</option>

                                    <option value="CT0004">��꼾��</option>

                                    <option value="CT0005">�λ꼾��</option>

                                    <option value="CT0007">��������</option>

                                    <option value="CT0008">��꼾��</option>

                                    <option value="CT0009">�д缾��</option>

                                    <option value="CT0010">â������(�λ��߰���)</option>

                                    <option value="CT0011">����ɸ���㼾��</option>

												</select>
											</td>
										  </tr>
										  <tr>
											<td colspan="3" height="12"></td>
										  </tr>
										  <tr>
											<td valign="top" class="formtit">���ǳ���</td>
											<td align="center" width="3"></td>
											<td>
												<textarea name="reason" id="reason" style="width:205px; height:80px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" maxlength="200" onkeyup="return textarea_maxlength(this)"></textarea>
											</td>
										  </tr>
										</table>
									</td>
								  </tr>
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>

											<td colspan="3 " style="font-family:���� ���; font-size:12px; color:#7a7a7a;padding:10px 0; width: 210px; padding-left: 45px;">���ɴ�� ��㳻���� ������ �����ּ��� </td>
										  </tr>
										</table>
									</td>
								  </tr>
								  <tr>
									<td>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
										  <tr>
											<td colspan="3" style="font-family:���� ���;font-size:13px; color:#8b8b8b;padding:10px 0; letter-spacing: -1.5px;"><input type="checkbox" id='chk_res_info_yn' name='chk_res_info_yn' /> �������� ��޹�ħ�� ���� <a href="#" style="color:#505050; font-family: ���� ���; text-decoration:underline; " id="layer_open3">����������޹�ħ</a></td>
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
				<section class="contents"><!-- ���ô±� -->
					<div class="tit"><img src="/images/common/tit04.jpg" alt="" /></div>
					<div class="con">
						<select style="width:260px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" name="select"  onchange="if(this.value) location.href=(this.value);">
							<option value="">��㼾�͸� �������ּ���.</option>
							<option value="/sub/sub01/sub0103_view.html">��������</option>
							<option value="/sub/sub01/sub0103_view2.html">�λ꼾��</option>
							<option value="/sub/sub01/sub0103_view3.html">��꼾��</option>
							<option value="/sub/sub01/sub0103_view4.html">â������</option>
							<option value="/sub/sub01/sub0103_view5.html">��������</option>
							<option value="/sub/sub01/sub0103_view6.html">�ϻ꼾��</option>
							<option value="/sub/sub01/sub0103_view7.html">��꼾��</option>
							<option value="/sub/sub01/sub0103_view7.html">�д缾��</option>
						</select>
						<table >
							<tr>
								<td width="75px">��������</td>
								<td width="100px">02- 557-1275</td>
								<td  width="63px"><p class="spot">��ġ�ȳ�</p></td>
								<td><a href="/sub/sub01/sub0103_view.html"><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">�λ꼾��</td>
								<td width="100px">051-781-5412</td>
								<td  width="63px"><p class="spot">��ġ�ȳ�</p></td>
								<td><a href="/sub/sub01/sub0103_view2.html"><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">��꼾��</td>
								<td width="100px">052-266-5412</td>
								<td  width="63px"><p class="spot">��ġ�ȳ�</p></td>
								<td><a href="/sub/sub01/sub0103_view3.html"><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">â������</td>
								<td width="100px">055-284-5412</td>
								<td  width="63px"><p class="spot">��ġ�ȳ�</p></td>
								<td><a href="/sub/sub01/sub0103_view4.html"><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">��������</td>
								<td width="100px">02-404-5412</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href="/sub/sub01/sub0103_view5.html"><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">�ϻ꼾��</td>
								<td width="100px">031-924-1271</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href="/sub/sub01/sub0103_view6.html"><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">��꼾��</td>
								<td width="100px">055-372-1275</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href="/sub/sub01/sub0103_view7.html"><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td width="75px">�д缾��</td>
								<td width="100px">031-714-1255</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href="/sub/sub01/sub0103_view8.html"><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<!--<tr>
								<td>��������</td>
								<td>02-1245-8959</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>��������</td>
								<td>02-1245-8959</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>��������</td>
								<td>02-1245-8959</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>��������</td>
								<td>02-1245-8959</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>��������</td>
								<td>02-1245-8959</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr class="last">
								<td>��������</td>
								<td>02-1245-8959</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="/images/common/quick04icon.gif" ></a></td>
							</tr>-->
						</table>
						<!--<div class="pageing2">
							<a href="#none" class="prev"><img src="/images/common/prev.png" alt="���� ������"></a>
							<a href="#none" class="current"><strong>1</strong></a>
							<a href="#">2</a>
							<a href="#">3</a>
							<a href="#none" class="next"><img src="/images/common/next.png" alt="���� ��������"></a>
						</div>-->
				</section>
			</div>
		</div>
		<!-- END .quick_box -->
	</div>
	<!-- END .show_box -->
	
	<!--  �ǽð� ��� �������� �˾� -->
	<div class="layer3" style="display:none;">
		<div class="bg3"></div>
		<div class="layer_area3" id="layer3" style="margin-top: -375px; margin-left: -390px;">
			<div style="width:780px; height:87px; float:left; cursor:pointer;" id="layer_close3"><img src="/images/common/popup_tit01.png"></div>
			<div style="width:780px; height:663px; float:left; background:#ffffff;">
				<textarea style="width:720px; height:573px;float:left; margin-top:30px; margin-left:28px; border:0;" readonly="">
					����
				</textarea>
			</div>
		</div>
	</div>
	<!--  �ǽð� ��� �������� �˾� -->
	
	<!--  ����ī���� �������� �˾� -->
	<div class="layer4" style="display: none;">
		<div class="bg4"></div>
		<div class="layer_area4" id="layer4" style="margin-top: -375px; margin-left: -390px;">
			<div style="width:780px; height:87px; float:left; cursor:pointer;" id="layer_close4"><img src="/images/common/popup_tit01.png"></div>
			<div style="width:780px; height:663px; float:left; background:#ffffff;">
				<textarea style="width:720px; height:573px;float:left; margin-top:30px; margin-left:28px; border:0;" readonly="">
					����
				</textarea>
			</div>
		</div>
	</div>
	<!--  ����ī���� �������� �˾� -->
</div>
<!-- END #quick -->

<!-- START #full_menu_pop -->
<div id="full_menu">
</div>
<!-- END #full_menu_pop -->

<!--  �������� on&off ��ũ��Ʈ#3 -->
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
		layer_open('layer3'); /* ������ �ϴ� ���� ���̵� �Է� */
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
<!--  �������� on&off ��ũ��Ʈ#4 -->

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
		layer_open('layer4'); /* ������ �ϴ� ���� ���̵� �Է� */
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
/*�����ؾ��� �κ� 0 -500*/
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
	/*close ��ư Ŭ����*/
	
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
			/* ������ �޴� �ݾ��ִ� �ҽ� �����ؼ� �ٿ����� */
			$('#quick').animate({
				right:-322
			},600, 'easeInOutCubic');
			full_menu_open();
			//////////////////////////////////////////////////
			$('#quick_mini').hide();
		}
	});
	$('#quick_mini').click(function(){
		/* ������ �޴� �ݾ��ִ� �ҽ� �����ؼ� �ٿ����� */
		$('#quick').animate({
			right:0
		},600, 'easeInOutCubic');
		full_menu_open();
		//////////////////////////////////////////////////
		$('#quick .show_box').find('#quick_1').css("display", "block");
	});
	$('.quick_top_banner').click(function(){
		/* ������ �޴� �ݾ��ִ� �ҽ� �����ؼ� �ٿ����� */
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

<!-- Withpang Tracker v3.0 [����] start -->
  <script src="http://cdn.megadata.co.kr/js/enliple_min2.js"></script>
  <script type="text/javascript">
  <!--
  	var rf = new EN();
  	rf.setData("sc", encodeURIComponent(""));
  	rf.sendRf();
  //-->
  </script>
<!-- Withpang Tracker v3.0 [����] end -->
<div class="wrapper">
	<div class="dimd"></div>
	<!-- header -->
	<div class="header line">
		<!-- topBar -->
		<div class="topBar">
			<div class="areaBox">
				<ul>
					<li><a href="/sub/sub01/sub0103_list.html">���̽��丮 �ֺ����� �ѷ�����</a></li>
					<li><a href="/sub/sub01/sub0103_view.html">��������</a></li>
					<li><a href="/sub/sub01/sub0103_view2.html">�λ꼾��</a></li>
					<li><a href="/sub/sub01/sub0103_view5.html">��������</a></li>
					<li><a href="/sub/sub01/sub0103_view3.html">��꼾��</a></li>
					<li><a href="/sub/sub01/sub0103_view6.html">�ϻ꼾��</a></li>
					<li><a href="/sub/sub01/sub0103_view4.html">â������</a></li>
					<li><a href="/sub/sub01/sub0103_view7.html">��꼾��</a></li>
					<li><a href="/sub/sub01/sub0103_view8.html">�д缾��</a></li>
				</ul>
			</div>
			<div class="snsBox">
				<ul>
					<li class="sns_f"><a href="https://facebook.com/mystorypeople" target="_blank" title="���̽���">���̽���</a></li>
					<li class="sns_b"><a href="http://mystorycenter.kr" target="_blank" title="��α�">��α�</a></li>
					<li class="sns_i"><a href="https://www.instagram.com/mystoryhappy" target="_blank" title="�ν�Ÿ�׷�">�ν�Ÿ�׷�</a></li>
					<li class="sns_t"><a href="http://mystorycenter.tistory.com" target="_blank" title="Ƽ���丮">Ƽ���丮</a></li>
				</ul>
			</div>
		</div>
		<!-- //topBar -->
		
		<div class="head_box">
			<h1 class="logo">
				<a href="/main.html"><img src="/images/common/logo.gif" alt="���̽��丮"></a>
			</h1> 
			<span class="btn_allMenu">
				<a href="#" class="btnOpen" title="��ü�޴� ����">Menu</a>
				<a href="#" class="btnClose" title="��ü�޴� �ݱ�">close</a>
			</span>
			<div id="gnb" class="pc_gnb nav">
				<h3 class="skip">PC_menu</h3>
				<ul id="nav">
					<li class="has-sub g1"><a href="/sub/sub01/sub0101.html"><img src="/images/common/gnb01.gif">�Ұ�</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub01/sub0101.html">My story is</a></li>
								<li><a href="/sub/sub01/sub0102.html">���̽��丮 �̿�ȳ�</a></li>
								<li><a href="/sub/sub01/sub0103_list.html">������ �ѷ�����</a></li>
								<li><a href="/sub/sub01/sub0104.html">���̽��丮 �����</a></li>
								<li><a href="/sub/sub01/sub0105_list.html">���̽��丮 ����̾߱�</a></li>
								<li><a href="/sub/sub01/sub0106.html">���� � ����</a></li>
							</ul>
						</div>
					</li>
					<li class="has-sub g2"><a href="/sub/sub02/sub0201.html">����/Ŀ�´�Ƽ</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub02/sub0201.html">�¶��λ��</a></li>
								<li><a href="/sub/sub02/sub0202_01.html">�¶��� �ǽð� ����</a></li>
								<li><a href="/sub/sub02/sub0203_list.html">���̽��丮 ��������</a></li>
								<li><a href="/sub/sub02/sub0204_list.html">���̽��丮 �ɸ�Į��</a></li>
								<li><a href="/sub/sub02/sub0205_list.html">���̽��丮 �̾߱�</a></li>
								<li><a href="/sub/sub02/sub0206_list.html">�����ϴ� ����</a></li>
							</ul>
						</div>
					</li>
					<li class="has-sub g3"><a href="/sub/sub03/sub0301.html">�Ƶ�/û�ҳ���</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub03/sub0301.html">ADHD</a></li>
								<li><a href="/sub/sub03/sub0302.html">�Ƶ�û�ҳ���</a></li>
								<li><a href="/sub/sub03/sub0303.html">�����ൿ</a></li>
								<li><a href="/sub/sub03/sub0304.html">�Ҿ�</a></li>
								<li><a href="/sub/sub03/sub0305.html">����Ʈ�� �ߵ�</a></li>
								<li><a href="/sub/sub03/sub0309.html">���� �ߵ�</a></li>
								<li><a href="/sub/sub03/sub0306.html">�б� ������, ������</a></li>
								<li><a href="/sub/sub03/sub0307.html">�н�����, �н����</a></li>
								<li><a href="/sub/sub03/sub0308.html">ƽ���</a></li>
							</ul>
						</div>
					</li>
					<li class="has-sub g4"><a href="/sub/sub04/sub0401.html">����/�κλ��</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub04/sub0401.html">�������</a></li>
								<li><a href="/sub/sub04/sub0402.html">�Ҿ�����</a></li>
								<li><a href="/sub/sub04/sub0403.html">���ݹ����ൿ</a></li>
								<li><a href="/sub/sub04/sub0404.html">�ߵ�</a></li>
								<li><a href="/sub/sub04/sub0405.html">���źп�</a></li>
								<li><a href="/sub/sub04/sub0406.html">�κλ��</a></li>
								<li><a href="/sub/sub04/sub0407.html">�������</a></li>
							</ul>
						</div>
					</li>
					<li class="has-sub g5"><a href="/sub/sub05/sub0501.html">�ɸ�ġ�����α׷�</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub05/sub0501.html">���λ��ġ��</a></li>
								<li><a href="/sub/sub05/sub0502.html">�̼��ɸ�ġ��</a></li>
								<li><a href="/sub/sub05/sub0503.html">���̽ɸ�ġ��</a></li>
								<li><a href="/sub/sub05/sub0504.html">���ؽɸ�ġ��</a></li>
								<li><a href="/sub/sub05/sub0505.html">�����ɸ�ġ��</a></li>
								<li><a href="/sub/sub05/sub0506.html">���ǽɸ�ġ��</a></li>
								<li><a href="/sub/sub05/sub0507.html">���ġ��</a></li>
								<li><a href="/sub/sub05/sub0508.html">�н�ġ��-���λ��</a></li>
							</ul>
						</div>
					</li>
					<li class="has-sub g6"><a href="/sub/sub06/sub0601.html">�ɸ��˻����α׷�</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub06/sub0601.html">���սɸ���</a></li>
								<li><a href="/sub/sub06/sub0602.html">����������</a></li>
								<li><a href="/sub/sub06/sub0603.html">������ �ߴް˻�</a></li>
								<li><a href="/sub/sub06/sub0604.html">�н� �� ���� ������</a></li>
								<li><a href="/sub/sub06/sub0605.html">������ ������</a></li>
								<li><a href="/sub/sub06/sub0606.html">�����</a></li>
								<li><a href="/sub/sub06/sub0607.html">One day Solution</a></li>
								<li><a href="/sub/sub06/sub0608.html">�ڰ�����</a></li>
							</ul>
						</div>
					</li>
					<li class="has-sub g7"><a href="/sub/sub07/sub0701.html">���̽��丮 ������</a>
						<div class="dropdown">
							<ul>
								<li><a href="/sub/sub07/sub0701.html">�ɸ���� ��������</a></li>
								<li><a href="/sub/sub07/sub0702.html">������ ��������</a></li>
								<li><a href="/sub/sub07/sub0703.html">�ֽ��ߵ� ��������</a></li>
								<li><a href="/sub/sub07/sub0704.html">������ Ȱ�� �̾߱�</a></li>
								<li><a href="/sub/sub07/sub0705.html">�ǽð� �����㹮��</a></li>
								<li><a href="/sub/sub07/sub0706.html">�λ��߰��� ��㿹��</a></li>
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
				<li class="has-sub g1"><a href="/sub/sub01/sub0101.html">Mystory �Ұ�</a>
					<ul>
						<li><a href="/sub/sub01/sub0101.html">My story is</a></li>
						<li><a href="/sub/sub01/sub0102.html">���̽��丮 �̿�ȳ�</a></li>
						<li><a href="/sub/sub01/sub0103_list.html">������ �ѷ�����</a></li>
						<li><a href="/sub/sub01/sub0104.html">���̽��丮 �����</a></li>
						<li><a href="/sub/sub01/sub0105_list.html">���̽��丮 ����̾߱�</a></li>
						<li><a href="/sub/sub01/sub0106.html">���� � ����</a></li>
					</ul>
				</li>
				<li class="has-sub g2"><a href="/sub/sub02/sub0201.html">����/Ŀ�´�Ƽ</a>
					<ul>
						<li><a href="/sub/sub02/sub0201.html">�¶��λ��</a></li>
						<li><a href="/sub/sub02/sub0202_01.html">�¶��� �ǽð� ����</a></li>
						<li><a href="/sub/sub02/sub0203_list.html">���̽��丮 ��������</a></li>
						<li><a href="/sub/sub02/sub0204_list.html">���̽��丮 �ɸ�Į��</a></li>
						<li><a href="/sub/sub02/sub0205_list.html">���̽��丮 �̾߱�</a></li>
						<li><a href="/sub/sub02/sub0206_list.html">�����ϴ� ����</a></li>
					</ul>
				</li>
				<li class="has-sub g3"><a href="/sub/sub03/sub0301.html">�Ƶ�/û�ҳ���</a>
					<ul>
						<li><a href="/sub/sub03/sub0301.html">ADHD</a></li>
						<li><a href="/sub/sub03/sub0302.html">�Ƶ�û�ҳ���</a></li>
						<li><a href="/sub/sub03/sub0303.html">�����ൿ</a></li>
						<li><a href="/sub/sub03/sub0304.html">�Ҿ�</a></li>
						<li><a href="/sub/sub03/sub0305.html">����Ʈ�� �ߵ�</a></li>
						<li><a href="/sub/sub03/sub0309.html">���� �ߵ�</a></li>
						<li><a href="/sub/sub03/sub0306.html">�б� ������, ������</a></li>
						<li><a href="/sub/sub03/sub0307.html">�н�����, �н����</a></li>
						<li><a href="/sub/sub03/sub0308.html">ƽ���</a></li>
					</ul>
				</li>
				<li class="has-sub g4"><a href="/sub/sub04/sub0401.html">����/�κλ��</a>
					<ul>
						<li><a href="/sub/sub04/sub0401.html">�������</a></li>
						<li><a href="/sub/sub04/sub0402.html">�Ҿ�����</a></li>
						<li><a href="/sub/sub04/sub0403.html">���ݹ����ൿ</a></li>
						<li><a href="/sub/sub04/sub0404.html">�ߵ�</a></li>
						<li><a href="/sub/sub04/sub0405.html">���źп�</a></li>
						<li><a href="/sub/sub04/sub0406.html">�κλ��</a></li>
						<li><a href="/sub/sub04/sub0407.html">�������</a></li>
					</ul>
				</li>
				<li class="has-sub g5"><a href="/sub/sub05/sub0501.html">�ɸ�ġ�����α׷�</a>
					<ul>
						<li><a href="/sub/sub05/sub0501.html">���λ��ġ��</a></li>
						<li><a href="/sub/sub05/sub0502.html">�̼��ɸ�ġ��</a></li>
						<li><a href="/sub/sub05/sub0503.html">���̽ɸ�ġ��</a></li>
						<li><a href="/sub/sub05/sub0504.html">���ؽɸ�ġ��</a></li>
						<li><a href="/sub/sub05/sub0505.html">�����ɸ�ġ��</a></li>
						<li><a href="/sub/sub05/sub0506.html">���ǽɸ�ġ��</a></li>
						<li><a href="/sub/sub05/sub0507.html">���ġ��</a></li>
						<li><a href="/sub/sub05/sub0508.html">�н�ġ��-���λ��</a></li>
					</ul>
				</li>
				<li class="has-sub g6"><a href="/sub/sub06/sub0601.html">�ɸ��˻����α׷�</a>
					<ul>
						<li><a href="/sub/sub06/sub0601.html">���սɸ���</a></li>
						<li><a href="/sub/sub06/sub0602.html">����������</a></li>
						<li><a href="/sub/sub06/sub0603.html">������ �ߴް˻�</a></li>
						<li><a href="/sub/sub06/sub0604.html">�н� �� ���� ������</a></li>
						<li><a href="/sub/sub06/sub0605.html">������ ������</a></li>
						<li><a href="/sub/sub06/sub0606.html">�����</a></li>
						<li><a href="/sub/sub06/sub0607.html">One day Solution</a></li>
						<li><a href="/sub/sub06/sub0608.html">�ڰ�����</a></li>
					</ul>
				</li>
				<li class="has-sub g7"><a href="/sub/sub07/sub0701.html">���̽��丮 ������</a>
					<ul>
						<li><a href="/sub/sub07/sub0701.html">�ɸ���� ��������</a></li>
						<li><a href="/sub/sub07/sub0702.html">������ ��������</a></li>
						<li><a href="/sub/sub07/sub0703.html">�ֽ��ߵ� ��������</a></li>
						<li><a href="/sub/sub07/sub0704.html">������ Ȱ�� �̾߱�</a></li>
						<li><a href="/sub/sub07/sub0705.html">�ǽð� �����㹮��</a></li>
						<li><a href="/sub/sub07/sub0706.html">�λ��߰��� ��㿹��</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- //allMenu -->
	</div>
	<!-- //header -->

	<div class="sub-content">
		<div class="bg02area">
			<p class="tit">����/Ŀ�´�Ƽ</p>
		</div>
		<div class="sub-content-inbox">
			<div class="sub-menu2">
				<ul class="sub-menu2-inbox">

					<li class="act act1"><a href="sub0201.html">�¶��λ��</a></li>
					<li class=""><a href="sub0202_01.html">�¶��� �ǽð�����</a></li>
					<li class=""><a href="sub0203_list.html">���̽��丮 ��������</a></li>
					<li class=""><a href=" sub0204_list.html">���̽��丮 �ɸ�Į��</a></li>
					<li class=""><a href="sub0205_list.html">���̽��丮 �̾߱�</a></li>
					<li class="last "><a href="sub0206_list.html">�����ϴ� ����</a></li>

				</ul>
			</div>
			<div class="top"><a href="#top"><img src="/images/sub/top.gif" alt="ž��ư"></a></div>--%>

			<h3>�¶��� ���</h3>
			<p class="sub02_txt">
				���̽��丮�� �����ֽ� ������ �̾߱�� ������ ��ȣ <span class="bold">������ ���� ö���� ��� ���� �Ǹ� ����� ���� �ʽ��ϴ�.</span><br />
				<span>�亯�� ���� ���뿡 ���� �з��Ǿ� �ش� �о� ���������Կ� ���� ������ �̷�����ϴ�. <br />
				�亯 ������ �� ���ͺ� ������ �����Ե��� ���ǿ� ���� �޶��� �� ������ ������ �ֽñ� �ٶ��ϴ�.</span><br />
			</p>
			<a href="./sub0202_01.html"><p class="reserv-btn">�ǽð����� �ٷΰ���</p></a> 

<script type="text/javascript">
function checkLockPwd(form){
	if(form.c_pass.value.trim().length != 4){
		alert("��й�ȣ�� ��Ȯ�� �Է����ּ���.");
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
				<caption>��й�ȣ Ȯ��</caption>
				<tbody>
					<tr>
						<th >��й�ȣ Ȯ�� (4�ڸ�)</th>
						<td >
							<input type="hidden" value="${c_number}" name="c_number">
							<input type="password" name="c_pass" id="lock_pwd"  maxlength="4" style="IME-MODE: disabled;" class="writetxt03">
						</td>
					</tr>
				</tbody>
			</table>
			</form>
			
			<div class="btn-area">
				<input type="button" value="Ȯ��" class="submit" onclick="checkLockPwd(document.LockPwd);">
				<input type="button" value="���" class="cancel" onclick="javascript:history.back(-1);">
			</div>

		</div>
	</div>

	<!-- <div class="footer">
		<div class="footer-top">
			<div class="footer-top-inbox">
				<ul>
					<li>ȸ��Ұ�</li>
					<li id="service">����Ʈ�̿���</li>
					<li id="person">��������ó����ħ</li>
					<li><a href="/intro.html">����������</a></li>
					<li id="sitemap">����Ʈ��</li>
				</ul>
			</div>
		</div>
		<div class="footer-bottom">
			<div class="footer-bottom-inbox">
				<h2><img src="/images/common/b_logo.gif"></h2>
				<p>
					�����񽺼���&nbsp 02-557-1275<br>
					(��)���̽��丮 ����Ư���� ������ ������� 52�� 17 ���ﵿ �̿���Ÿ�� 10��  |  ����ڵ�Ϲ�ȣ : 505-88-00158 |  ��ǥ�̻� : �̼���<br>
					<br/>
					Copyright �� MYSTORY All Rights Reserved
				</p>
			</div>
		</div>
	</div>
</div>
���������˾�
<div class="pop01" id="pop">
	<div class="popheader">
		<div class="close"><img src="/images/common/quick_close.gif" border="0" alt="�ݱ�" /></div>
		<p class="tit">���̽��丮 �������� ��� ��ħ</p>
	</div>
	<div class="popcont">
		<p class="txt">
			�� ���� ���� ��� ��ħ<br/>
<br/>
(��)���̽��丮�ɸ���㼾��(���� ����)��  ȸ������ �������� ��ȣ�� ���� �ּ��� ���մϴ� <br/>
������ ȸ���� ����������ȣ�� �ſ� �߿���ϸ�, ������ ȸ���� �Ƚ��ϰ� ������ ���񽺸� ����Ͻ� �� �ֵ��� �ּ��� ���ϰ� �ֽ��ϴ�. ������ ����������ȣ��å�� ���Ͽ� ȸ���� �����ϴ� ���� ������ ��� �뵵�� ������� �̿�ǰ� ������ ������ �������� ��ȣ�� ���� ��� ��ġ�� ���ϰ� �ִ��� �˷��帳�ϴ�. ����������ȣ��å�� ���ο� ���񽺰� �߰��ǰų� ������ ��쿡 ����� �� ������ ������ �ּ� 14�� ���� �̸� ������ ���Դϴ�. ���÷� �� �������� ���ؼ� ������ ����������ȣ��å�� Ȯ���� �ֽñ� �ٶ��ϴ�. <br/>
<br/>
<br/>
�� �̿����� ����������ȣ <br/>
<br/>
������ ��ź�к�ȣ��, ������Ż����, ������Ÿ� �̿����� �� ������ȣ � ���� ���� �� ������ż��������ڰ� �ؼ��Ͽ��� �� ���� ���Ի��� ����������ȣ ���� �� ������źΰ� ������ ����������ȣ��ħ�� �ؼ��ϰ� �ֽ��ϴ�.
<br/>
<br/>
�� ���������� ������ ���� ���� <br/>
<br/>
������ ȸ���� ���������� �Է��� �� ������ ����������޹�ħ �Ǵ� �̿����� ���뿡 ���Ͽ� [������], [���Ǿ���] ���߸� Ŭ���� �� �ִ� ������ �ξ�, [������]�� Ŭ���ϸ� ���� ���� ���� �� �̿뿡 ���� ������ ������ �����մϴ�.

<br/>
�� ���������� �����ϰ� �̿��ϴ� ���� �� �׸� <br/>
<br/>
1) ������ ��Ȱ�� �����, ���� ������ ������ ���� �¶��� ��㿹�� ��� �� �Ʒ��� ���� ���������� �����ϰ� �ֽ��ϴ�. <br/>
��. �ʼ� ���� ���� <br/>
- �̸�, �޴��� ��ȣ, e-mail, �ּ� <br/>
��. ������ ���� ���� <br/>
- �����, ���¹�ȣ(�ڵ���ü ��� ��), ī����, ī���ȣ, �������ι�ȣ(ī����� ��) <br/>
��. ��14�� �̸� �̼����� ���� �� �������� <br/>
- �θ��(�����븮��)�� �̸�, ����ó <br/>
(�� 14�� �̸� ��� ���� �� �����븮�� ���ǿ���Ȯ��, ���� �����븮�� ����Ȯ�� ���� ���Ͽ� ���˴ϴ�.) <br/>
��. ���� ��� <br/>
- Ȩ������ �¶��� ��㿹�� ����� ���� ���� <br/>
�� �ۿ� ������ ���� Ȯ������ ����, �Ǹ�Ȯ�������� �ſ�����ȸ��� ���۵� �� ������, �� ������ ������ɿ� ���Ͽ� ��ȣ �� ���� �˴ϴ�. <br/>
2) ������ ȸ���� ���������� ����ϴ� ������ ������ ������, �ٸ� ��� �뵵�ε� ������ �ʽ��ϴ�. <br/>
��. ���� ���� �� ��ǰ�ȳ� <br/>
- ������ ����, Ư�� ���� ���� ����, ���� �ȳ�, ��Ÿ ������ ��ǰ�ȳ�, <br/>
��. ȸ������ <br/>
- ȸ���� ���� �̿� �� ������ ���� Ȯ������ ���� ����Ȯ��, ���νĺ�, �ҷ�ȸ���� ���� �̿������ ���ΰ� ������, �����ǻ� Ȯ��, ���� �� ����Ƚ�� ����, ��14�� �̸� �Ƶ� �������� ���� �� ���� �븮�� ���ǿ��� Ȯ��, ���� ���� �븮�� ����Ȯ��, ���� ������ ���� ��Ϻ���, �Ҹ�ó�� �� �ο�ó��, �������� ���� <br/>
��. �ű� ���� ���� �� ������ <br/>
- �ű� ���� ���� �� ���� ���� ����, �̺�Ʈ �� ���� ���� ���� �� ������ȸ ����, ���Ӻ� �ľ�, ȸ���� �����̿뿡 ���� ��� <br/>
������ ������ ���� ������ ��� ������ ���� �������� ����ϸ�, ȸ���� ���� ���� ���̴� �� ������ �ʰ��Ͽ� �̿��ϰų� ��Ģ������ �̿����� ���������� �ܺο� �������� �ʽ��ϴ�. �ٸ�, �Ʒ��� ��쿡�� ���ܷ� �մϴ�.
- �̿��ڵ��� ������ ������ ������ ��� <br/>
- ������ ������ �ǰ��ϰų�, ���� �������� ���ɿ� ������ ������ ����� ���� �������� �䱸�� �ִ� ��� <br/>
<br/>
<br/>
�� ���������� ���� �Ⱓ �� �̿� �Ⱓ <br/>
<br/>
������ ȸ���� ���������� ���� �� �̿뿡 ���� ���Ǹ� öȸ�ϴ� ������ ȸ���� ������ ��� ���� ������ ���� �� �̿��ϰ� �Ǹ�, ȸ���� �̿� ���Ǹ� öȸ�ϴ� ��쿡�� ȸ���� ���� ������ ��� �Ұ����� ������� ��ü ���� ���� ��ġ���� �����Ͽ�, ��� ������ε� ���� �Ǵ� �̿��� �� ������ ����ϴ�. <br/>
�ٸ�, ������ɿ��� ������ �����Ⱓ�� ���� ���� ���ܷ� �մϴ�. �� ��� ������ �����ϴ� ������ �� ������ �������θ� �̿��ϸ� �����Ⱓ�� �Ʒ��� �����ϴ�. <br/>
- ��� �Ǵ� û��öȸ � ���� ��� <br/>
���� ���� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� <br/>
���� �Ⱓ : 5�� <br/>
- ��ݰ��� �� ��ȭ ���� ���޿� ���� ��� <br/>
���� ���� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� <br/>
���� �Ⱓ : 5�� <br/>
- �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ��� <br/>
���� ���� : ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ���� <br/>
���� �Ⱓ : 3�� <br/>
- ����Ȯ�ο� ���� ��� <br/>
���� ���� : ������� �̿����� �� ������ȣ � ���� ���� <br/>
���� �Ⱓ : 6���� <br/>
- �湮�� ���� ��� <br/>
���� ���� : ��ź�к�ȣ�� <br/>
���� �Ⱓ : 3���� <br/>
������ ������ ȸ���� ���������� �����ϰ� ó���ϸ�, ������ ������ ���Ͽ� ������ ���� ����� ���Ͽ� ���������� �ı��մϴ�. <br/>
- ���� ���� ���������� �м��� �м��ϰų� �Ұ��� ���Ͽ� �ı��մϴ�. <br/>
- ������ ���� ���·� ����� ���������� ����� ����� �� ���� ����� ����� ����Ͽ� �����մϴ�. <br/>
<br/>
<br/>
�� ���������� ����, ����, ���� öȸ �䱸 �Ǹ� �� ��� ��� <br/>
<br/>
1) Ȩ�������� ���� ������ ȸ���� �������� ���� ȸ�� ���� �ÿ� ������ ���� ������ ����, ������ �� ������, ���� ���� �̿뿡 ���� ���Ǹ� öȸ�� �� �ֽ��ϴ�. �� �� ������ ȸ�� Ż���� ������ Ȯ���� �� ��ü ���� �ʿ��� ��ġ�� ���Ͽ�, �̿����� ���� ������ �ı��ϰ� ��� �뵵�ε� �̿���� �ʵ��� ó���մϴ�. <br/>
2) Ȩ������ ���� ������� ������ ȸ���� ���񽺸� �����ϴ� �ش� ������ ���Ͽ� �������� ���� ȸ�� ���� �ÿ� ������ ���� ������ ����, ������ �� �ֽ��ϴ�. ���� �̿뿡 ���� ����öȸ�� ���� ����ڿ��� ��ȭ �� E-mail�� ������� �������ֽñ� �ٶ��ϴ�. <br/>
����� ���� <br/>
�̸� ��å ��ȭ��ȣ E-mail <br/>
�ȿ��� ������ 02-557-1275 mystory@mystoryis.krr <br/>
<br/>
�� �������� �ڵ����� ��ġ�� ��ġ, � �� �� �źο� ���� ���� <br/>
<br/>
������ ������ ������ ���÷� �����ϰ� ã�Ƴ��� '��Ű(cookie)'���� ����մϴ�. ��Ű�� ������Ʈ�� ��ϴµ� �̿�Ǵ� ������ ������ �������� ������ ���� ���� �ؽ�Ʈ ���Ϸμ� ������ ��ǻ�� �ϵ��ũ�� ����˴ϴ�. ������ ������ ���� ������ ���� ��Ű�� ����մϴ�. <br/>
1) ��Ű �� ��� ���� <br/>
ȸ���� ��ȸ���� ���� �󵵳� �湮 �ð� ���� �м�, �̿����� ����� ���ɺо߸� �ľ� �� ���� ����, ���� �̺�Ʈ ���� ���� �� �湮 ȸ�� �ľ� ���� ���� Ÿ�� ������ �� ���� ���� ���� ���� <br/>
���ϴ� ��Ű ��ġ�� ���� ���ñ��� ������ �ֽ��ϴ�. ����, ���ϴ� ������������ �ɼ��� ���������ν� ��� ��Ű�� ����ϰų�, ��Ű�� ����� ������ Ȯ���� ��ġ�ų�, �ƴϸ� ��� ��Ű�� ������ �ź��� ���� �ֽ��ϴ�. <br/>
2) ��Ű ���� �ź� ��� <br/>
��:��Ű������ �ź��ϴ� ������δ� ȸ������ ����Ͻô� �� �������� �ɼ��� ���������ν� ��� ��Ű�� ����ϰų� ��Ű�� ����� ������ Ȯ���� ��ġ�ų�, ��� ��Ű�� ������ �ź��� �� �ֽ��ϴ�. <br/>
������� ��(���ͳ� �ͽ��÷ξ��� ���) <br/>
: �� ������ ����� ���� > ���ͳ� �ɼ� > �������� <br/>
��, ���ϲ��� ��Ű ��ġ�� �ź��Ͽ��� ��� ���� ������ ������� ���� �� �ֽ��ϴ�. <br/>
<br/>
�� ���� ���� ��ȣ�� ���� �����, ������ ��å <br/>
<br/>
������ ȸ���� ���� ������ ������ ����� �����ϰ� ��ȣ, �����ǵ��� �ּ��� ���ϰ� ������ ������ ���� �����, �������� ��å�� ���� �����ϰ� �ֽ��ϴ�. <br/>
��, ����� ��ġ <br/>
ȸ������ ���� ������ ���� ���Ѱ� ��й�ȣ�� ���ؼ� ö���� ��ȣ�ǰ� ������, ���� �� ���� �����͸� ��ȣȭ�ϰų� ���� ��� ���(Lock)�� ����Ͽ� �߿��� �����ʹ� ������ ���� ����� ���ؼ� ��ȣ�ǰ� �ֽ��ϴ�. ���� �ֽ� ��� ���α׷��� ����Ͽ� ���� ������ ħ�صǴ� ���� �����ϰ� ������, ħ������ �ý����� �̿��Ͽ� �ܺηκ����� ���� ������ �����ϰ� �ֽ��ϴ�. ���� ������ ���۽��� �ý��� ��ַ� �ѼյǴ� �Ϳ� ����Ͽ� �����͸� ���������� ����ϸ�, ��Ÿ �ý����� �������� Ȯ���ϱ� ���� ��� ������� ��� ���߷��� ����ϰ� �ֽ��ϴ�. <br/>
��, ������ ��ġ <br/>
������ ���� ���� ���� ������ �ʿ��� �ּ����� �ο����� ��ϸ� ���� �Ǵ� ���÷� ����� ������ ���Ͽ� ���� ���� ��ȣ ��å�� �ؼ��ϵ��� �����ϰ� �ֽ��ϴ�. �׸��� �系 ���� ���� ��ȣ ��ħ ���� �� �ؼ� ���θ� �����ϱ� ���� ���� ������ �����Ͽ� ���� ��� ��ħ ���� �� �������� �߰ߵ� ��쿡�� ��ü ���� ����, �����ϴ� �� �ʿ��� ��ġ�� ���ϰ� �ֽ��ϴ�. <br/>
<br/>
�� �� 14�� �̸� ����� �������� ��ȣ <br/>
<br/>
�� 14�� �̸��� ��̰� ������ �����Ϸ��� �ݵ�� �����븮��(�θ��)�� ���Ǹ� ���� �մϴ�. ������ �� 14�� �̸��� ��̰� ȸ�翡 ������ ��� �����븮��(�θ��)�� ���Ǹ� ���ϴ� ������ �����ϰ� �ֽ��ϴ�. �� 14�� �̸� ����� �����븮��(�θ��)�� ����� ���� ���� ����, ����, ����öȸ�� �䱸�� �� ������, �̷��� ��û�� ���� ��� ������ ��ü ���� �ʿ��� ��ġ�� ���մϴ�. <br/>
<br/>
<br/>
�� �������� ���� �Ҹ�ó�� ���� �� �� ���� ���� <br/>
<br/>
������ ���� ������ ������ ȸ������ �ǰ߿� �׻� ������ ����ϴ�. ���� ���� ���� ���� �Ҹ� �����̳� �ǹ� ������ �����ø� �����ͳ� ����(mystory@mystoryis.kr)���� �����Ͻø� ���� ��� ��ġ�Ͽ� ����� �뺸�� �帳�ϴ�. ������ �̿�ȸ���� ���������� ������ ������ �ִ� ��� �ż��ϰ� ȿ������ ���� �ذ��� ���Ͽ� ��������������������ȸ�� �� ó���� �Ƿ��� �� �ֽ��ϴ�. <br/>
* ��������������������ȸ <br/>
- ��ȭ : 02-405-4747 <br/>
- �ѽ� : 02-405-4729 <br/>
- Ȩ������ : http://www.kopico.or.kr/ <br/>
<br/>
<br/>
�� e���� �ּ� ���ܼ��� �ź� <br/>
<br/>
�� ������Ʈ�� �Խõ� e���� �ּҰ� ���ڿ��� ���� ���α׷��̳� �� ���� ����� ��ġ�� �̿��Ͽ� �������� �����Ǵ� ���� �ź��ϸ�, �̸� ���� �� ������Ÿ� ���� ���� ����ó�� ���� �����Ͻñ� �ٶ��ϴ�. <br/>
[�Խ��� 2016�� 3�� 1��] <br/>
�������� ���� å���� <br/>
�̸� ��å E-mail <br/>
---------------------------------------------- <br/>
�ȿ��� ������ mystory@mystoryis.kr <br/>
		</p>
	</div>
</div>

<div class="pop01" id="pop2">
	<div class="popheader">
		<div class="close"><img src="/images/common/quick_close.gif" border="0" alt="�ݱ�" /></div>
		<p class="tit">���̽��丮 Ȩ������ �����̿���</p>
	</div>
	<div class="popcont">
		<p class="txt">
[�� 1 �� ��Ģ]<br/>
<br/>
�� 1 ��   ����<br/>
�� ����� ���̽��丮 �ɸ���㼾��(���� ����)  Ȩ���������� �����ϴ� ��� ������ �̿����� �� ������ ���� ���װ� ��Ÿ �ʿ��� ������ ������Ż���� �� ���� ������� ���ϴ� ��� �ؼ��ϰ� �������� �������� �մϴ�.<br/>
<br/>
�� 2 ��   ����<br/>
"�̿���"�� ���� Ȩ�������� �����Ͽ� �� ����� ���� Ȩ�������� �����ϴ� ���񽺸� �޴� ȸ�� �� ��ȸ���� ���մϴ�.<br/>
"ȸ��"�̶� ���� Ȩ�������� ���������� �����Ͽ� ȸ������� �� �ڷμ�, Ȩ�������� ������ ���������� ����������, Ȩ�������� �����ϴ� ���񽺸� ��������� �̿��� �� �ִ� �ڸ� ���մϴ�.<br/>
"��ȸ��"�̶� ���� ȸ���� �������� �ʰ� ȸ�� Ȩ���������� �����ϴ� ���񽺸� �̿��ϴ� �ڸ� ���մϴ�.<br/>
<br/>
�� 3 ��   ����� ȿ�°� ����<br/>
�� ����� ���� Ȩ�������� �ʱ� ���� ȭ�鿡 �̿��ڿ��� ���������� ���� ���������ν� ȿ���� �߻��մϴ�.<br/>
������ ���� ������ ���� ������ �߿� ������ ���� �� ����� ���� � ���� ���� �� ���ù��� �������� �ʴ� �������� �� ����� ������ �� ������, �� ��쿡�� �������� �� ��������, ����Ǵ� ������ ����Ͽ� ���� ����� �Բ� �ʱ� ���� ȭ�鿡 �� �������� 7�������� �������� ���ϱ��� �����մϴ�.<br/>
��2�׿� �ǰ�, ����� ����� ��1�װ� ���� ������� ȿ���� �߻��մϴ�.<br/>
<br/>
�� 4 ��   ��� �� ��Ģ<br/>
�� ����� ��õ��� ���� ������ ���� ���ɿ� �����Ǿ� ���� ��쿡�� �� ������ �����ϴ�.<br/>
<br/>
[�� 2 �� ȸ�� ���� �� ���� �̿�]<br/>
<br/>
�� 1 ��   ���� �̿� ����� ����<br/>
���� Ȩ������ �� ���� �̿� ����� �̿��ڰ� ȸ�� ���Կ� ���� ���� �̿� ��û�� ���Ѻ����� �̿� �³��� �̿����� �� ����� �����Ѵٴ� �ǻ�ǥ�÷� �����˴ϴ�.<br/>
�̿��ڰ� ȸ���� �����Ͽ� ���� Ȩ������ �� ���񽺸� �̿��ϰ��� �ϴ� ���, ȸ���� �������� ��û�ϴ� ���� �Ż������� �����ؾ� �մϴ�.<br/>
�̿����� ���� Ȩ������ �� ���� �̿��û�� ���Ͽ� ������ �³��� ���, ������ ȸ�� ID�� ��Ÿ ������ �ʿ��ϴٰ� �����ϴ� ������ �̿��ڿ��� �����մϴ�.<br/>
������ ���� �� ȣ�� �ش��ϴ� ���� �̿� ��û�� ���Ͽ��� �̸� �³����� �ƴ��մϴ�.<br/>
  ��. �ٸ� ����� ���Ǹ� ����Ͽ� ��û�Ͽ��� ��<br/>
  ��. ������ �Ǹ����� ��û���� �ʾ��� ��<br/>
  ��. ���� �̿� ��� ��û���� ������ ������ �����Ͽ��� ��<br/>
  ��. ��ȸ�� �ȳ�� ���� Ȥ�� ��ǳ����� ������ �������� ��û�Ͽ��� ��<br/>
<br/>
�� 2 ��   ���� �̿� �� ����<br/>
���� Ȩ������ �� ���� �̿��� ������ ������ �Ǵ� ����� Ư���� ������ ���� �� ���߹���, 1�� 24�ð��� ��Ģ���� �մϴ�.<br/>
������ ���� �̿�ð��� ������� �ý��� �� ��������/��ü �� ������ �ʿ��� ���, ȸ������ ���� ������ ��, ������ �� �ֽ��ϴ�.<br/>
��2�׿� ���� ���� �ߴ��� ��쿡�� ������ ȸ���� ȸ���� Ȩ�������� ������ ���ڿ��� �ּҷ� ���� �����ϰų�, ��Ư���ټ� ȸ���� ���Ͽ��� 1���� �̻� �Խ��ǿ� �Խ������ν� ���� ������ ������ �� �ֽ��ϴ�.<br/>
<br/>
[�� 3 �� �ǹ�]<br/>
<br/>
�� 1 ��   ������ �ǹ�<br/>
������ Ư���� ������ ���� �� ȸ���� ��û�� ���� ���� �����Ͽ� ���񽺸� �̿��� �� �ֵ��� �մϴ�.<br/>
������ �� ������� ���� �ٿ� ���� �����, ���������� ���񽺸� ������ �ǹ��� �ֽ��ϴ�.<br/>
������ ȸ�����κ��� ������ ������ ���� ����Ǵ� �ǰ߿� ���ؼ��� ������ ������ ���� ó���ϸ�, ó�� �� ���� �Ⱓ�� �ҿ�� ��� ȸ������ �� ������ ó�� ������ �˷��־�� �մϴ�.<br/>
������ ȸ���� ������ ö���� ���� �����ϸ�, ������ ���񽺸� ��ϰų� �����ϴ� ��� �Ǵ� ��ǰ�Ұ� �� ȸ�� ���� �������� �̿��ϴ� ���� ����ϰ�, �̿��� �ٸ� �������� Ÿ ��� �� ��3�ڿ��� �絵���� �ʽ��ϴ�.<br/>
<br/>
�� 2 ��   ȸ���� �ǹ�<br/>
ID�� ��й�ȣ�� ���� ��� ������ å���� ȸ������ �ֽ��ϴ�.<br/>
ȸ���� ID �� ��й�ȣ�� ��3�ڿ��� �̿��ϰ� �ؼ��� �ȵ˴ϴ�.<br/>
ȸ���� ID �� ��й�ȣ�� �������ϰų� ��3�ڰ� ����ϰ� ������ �����ϴ� ��쿡�� ȸ���� �ݵ�� ������ �� ����� �뺸�ؾ� �մϴ�.<br/>
ȸ���� �� ��� �� ���� ���ɿ��� ������ ������ �ؼ��Ͽ��� �մϴ�.<br/>
�̿��ڴ� ���� ������ �Ͽ����� �ȵ˴ϴ�.<br/>
  ��. ��û �Ǵ� ���� �� ���������� ���<br/>
  ��. ���� Ȩ�������� �Խõ� ������ ����<br/>
  ��. ���� Ȩ�������� ���� ���� �̿��� ����(��ǻ�� ���α׷� ��)�� �۽� �Ǵ� �Խ�<br/>
  ��. ���� Ȩ������ ��Ÿ ��3���� ���۱� �� �������ǿ� ���� ħ��<br/>
  ��. ���� ��Ÿ ��3���� ���� �ջ��Ű�ų� ������ �����ϴ� ����<br/>
  ��. �ܼ� �Ǵ� �������� �޽���, ȭ��, ���� ��Ÿ ������ӿ� ���ϴ� ������ ���� �Ǵ� �Խ��ϴ� ����<br/>
<br/>
[�� 4 �� ���� �̿� ��� ���� �� �̿� ����]<br/>
<br/>
�� 1 ��   ���� �̿� ��� ���� �� �̿� ����<br/>
ȸ���� ���� �̿� ����� �����ϰ��� �ϴ� ������ ȸ�� ������ ���� (��)������������ſ��� ���� �̿� ��� ���� ��û�� ��û�ؾ� �մϴ�.<br/>
������ ���, ȸ���� �̸�, ID, ��й�ȣ�� �Է��Ͽ� (��)������������ſ��� ������ ������ ȸ�� ���� �� ���� �̿� ����� �����˴ϴ�.<br/>
ȸ�� ���� �� ���� �̿� ��� ���� ���δ� ������ ID,��й�ȣ�� �α����� ���� ������ ������ ���̸�, �ѹ� ������ ID�� ���� �̿��ڶ� ����� �� ������ �˷��帳�ϴ�.<br/>
������ ȸ���� ���� ���׿� �ش��ϴ� ������ �Ͽ��� ���, ���� ���� ���� ���� �̿� ����� �����ϰų� �Ǵ� ����� �Ⱓ�� ���Ͽ� ���� �̿��� ������ �� �ֽ��ϴ�.<br/>
  ��. ���� ���� �� ��ǳ ��ӿ� ���ϴ� ���<br/>
  ��. ������ ������ ���õǴ� ���<br/>
  ��. ���� �Ǵ� ��ȸ�� ������ ������ �������� ���� �̿��� ��ȹ �Ǵ� ������ ���<br/>
  ��. Ÿ���� ID �� ��й�ȣ�� ������ ���<br/>
  ��. Ÿ���� ���� �ջ��Ű�ų� �������� �ִ� ���<br/>
  ��. ���� ����ڰ� �ٸ� ID�� ���� ����� �� ���<br/>
  ��. ���񽺿� ���ظ� ���ϴ� �� ������ �̿��� �����ϴ� ���<br/>
  ��. ��Ÿ ���� �����̳� ȸ�簡 ���� �̿����ǿ� ����Ǵ� ���<br/>
<br/>
�� 2 �� ���� �̿� ������ ���� ����<br/>
������ ���� �̿� ������ �ϰ��� �ϴ� ��쿡�� �� ����, �Ͻ� �� �Ⱓ�� ���Ͽ� ���� �Ǵ� ��ȭ ���� ����� �̿��Ͽ� �ش� ȸ�� �Ǵ� �븮�ο��� �����մϴ�. �ٸ�, ������ ����ϰ� �̿��� �����ؾ� �� �ʿ䰡 �ִٰ� �����ϴ� ��쿡�� ������ �������� ���� �̿��� ������ �� �ֽ��ϴ�.<br/>
������ ������ ���Ͽ� ���� �̿� ������ ���� ���� ȸ�� �Ǵ� �� �븮���� ���� �̿� ������ ���Ͽ� ���ǽ�û�� �� �� �ֽ��ϴ�.<br/>
������ ���� �̿����� �Ⱓ �߿� �� �̿����� ������ �ؼҵ� ���� Ȯ�ε� ��쿡 ���Ͽ� �̿����� ��ġ�� ��� �����մϴ�.<br/>
(��Ģ) �� ����� 2016�� 03�� 08�Ϻ��� �����մϴ�.<br/>
		</p>
	</div>
</div>
<div class="pop02" id="pop3">
	<div class="popheader">
		<div class="close"><img src="/images/common/close2.gif" border="0" alt="�ݱ�" /></div>
		<p class="tit">���̽��丮 ����Ʈ��</p>
	</div>
	<div class="popcont">
		<ul>
			<li>
				<p class="tit tit2">�Ұ�</p>
				<ul>
					<li><a href="/sub/sub01/sub0101.html">My story is</a></li>
					<li><a href="/sub/sub01/sub0102.html">���̽��丮 �̿�ȳ�</a></li>
					<li><a href="/sub/sub01/sub0103_list.html">������ �ѷ�����</a></li>
					<li><a href="/sub/sub01/sub0104.html">���̽��丮 �����</a></li>
					<li><a href="/sub/sub01/sub0105_list.html">���̽��丮 ����̾߱�</a></li>
					<li><a href="/sub/sub01/sub0106.html">���Ϳ ����</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">����/Ŀ�´�Ƽ</p>
				<ul>
					 <li><a href="/sub/sub02/sub0201.html">�¶��λ��</a></li>
					<li><a href="/sub/sub02/sub0202_01.html">�¶��� �ǽð�����</a></li>
					<li><a href="/sub/sub02/sub0203_list.html">���̽��丮 ��������</a></li>
					<li><a href="/sub/sub02/sub0204_list.html">���̽��丮 �ɸ�Į��</a></li>
					<li><a href="/sub/sub02/sub0205_list.html">���̽��丮 �̾߱�</a></li>
					<li><a href="/sub/sub02/sub0206_list.html">�����ϴ� ����</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">�Ƶ�/û�ҳ���</p>
				<ul>
					<li><a href="/sub/sub03/sub0301.html">ADHD</a></li>
					<li><a href="/sub/sub03/sub0302.html">�Ƶ�û�ҳ���</a></li>
					<li><a href="/sub/sub03/sub0303.html">�����ൿ</a></li>
					<li><a href="/sub/sub03/sub0304.html">�Ҿ�</a></li>
					<li><a href="/sub/sub03/sub0305.html">����Ʈ�� �ߵ�</a></li>
					<li><a href="/sub/sub03/sub0309.html">���� �ߵ�</a></li>
					<li><a href="/sub/sub03/sub0306.html">�б� ������, ������</a></li>
					<li><a href="/sub/sub03/sub0307.html">�н�����, �н����</a></li>
					<li><a href="/sub/sub03/sub0308.html">ƽ���</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">����/�κλ��</p>
				<ul>
					 <li><a href="/sub/sub04/sub0401.html">�������</a></li>
					<li><a href="/sub/sub04/sub0402.html">�Ҿ�����</a></li>
					<li><a href="/sub/sub04/sub0403.html">���ݹ����ൿ</a></li>
					<li><a href="/sub/sub04/sub0404.html">�ߵ�</a></li>
					<li><a href="/sub/sub04/sub0405.html">���źп�</a></li>
					<li><a href="/sub/sub04/sub0406.html">�κλ��</a></li>
					<li><a href="/sub/sub04/sub0407.html">�������</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">�ɸ�ġ�����α׷�</p>
				<ul>
					<li><a href="/sub/sub05/sub0501.html">���λ��ġ��</a></li>
					<li><a href="/sub/sub05/sub0502.html">�̼��ɸ�ġ��</a></li>
					<li><a href="/sub/sub05/sub0503.html">���̽ɸ�ġ��</a></li>
					<li><a href="/sub/sub05/sub0504.html">���ؽɸ�ġ��</a></li>
					<li><a href="/sub/sub05/sub0505.html">�����ɸ�ġ��</a></li>
					<li><a href="/sub/sub05/sub0506.html">���ǽɸ�ġ��</a></li>
					<li><a href="/sub/sub05/sub0507.html">���ġ��</a></li>
					<li><a href="/sub/sub05/sub0508.html">�н�ġ��-���λ��</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">�ɸ��˻����α׷�</p>
				<ul>
					<li><a href="/sub/sub06/sub0601.html">���սɸ���</a></li>
					<li><a href="/sub/sub06/sub0602.html">����������</a></li>
					<li><a href="/sub/sub06/sub0603.html">������ �ߴް˻�</a></li>
					<li><a href="/sub/sub06/sub0604.html">�н� �� ���� ������</a></li>
					<li><a href="/sub/sub06/sub0605.html">������ ������</a></li>
					<li><a href="/sub/sub06/sub0606.html">�����</a></li>
					<li><a href="/sub/sub06/sub0607.html">One day Solution</a></li>
					<li><a href="/sub/sub06/sub0608.html">�ڰ�����</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">���̽��丮 ������</p>
				<ul>
					<li><a href="/sub/sub07/sub0701.html">�ɸ���� ��������</a></li>
					<li><a href="/sub/sub07/sub0702.html">������ ��������</a></li>
					<li><a href="/sub/sub07/sub0703.html">�ֽ��ߵ� ��������</a></li>
					<li><a href="/sub/sub07/sub0704.html">������ ��ʸ���</a></li>
					<li><a href="/sub/sub07/sub0705.html">�ǽð� �����㿹��</a></li>
					<li><a href="/sub/sub07/sub0706.html">�λ��߰��� ��㿹��</a></li>
				</ul>
			</li>
			<li>
				<p class="tit">���͵ѷ�����</p>
				<ul>
					<li><a href="/sub/sub01/sub0103_view.html">��������</a></li>
					<li><a href="/sub/sub01/sub0103_view2.html">�λ꼾��</a></li>
					<li><a href="/sub/sub01/sub0103_view5.html">��������</a></li>
					<li><a href="/sub/sub01/sub0103_view3.html">��꼾��</a></li>
					<li><a href="/sub/sub01/sub0103_view4.html">â������</a></li>
					<li><a href="/sub/sub01/sub0103_view6.html">�ϻ꼾��</a></li>
					<li><a href="/sub/sub01/sub0103_view7.html">��꼾��</a></li>
					<li><a href="/sub/sub01/sub0103_view8.html">�д缾��</a></li>
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
<!-- ���� ���� ��ũ��Ʈ , ��� �������� ����ǵ��� ��ġ. �� ��ȯ������ ���������� �׻� �ϴܿ� ��ġ�ؾ��� -->  
<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> 
<script type="text/javascript"> 
	if (!wcs_add) var wcs_add={};
	wcs_add["wa"] = "s_396e682114f3";
	if (!_nasa) var _nasa={};
	wcs.inflow("mystoryis.kr");
	wcs_do(_nasa);
</script>
</html>
