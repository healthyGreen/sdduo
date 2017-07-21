<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>상담해듀오</title>
	<meta http-equiv="Content-Type" content="text/html;charset=euc-kr" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<link rel="stylesheet" href="/SDDuo/resources/css/layout.css" />
	<link rel="stylesheet" href="/SDDuo/resources/css/default.css" />

	<!--JQUERY-->

	<script  type="text/javascript" src="/SDDuo/resources/js/jquery-1.9.1.js"></script>
	<script  type="text/javascript" src="/SDDuo/resources/js/common.js"></script>
	<script  type="text/javascript" src="/SDDuo/resources/js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script src="/SDDuo/resources/js/jquery.rolling.js" type="text/javascript"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.js"></script>
	<script type="text/javascript" src="/SDDuo/resources/js/tab.js"></script>
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
   
   <tiles:insertAttribute name="header"/><!-- // header -->
   <div class="container">
	    <div class="flexslider">
		   <ul class="slides">
			  <li class="visual02"></li>
			  <li class="visual03"></li>
			  <li class="visual04"></li>
		   </ul>
	    </div>
	</div>
   <!-- container --> 
   <div class="sub-content" style="min-height:500px;">
      <tiles:insertAttribute name="body"/><!-- // container -->
   </div>
   <!-- footer --> 
   
      <tiles:insertAttribute name="footer"/><!-- // footer -->
   
</body>
</html>