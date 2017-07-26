<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript">
	function deletOk() {
		if(confirm("�����Ͻðڽ��ϱ�?")){
			window.location.href='adminConsultingDeletePro.do?c_number=${consultingmodel.c_number}&c_ref=${consultingmodel.c_ref}';
		}else{
			alert("��ҵǾ����ϴ�.");
		}
	}
</script>
<html>
<body>
<div id="page-wrapper">
            <div class="row">
             <div class="col-lg-12">
             <h1 class="">�¶��� ���</h1>	
             </div>
			
						
					</div>
					<table width="100%" class="view-board01">
						<colgroup>
							<col width="" />
						</colgroup>
						<thead>
						<tr>
							<th scope="col">
								<div class="tit">${consultingmodel.c_title }</div>
							</th>
							<th></th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>
								<div class="board-infor">
									<strong>�ۼ���</strong>
									<span>${ consultingmodel.m_id}</span>
									<span class="line"><img src="/SDDuo/resources/images/sub/line.jpg" class="vertical-m"  alt="" /></span>
									<strong>�ۼ���</strong>
									<span><fmt:formatDate value="${consultingmodel.c_date}" pattern="yyyy.MM.dd"/></span>
							
								</div>
							</td>
						</tr>
						<tr><th>��� ����</th></tr>
						<tr>
							<td class="dmc_content content">
								
${consultingmodel.c_content }
							</td>
						</tr>
						
					</tbody>
				</table>
					<div class="viewbtn">
				<%-- 	<c:if test="${session_admin!=1}"> --%>
							<c:url var="replyURL" value="adminConsultingReply.do">
								<c:param name="c_ref" value="${consultingmodel.c_ref }"/>
								<c:param name="c_number" value="${consultingmodel.c_number }"/>
								<%-- <c:param name="c_re_status" value="${consultingmodel.c_re_status }"/> --%>
							</c:url>
						 <c:if test="${consultingmodel.c_re_status=='1' }"> 
							<a href="${replyURL}" class="storywrite1">�亯�ޱ�</a> 	
						</c:if>				

 			<%-- 	</c:if> --%>
						<%-- <p ><input type="button" value="���" onclick="location.href='<%=request.getContextPath() %>/admin/adminConsultingList.do'" class="btn01 list"></p> --%>
						 <c:if test="${consultingmodel.m_id=='admin' }">
						<div class="area">
							<p class="btn01"><input type="button" value="����" onclick="location.href='<%=request.getContextPath() %>/admin/adminConsultingModify.do?c_number=${consultingmodel.c_number }'"></p>
						<%-- 	<p class="btn02"><input type="button" value="����" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingDeletePro.do?c_number=${consultingmodel.c_number }'"></p> --%>
						</div>
						 </c:if>
							<p class="btn02"><input type="button" value="����" onclick="javascript:deletOk();"></p>
					</div>
				</div>
				</body>
</html>