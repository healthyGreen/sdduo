<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>���̽��丮</title>
	<meta http-equiv="Content-Type" content="text/html;charset=euc-kr" />
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
  /*** �Ѹ���� ***/
  jQuery(function($){
    $("div.gallery_rolling").gallery_rolling();
  });
  </script>




</head>


 <body>

	<!-- <div id="quick">
		<div class="btn_area">
			<ul class="icon_zone">
				<li q="1"><img src="../../images/common/quick_tit.jpg" border="0" alt="���̽��丮" /></li>
				<li q="1"><img src="../../images/common/quick01.png" border="0" alt="īī���忹����" /></li>
				<li q="2"><img src="../../images/common/quick02.png" border="0" alt="�ǽð���ȭ����" /></li>
				<li q="3"><img src="../../images/common/quick03.png" border="0" alt="�ǽð��¶��ο���" /></li>
				<li q="4"><img src="../../images/common/quick04.png" border="0" alt="���ô±�" /></li>
			</ul>
			<p style="text-align:right;"><img src="../../images/common/quick05.png" border="0" alt="02-345-8765" /></p>
			<div class="s-center">
				<p>�ֺ�����ã��</p>
				<input type="text" class="tbox">
				<input type="button" class="sbtn">
			</div>
		</div>END .btn_area
		<div class="show_box">
			<div class="btn_close"><img src="../../images/common/quick_close.gif" border="0" alt="�ݱ�" /></div>
		END .quick_box

			<div id="quick_1" class="quick_box">
				<div style="position:relative;">
					<section class="contents">ī�� ���

					<div class="tit"><img src="../../images/common/tit01.jpg" alt="īī���� ���"></div>
					<div class="contents">
						<div class="con">
							<select>
								<option>���͸� �������ּ���</option>
								<option>��������</option>
								<option>�д缾��</option>
								<option>��⼾��</option>
								<option>�λ꼾��</option>
							</select>
							<div class="qr"><img src="../../images/common/qr.png" alt="ť���ڵ�"></div>
							<div class="qrid">ID &nbsp:&nbsp ���̽��丮</div>
							<div class="prplus"><a href=""><img src="../../images/common/kabtn.gif" alt="ģ���߰��ϱ�"></a></div>
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

				<section class="contents">sns�����
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
											<td class="formtit">�̸�</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<input type="text" style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f3_0' name='fname[3][]'>
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
														<input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">
													</td>
													<td align="center" width="6"></td>
													<td width="57"><input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;"></td>
													<td align="center" width="6"></td>
													<td width="57"><input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;"></td>
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
												<select style="width:207px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f4_0' name='fname[4][]'>
													<option value="">��㼾�͸� �������ּ���.</option>
													<option>��������</option>
													<option>��������</option>
													<option>��������</option>
													<option>��������</option>
													<option>��������</option>
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
												<select style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f1_0' name='fname[1][]'>
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
											<td valign="top"  class="formtit" style="">���ɴ�</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<select style="width:207px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f4_0' name='fname[4][]'>
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
											<td valign="top" class="formtit">���ǳ���</td>
											<td align="center" width="3"></td>
											<td>
												<textarea style="width:205px; height:80px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f5_0' name='fname[5][]'></textarea>
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

											<td colspan="3 " style="font-family:���� ���;font-size:13px; color:#8b8b8b;padding:10px 0; letter-spacing: -1.5px;"><input type="checkbox" id='133_f6_0' name='fname[6][]' /> �������� ��޹�ħ�� ���� <a href="#" style="color:#505050; font-family: ���� ���; text-decoration:underline; " id="layer_open3">����������޹�ħ</a></td>
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
				<section class="contents">�¶��ο��� 

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
											<td class="formtit" width="58px">��¥</td>
											<td align="center" width="3"></td>
											<td>
												<table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
												  <tr>
													<td width="65">
														<select style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
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
														<select style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
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
														<select style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
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
											<td class="formtit">�ð�</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<select style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f1_0' name='fname[1][]'>
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
											<td class="formtit">�̸�</td>
											<td align="center" width="3"></td>
											<td valign="top">
												<input type="text" style="width:205px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f3_0' name='fname[3][]'>
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
														<input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">
													</td>
													<td align="center" width="6"></td>
													<td width="57"><input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;"></td>
													<td align="center" width="6"></td>
													<td width="57"><input type="text" style="width:65px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;"></td>
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
												<select style="width:207px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f4_0' name='fname[4][]'>
													<option value="">��㼾�͸� �������ּ���.</option>
													<option>��������</option>
													<option>��������</option>
													<option>��������</option>
													<option>��������</option>
													<option>��������</option>
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
												<textarea style="width:205px; height:80px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f5_0' name='fname[5][]'></textarea>
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

											<td colspan="3 " style="font-family:���� ���;font-size:13px; color:#8b8b8b;padding:10px 0; letter-spacing: -1.5px;"><input type="checkbox" id='133_f6_0' name='fname[6][]' /> �������� ��޹�ħ�� ���� <a href="#" style="color:#505050; font-family: ���� ���; text-decoration:underline; " id="layer_open3">����������޹�ħ</a></td>
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
				<section class="contents">���ô±�
					<div class="tit"><img src="../../images/common/tit04.jpg" alt="" /></div>
					<div class="con">
						<select style="width:260px; height:33px; border:2px solid #d1d1d1; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f4_0' name='fname[4][]'>
							<option value="">��㼾�͸� �������ּ���.</option>
							<option>��������</option>
							<option>��������</option>
							<option>��������</option>
							<option>��������</option>
							<option>��������</option>
						</select>
						<table >
							<tr>
								<td width="75px">��������</td>
								<td width="100px">02-1245-8959</td>
								<td  width="63px"><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>��������</td>
								<td>02-1245-8959</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>��������</td>
								<td>02-1245-8959</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>��������</td>
								<td>02-1245-8959</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>��������</td>
								<td>02-1245-8959</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr>
								<td>��������</td>
								<td>02-1245-8959</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>
							<tr class="last">
								<td>��������</td>
								<td>02-1245-8959</td>
								<td><p class="spot">��ġ�ȳ�</p></td>
								<td><a href=""><img src="../../images/common/quick04icon.gif" ></a></td>
							</tr>

						</table>
						<div class="pageing2">
							<a href="#none" class="prev"><img src="../../images/common/prev.png" alt="���� ������"></a>
							<a href="#none" class="current"><strong>1</strong></a>
							<a href="#">2</a>
							<a href="#">3</a>
							<a href="#none" class="next"><img src="../../images/common/next.png" alt="���� ��������"></a>
						</div>

				</section>
			</div>
		</div>END .quick_box



	</div>END .show_box

 �ǽð� ��� �������� �˾�

    <div class="layer3" style="display:none;">
	<div class="bg3"></div>
	<div class="layer_area3" id="layer3" style="margin-top: -375px; margin-left: -390px;">
		<div style="width:780px; height:87px; float:left; cursor:pointer;" id="layer_close3"><img src="../../images/common/popup_tit01.png"></div>
		<div style="width:780px; height:663px; float:left; background:#ffffff;">
			<textarea style="width:720px; height:573px;float:left; margin-top:30px; margin-left:28px; border:0;" readonly="">
				����
			</textarea>
		</div>
	</div>
</div>

 �ǽð� ��� �������� �˾�


 ����ī���� �������� �˾�

	<div class="layer4" style="display: none;">
	<div class="bg4"></div>
	<div class="layer_area4" id="layer4" style="margin-top: -375px; margin-left: -390px;">
		<div style="width:780px; height:87px; float:left; cursor:pointer;" id="layer_close4"><img src="../../images/common/popup_tit01.png"></div>
		<div style="width:780px; height:663px; float:left; background:#ffffff;">
			<textarea style="width:720px; height:573px;float:left; margin-top:30px; margin-left:28px; border:0;" readonly="">
				����
			</textarea>
		</div>
	</div>
</div>

 ����ī���� �������� �˾�
</div>END #quick -->







<!-- START #full_menu_pop -->

<div id="full_menu">

</div><!-- END #full_menu_pop -->

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
							<li><a href=""><img src="../../images/common/site01.gif" alt="ī��"></a></li>
							<li><a href=""><img src="../../images/common/site02.gif" alt="��α�"></a></li>
							<li><a href=""><img src="../../images/common/site03.gif" alt="���̽���"></a></li>
							<li><a href=""><img src="../../images/common/site04.gif" alt="īī����"></a></li>
						</ul>
						<h1><a href="../../index.html"><img src="../../images/common/logo.gif" alt="�ΰ�"></a></h1>
						<ul class="right-area">
							<li><a href="">����Ʈ��</a></li>
							<li class="last"><a href="">�ֺ�����ã��</a></li>
						</ul>
					</div>
					<div class="header-bottom">
									gnb ����
					    <div id="gnbarea">

						   <ul class="gnb clear">
							  <li class="li01"><a href="../sub01/sub0101.html"><img src="../../images/common/gnb01.gif">�Ұ�</a>
								 <div class="subWrap sub01">
									<ul>
									    <li><a href="../sub01/sub0101.html">My story is</a></li>
									    <li><a href="../sub01/sub0102.html">���̽��丮 �̿�ȳ�</a></li>
									    <li><a href="../sub01/sub0103_list.html">������ �ѷ�����</a></li>
									    <li><a href="../sub01/sub0104.html">���̽��丮 �����</a></li>
									    <li><a href="../sub01/sub0105_list.html">���̽��丮 ����̾߱�</a></li>
									    <li><a href="../sub01/sub0106.html">���� � ����</a></li>
									</ul>
								 </div>
							  </li>
							  <li class="li02"><a href=" sub0201_list.html">����/Ŀ�´�Ƽ</a>
								 <div class="subWrap sub02">
									<ul>
									    <li><a href=" sub0201_list.html">�¶��λ��</a></li>
									    <li><a href=" sub0202_01.html">�¶��� �ǽð� ����</a></li>
									    <li><a href=" sub0203_list.html">���̽��丮 ��������</a></li>
									    <li><a href=" sub0204_list.html">TODAY �ɸ��÷�</a></li>
									    <li><a href=" sub0205_list.html">å���� ������ �ɸ���å</a></li>
									    <li><a href=" sub0206_list.html">�����ϴ� ����</a></li>
									</ul>
								 </div>
							  </li>
							  <li class="li03"><a href="../sub03/sub0301.html">���̽ɸ����</a>
								 <div class="subWrap sub03">
									<ul>
									    <li><a href="../sub03/sub0301.html">ADHD</a></li>
									    <li><a href="../sub03/sub0302.html">�Ƶ�û�ҳ���</a></li>
									    <li><a href="../sub03/sub0303.html">�����ൿ</a></li>
									    <li><a href="../sub03/sub0304.html">�Ҿ�</a></li>
									    <li><a href="../sub03/sub0305.html">����Ʈ �� ���� �ߵ�</a></li>
									    <li><a href="../sub03/sub0306.html">�б� ������, ������</a></li>
										<li><a href="../sub03/sub0307.html">�б޺���, �н����</a></li>
										<li><a href="../sub03/sub0308.html">ƽ���</a></li>
									</ul>
								 </div>
							  </li>
							  <li class="li04"><a href="../sub04/sub0401.html">���νɸ����</a>
								 <div class="subWrap sub04">
									<ul>
									    <li><a href="../sub04/sub0401.html">�������</a></li>
									    <li><a href="../sub04/sub0402.html">�Ҿ�����</a></li>
									    <li><a href="../sub04/sub0403.html">���湮���ൿ</a></li>
									    <li><a href="../sub04/sub0404.html">�ߵ�</a></li>
									    <li><a href="../sub04/sub0405.html">���źп�</a></li>
									    <li><a href="../sub04/sub0406.html">�κλ��</a></li>
									    <li><a href="../sub04/sub0407.html">�������</a></li>
									</ul>
								 </div>
							  </li>
							  <li class="li05"><a href="../sub05/sub0501.html" class="last">�ɸ�ġ�����α׷�</a>
								 <div class="subWrap sub05">
									<ul>
									    <li><a href="../sub05/sub0501.html">���λ��ġ��</a></li>
									    <li><a href="../sub05/sub0502.html">�̼��ɸ�ġ��</a></li>
									    <li><a href="../sub05/sub0503.html">���̽ɸ�ġ��</a></li>
									    <li><a href="../sub05/sub0504.html">���ؽɸ�ġ��</a></li>
									    <li><a href="../sub05/sub0505.html">�����ɸ�ġ��</a></li>
									    <li><a href="../sub05/sub0506.html">���ǽɸ�ġ��</a></li>
									    <li><a href="../sub05/sub0507.html">���ġ��</a></li>
									    <li><a href="../sub05/sub0508.html">�н�ġ��-���λ��</a></li>
									</ul>
								 </div>
							  </li>
							  <li class="li06"><a href="../sub06/sub0601.html" class="last">�ɸ��˻����α׷�</a>
								 <div class="subWrap sub06">
									<ul>
										<li><a href="../sub06/sub0601.html">���սɸ���</a></li>
									    <li><a href="../sub06/sub0602.html">����������</a></li>
									    <li><a href="../sub06/sub0603.html">������ �ߴް˻�</a></li>
									    <li><a href="../sub06/sub0604.html">�н� �� ���� ������</a></li>
									    <li><a href="../sub06/sub0605.html">������ ������</a></li>
									    <li><a href="../sub06/sub0606.html">�����</a></li>
									</ul>
								 </div>
							  </li>
							  <li class="li07"><a href="../sub07/sub0701.html" class="last">���������α׷�</a>
								 <div class="subWrap sub07">
									<ul>
									    <li><a href="../sub07/sub0701.html">���̽��丮 ������</a></li>
									    <li><a href="../sub07/sub0702.html">��������������</a></li>
									    <li><a href="../sub07/sub0703_01.html">�ǽð� �����㿹��</a></li>
									    <li><a href="../sub07/sub0704.html">�������ʸ���</a></li>
									    <li><a href="../sub07/sub0705.html">�ɸ� ���� ����</a></li>
									</ul>
								 </div>
							  </li>
						   </ul>
					    </div>

					//gnb ��
					</div>
				</div>
			</div> -->
			<div class="sub-content">
				<!-- <div class="bg02area">
					<p class="tit">����/Ŀ�´�Ƽ</p>
				</div> -->
				<div class="sub-content-inbox">
					 <ul class="sub-menu2">
						<li class="act"><a href="sub0201_list.html">�¶��λ��</a></li>
						<li><a href="sub0202_01.html">�¶��� �ǽð�����</a></li>
						<li><a href="sub0203_list.html">���̽��丮 ��������</a></li>
						<li><a href=" sub0204_list.html">���̽��丮 �ɸ� �÷�</a></li>
						<li><a href="sub0205_list.html">å���� ������ �ɸ��̾߱�</a></li>
						<li class="last"><a href="sub0206_list.html">�����ϴ� ����</a></li>
					</ul> 
					<h3>�¶��� ���</h3>
					<p class="sub02_txt">
						���̽��丮�� �����ֽ� ������ �̾߱�� ������ ��ȣ ������ ���� ö���� ��� ���� �Ǹ� ������ �޸� ���� ����� ���� �ʽ��ϴ�.<br />
						<span>�亯�� ���� ���뿡 ���� �з��Ǿ� �ش� �о� ���������Կ� ���� ������ �̷�����ϴ�. <br />
						�亯 ������ �� ���ͺ� ������ �����Ե��� ���ǿ� ���� �޶��� �� ������ ������ �ֽñ� �ٶ��ϴ�.</span><br />
					</p>
					<p class="reserv-btn">�ǽð����� �ٷΰ���</p>
					
					<script type="text/javascript">
function regOnlineInquery(consult){
	if(document.consult.c_title.value.trim() == ""){
		alert("������ �Է����ּ���.");
		consult.c_title.focus();
		return false;
	}

	if(document.consult.c_pass.value.trim() == ""){
		alert("��й�ȣ�� �Է����ּ���.");
		consult.c_pass.focus();
		return false;
	}
	if(document.consult.c_pass.value.length() < 4){
		alert("��й�ȣ�� 4�� �̻����� �Է����ּ���");
		consult.c_pass.focus();
		return false;
	}
	if(document.consult.c_content.value.trim() == ""){
		alert("���ǳ����� �Է����ּ���.");
		consult.c_content.focus();
		return false;
	}
	/* if(form.chk_lock_yn.checked ==  true) {
		form.lock_yn.value="Y";
	}else{
		form.lock_yn.value="N";
	} */
/*  	if(confirm("����Ͻðڽ��ϱ�?")) {
		return;
	}  */
}
</script>
	<c:choose>
				<c:when test="${state.equals('modify')}">
						<form:form commandName="consulting" name="consult" onsubmit="return regOnlineInquery();" action="consultingModifyPro.do">
						<table class="write-board01">
						<caption>��㹮�� �� ����</caption>
						<tbody>
							<tr>
								<th>�̾߱� ����</th>
								<td colspan="3">
								 <input type="hidden" name="c_ref" value="${consultingmodel.c_ref }"/>
								<input type="hidden" name="c_number" value="${consultingmodel.c_number }">

								<input type="text" class="writetxt01" name="c_title" value="${consultingModmodel.c_title }">
								
								</td>
							</tr>
						<%-- <c:if test="${session_member_id != 1 }">
							<tr>
								<th>��м���</th>
								<td>
									<input type="text" class="writetxt03" name="c_pass">
									��й�ȣ4�ڸ� �Է�
								</td>
							</tr>
						 </c:if>  --%>
							<tr>

							
								<th>���ǳ���</th>
								<td colspan="3"><textarea class="writetxt04" name="c_content"></textarea></td>
							</tr>
						</tbody>
					</table>
					
					<div class="btn-area">
						<input type="submit" value="Ȯ��" class="submit">
						<input type="button" value="���" class="cancel">
					</div>
					</form:form>
					</c:when>
					
					<c:otherwise>
						<form:form commandName="consulting" name="consult" onsubmit="return regOnlineInquery();" action="consultingPro.do">
						<table class="write-board01">
						<caption>��㹮�� �۾���</caption>
						<tbody>
							<tr>
								<th>�̾߱� ����</th>
								<td colspan="3">
								 <input type="hidden" name="c_ref" value="${consultingmodel.c_ref }"/>
								<input type="hidden" name="c_number" value="${consultingmodel.c_number }">
								<c:if test="${state.equals('reply')}">
									<input type="text" class="writetxt01" name="c_title" value="[�亯]${consultingmodel.c_title }">
								</c:if>
								<c:if test="${state.equals('noting')}">
									<input type="text" class="writetxt01" name="c_title"">
								</c:if>
								</td>
							</tr>
						<c:if test="${session_member_id == 1 }">
							<tr>
								<th>��м���</th>
								<td>
									<input type="text" class="writetxt03" name="c_pass">
									��й�ȣ4�ڸ� �Է�
								</td>
							</tr>
						 </c:if> 
							<tr>

							
								<th>���ǳ���</th>
								<td colspan="3"><textarea class="writetxt04" name="c_content"></textarea></td>
							</tr>
						</tbody>
					</table>
					
					<div class="btn-area">
						<input type="submit" value="Ȯ��" class="submit">
						<input type="button" value="���" class="cancel">
					</div>
					</form:form>
					</c:otherwise>
		</c:choose>
				</div>
			</div>
			<div class="footer">
				<div class="footer-top">
					<div class="footer-top-inbox">
						<ul>
							<li>ȸ��Ұ�</li>
							<li>����Ʈ�̿���</li>
							<li>��������ó����ħ</li>
							<li>����������</li>
						</ul>
					</div>
				</div>
				<div class="footer-bottom">
					<div class="footer-bottom-inbox">
						<h2><img src="../../images/common/b_logo.gif"></h2>
						<p>
							�����񽺼��� 080-3243-2312<br>
							(��)���̽��丮 ����Ư���� ������ ������α� 52�� 17 ���ﵿ �̿���Ÿ�� 10�� ����ڵ�Ϲ�ȣ:505-88-00158 Ȩ������ ����å����:�ȿ���<br>
							<br/>
							Copyright �� MYSTORY All Rights Reserved
						</p>
					</div>
				</div>
			</div>
		</div>

 </body>
</html>
