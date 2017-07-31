<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<div class="sub-top">
						<h2>������</h2>
					</div>
					<div class="sub-cont clear">
						<div class="">
							<div class="leftbox">
								<div class="tit"><span>MY</span> PAGE</div>
									<dl class="mlist">
										<dt><a href="<%=request.getContextPath() %>/member/myInfoView.do">���� ���� ����/Ż��</a></dt>
										<dt><a href="<%=request.getContextPath() %>/Reserve/myOneReserList.do">���� ��Ȳ</a></dt>
										<dt><a href="<%=request.getContextPath() %>/consulting/myConsultingList.do">�¶��� ��� ����</a></dt>
										<dt><a href="<%=request.getContextPath() %>/self/selfTestList.do?t_category=1">���� �ڰ� ����</a></dt>
										<dt><a>������(${member.m_r_coupon}��)</a></dt>
									</dl>
								</div>
							</div>
							<div class="rightbox">
								<div align="center">
										<table class="list-board01">
											<tr>
												<th>�����̸�</th>
												<th>���޻�ǰ</th>
												<th>���ڵ�</th>
											</tr>
									<c:if test="${member.m_r_coupon.equals('1')}">
											<tr>
												<td><b>ȸ������ ��� ����</b></td>
												<td>�������� ��� ���� 10% DC �̺�Ʈ ����</td>
												<th><img src="/SDDuo/resources/images/sub/bacode1.jpg" width="200" height="100"></a></th>
											</tr>  
										
									</c:if>
										
									<c:if test="${member.m_r_coupon.equals('2')}">
										
											<tr>
												<td><b>ȸ������ ��� ����</b></td>
												<td>�������� ��� ���� 10% DC �̺�Ʈ ����</td>
												<th><img src="/SDDuo/resources/images/sub/bacode1.jpg" width="200" height="100"></a></th>
											</tr>
											<tr>
												<td><b>�¶��� ���� ��� ����</b></td>
												<td>�������� ��� ���� 5% DC �̺�Ʈ ����</td>
												<th><img src="/SDDuo/resources/images/sub/bacode2.jpg" width="200" height="100"></a></th>
											</tr>
										
									</c:if>
										</table>
						
								</div>
							</div>
	</div>
</html>