<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 



<script type="text/javascript">

function reviewList() {
	if(confirm("ëª©ë¡ì¼ë¡ ê°ìê² ìµëê¹?") == true){
		location.href='noticeList.do';
	}else {
		return;
	}
}

function checkIt() {
    var userinput = eval("document.userinput");
    
    if(!userinput.n_title.value) {
        alert("ì ëª©ì ìë ¥íì¸ì");
        return false;
    }
   
    if(!userinput.n_content.value ) {
        alert("ë´ì©ì ìë ¥íì¸ì");
        return false;
    }
     
}

</script>





		<form:form commandName="noticeModel" action="noticeWrite.do" enctype="multipart/form-data"	method="post">
        <!-- Navigation -->
        

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">ê³µì§ì¬í­ ê´ë¦¬</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
			<table class="write-board01">
				
				<thead>
						<tr class="danger" >
							<th width="100">ê¸ì ëª©</th>
							<td colspan=3>
								<input type="textarea" name="n_title" id="n_title" value="${noticeModel.n_title}"/>
							</td>
						</tr>
					</thead>
				
					<tbody>
						
						<tr><!-- ì¬ì©ì -->
							<th>ì¬ì©ì ID</th>
							
							<%-- <td colspan=3>
								<strong>
									${session_member_name}
								</strong>
							</td> --%>
							
							<td colspan=3>
							<input type="textarea" name="n_name" value="${noticeModel.n_name}">
							<font color="red"><form:errors path="n_name" /></font>
							</td>
						</tr>
							
						<tr><!-- ê¸ë´ì© -->
							<th>ê¸ë´ì©</th>
							<td colspan=3 height=600 style="padding: 0px !important;">
							   <textarea  name="n_content" id="n_content" style=" padding:3px; margin: 1px; width: 100%; height: 98%;"></textarea>
							</td>
						</tr>
							
						<tr><!-- íì¼ -->
							<th>íì¼</th>
							<td colspan=3>
								<input type="file" name="file" value="${noticeModel.n_sav_image}"/>
							</td>	
						</tr>
	
					</tbody>
				</table>
					<!-- ì·¨ì ìì±ìë£ ë²í¼ -->
					<div style="width: 125px; margin: 40px auto; ">
						<button type="submit" onclick="checkIt();" class="btn btn-outline btn-primary" style="margin-right: 10px; ">íì¸</button>
						<button type="button" onclick="reviewList();" class="btn btn-outline btn-default">ì·¨ì</button>
					</div>
            </div>    
            <!-- /.row -->
            </form:form>
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../resources/vendor/raphael/raphael.min.js"></script>
    <script src="../resources/vendor/morrisjs/morris.min.js"></script>
    <script src="../resources/data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../resources/dist/js/sb-admin-2.js"></script>




