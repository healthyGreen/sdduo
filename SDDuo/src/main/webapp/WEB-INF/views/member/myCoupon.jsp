<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<h3>My Coupons</h3>
<html>
<div class="sub-top">
						<h2>ȸ����������</h2><br>
					</div>
					<div class="sub-cont clear">
						<div class="sub-cont-inbox">
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
<div align="center">
-----------------------------------------------------------------------<br><br>
	<c:if test="${member.m_r_coupon.equals('1')}">
		<h2>�� ȸ������ ��� ���� ��<br>�������� ��� ���� 10% DC �̺�Ʈ ����</h2>
		<br>����� ���� �� �����帮�� �˴ϴ�.
	</c:if>
		
	<c:if test="${member.m_r_coupon.equals('2')}">
		<h2><font color="red">�� ȸ������ ��� ���� ��</font><br><br>�������� ��� ���� 10% DC �̺�Ʈ ����</h2>
		<br>����� ���� �� �����帮�� �˴ϴ�.<br><br>--------------------------------------<br><br>
		<h2><font color="red">�� �¶��� ���� ��� ���� ��</font><br><br>�������� ��� ���� 5% DC �̺�Ʈ ����</h2>
		<br>����� ���� �� �����帮�� �˴ϴ�.
	</c:if>
	<br><br>-----------------------------------------------------------------------
	</div>
	</div>
</html>