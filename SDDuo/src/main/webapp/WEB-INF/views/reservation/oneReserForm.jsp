<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<script> -->


  function checkForm(){
     if(!document.reserAgree.agree.checked){
        alert("�������� ��޹�ħ�� �����ϼž� �˴ϴ�.");
     }else{   
        reserAgree.submit();
     }
     }
  </script>
</head>
<body>
<div class="sub-content">
				<div class="bg02area">
					<p class="tit">����/Ŀ�´�Ƽ</p>
				</div>
				<div class="sub-content-inbox">
					<ul class="sub-menu2">
						<li><a href="sub0201_list.html">�¶��λ��</a></li>
						<li class="act act2"><a href="sub0202_01.html">�¶��� �ǽð�����</a></li>
						<li><a href="sub0203_list.html">���̽��丮 ��������</a></li>
						<li><a href=" sub0204_list.html">���̽��丮 �ɸ� �÷�</a></li>
						<li><a href="sub0205_list.html">å���� ������ �ɸ��̾߱�</a></li>
						<li class="last"><a href="sub0206_list.html">�����ϴ� ����</a></li>
					</ul>
					<h3>�¶��� �ǽð�����</h3>
					<!-- <p class="sub02_txt">
						���̽��丮 �ɸ���㼾�ʹ� ���������θ� ��ǰ� ������ ����� ����Ͻô� ��� �ݵ�� ���� �� �������� �ؼ��ؾ� �մϴ�.<br />
						<span>�¶��� ������ �Ͻø� ��� ������ ��ȭ�� �帮�� ��㹮�� ���� ���� Ȯ�� �� �� ��Ȯ�� ������ Ȯ�� �˴ϴ�.    </span><br />
					</p>
					<div class="step"><img src="../../images/sub/step1.gif"></div>
					<div class="calarea">
						<div class="calleft">
							<p class="tit">���Ͻô� ��� ���೯¥�� ������ �ּ���</p>
							<div class="example1" style="margin:0 auto"></div>
							<script>
								$('.example1').supercal({
									transition: 'carousel-vertical'
								});
							</script>
						</div>
						<div class="calright">
							<p class="tit">���������� �Է��� �ּ���</p>
							<p class="txt">���� �޷¿��� ���� ���ϴ� ��¥�� ���� �� �������ּ���</p> -->
							<form name="reserAgree" action="OneReserveForm.do" method="post">
							<div>
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
									  <tr>
										<td>
											<table width="100%" border="0" cellspacing="0" cellpadding="0">

											  <tr>
												<td colspan="3" height="20"></td>
											  </tr>
											  <tr>
												<td valign="top"  class="formtit" style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">��&nbsp&nbsp&nbsp&nbsp��</td>
												<td align="center" width="4" ></td>
												<td valign="top">
													<select name="pr_center" style="width:220px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f4_0' name='fname[4][]'>
														<option value="���＾��">���＾��</option>
														<option value="�뱸����">�뱸����</option>
														<option value="�λ꼾��">�λ꼾��</option>
													</select>
												</td>
											  </tr>
											  <tr>
												<td colspan="3" height="15">&nbsp;</td>
											  </tr>
											  <tr>
												<td class="formtit"  style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">��&nbsp&nbsp&nbsp&nbsp�� </td>
												<td align="center" width="4" ></td>
												<td>
													<table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
													  <tr>
														<td width="65">
															<select name="pr_hour" style="width:100px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb;  font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
																<option value="09">09��</option>
																<option value="10">10��</option>
																<option value="11">11��</option>
																<option value="12">12��</option>
																<option value="14">14��</option>
																<option value="15">15��</option>
																<option value="16">16��</option>
																<option value="17">17��</option>
																<option value="18">18��</option>
															</select>
														</td>
														<td align="center" width="18" style="vertical-align: middle;">&nbsp&nbsp:&nbsp&nbsp</td>
														<td width="65">
															<select name="pr_minute" style="width:100px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
																<option value="00">00��</option>
																<option value="30">30��</option>
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
												<td class="formtit"  style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">��&nbsp;&nbsp;&nbsp;&nbsp;��</td>
												<td align="center" width="4" ></td>
												<td valign="top">
													<input type="text" value="" name="pr_name" style="width:220px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f3_0' name='fname[3][]'>
												</td>
											  </tr>
											  <tr>
												<td colspan="3" height="15"></td>
											  </tr>
											  <tr>
												<td class="formtit"  style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">��&nbsp;��&nbsp;ó</td>
												<td align="center" width="4" ></td>
												<td>
													<table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
													  <tr>
														<td width="63">
															<input type="text" value="" name="pr_phone1" style="width:65px;  height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;">
														</td>
														<td align="center" width="13" style="vertical-align: middle;">-</td>
														<td width="63"><input type="text" value="" name="pr_phone2" style="width:65px;  height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;"></td>
														<td align="center" width="13" style="vertical-align: middle;">-</td>
														<td width="63"><input type="text" value="" name="pr_phone3" style="width:65px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;"></td>
														<td>&nbsp;</td>
													  </tr>
													</table>
												</td>
											  </tr>



											  <tr>
												<td colspan="3" height="15"></td>
											  </tr>
											  <tr>
												<td valign="top" class="formtit"  style="color: #4f4f4f; font-size: 16px; line-height: 120%; padding-top: 10px;">����û<br>����&nbsp;</td>
												<td align="center" width="4" ></td>
												<td>
													<textarea value="" name="pr_reason" style="width:220px; height:110px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:���� ���; font-size:13; color:#676767; box-sizing: border-box;" id='133_f5_0' name='fname[5][]'></textarea>
												</td>
											  </tr>
											</table>

										</td>
									  </tr>
									  <tr>
										<td>
											<table width="100%" border="0" cellspacing="0" cellpadding="0">
											  <tr>

												<td colspan="3 " style="font-family:���� ���; font-size:14px; color:#ab9159;padding:10px 0; width: 290px; letter-spacing: -2.2px;">*&nbsp;����ó�� ������� ������ ������ Ȯ�� ���� �ʽ��ϴ�. </td>
											  </tr>

											</table>
										</td>
									  </tr>
									  <tr>
										<td>
											<table width="100%" border="0" cellspacing="0" cellpadding="0">
											  <tr>

												<td colspan="3 " style="font-family:���� ���;font-size:14px; color:#8b8b8b;padding:10px 0; letter-spacing: -1.5px;"><input type="checkbox" name="agree" value="yes" style="margin-top: -2px;"/> �������� ��޹�ħ�� ���� <a href="#" style="color:#505050; font-family: ���� ���; text-decoration:underline; " id="layer_open3">����������޹�ħ</a></td>
											  </tr>

											</table>
										</td>
									  </tr>
									</table>
									</div>
					<p><span>2016�� 02�� 25��</span>�� �����Ͻðڽ��ϱ�?</p>
					<div>
						<input type="button" onclick="return checkForm()" value="Ȯ��"   />
						<input type="button" value="���" class="cancel" />
					</div>
			</form>
</body>
</html>