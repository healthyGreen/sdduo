<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
</head>
<body>
<div class="wrapper">
<div class="sub-content">
				<div class="sub-content-inbox">
					<div class="sub-top">
						<h2>�α���</h2>
					</div>
					<div class="login-title">
						<p>ȸ������ ���̵�� ��й�ȣ�� �Է��Ͻ� �� �α��� ��ư�� Ŭ���ϼ���! <br>���̵����忡 üũ�� �Ͻø� ������ �α��� �Ͻ� ��� ���Ӱ� ���̵� �Է��Ͻ� �ʿ䰡 �����ϴ�.</p>
					</div>
					<div class="login-inbox2">
						<form id="form" name="form" method="post" action="/SDDuo/member/login.do">					
						<input type="hidden" id="returnUrl" name="returnUrl" value="/tmweb/main.do">
							<div class="login-box login-box2">
								<div class="input-id-box input-id-box2">						
									<table>
										<tbody><tr>
											<td><input type="text" placeholder="���̵�" name="m_id" id="userId" value="" onkeydown="javascript:if(event.keyCode == 13) goLoginAction();"></td>
										</tr>
										<tr>
											<td><input type="password" placeholder="��й�ȣ�� �Է����ּ���." name="m_pass" id="password" value="" onkeydown="javascript:if(event.keyCode == 13) goLoginAction();"></td>
										</tr>
									</tbody></table>
								</div>							
								<p><a href="#"><input type="submit" class="login-btn" value="�α���" name="" ></a></p>
								<div class="save-check save-check2">
									<input type="checkbox" class="checkbox " title="" value="Y" name="idSaveCheck" id="idSaveCheck">���̵�����
								</div>
							</div>
						</form>
						<div class="id-search">
							<p>���̵�/��й�ȣ�� �����̳���?</p>
							<ul>
								<li><input type="button" class="login-search-btn login-search-btn " title="" value="���̵� ã��" name="" onclick="location.href='http://localhost:8080/SDDuo/member/findIdForm.do'"></li>
								<li><input type="button" class="login-search-btn login-search-btn2" title="" value="��й�ȣ ã��" name="" onclick="location.href='http://localhost:8080/SDDuo/member/findPwForm.do'"></li>
							</ul>
						</div>
						<div class="login-btn-box">
							<p><span>���� ����ص�� ȸ�������� ���� �����̳���? </span><br> ����ص�� �����Ͻø� �� ���� ������ �������� �� �ֽ��ϴ�.</p>
							<ul>
								<li><a href="#"><input type="button" value="�ű� ȸ������" class="new-join-btn" name="" onclick="location.href='http://localhost:8080/SDDuo/member/agree.do'"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
</div>
</body>
</html>