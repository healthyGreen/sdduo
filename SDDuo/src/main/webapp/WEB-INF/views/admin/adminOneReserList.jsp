<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>


    <title>상담해듀오 admin</title>

    <!-- Bootstrap Core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            
           

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href=""><i class="fa fa-dashboard fa-fw"></i>&nbsp;예약 관리<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
                                <li>
                                    <a href="OneReserList.do">강남지점</a>
                                </li>
                                <li>
                                    <a href="OneReserList.do">대구지점</a>
                                </li>
								<li>
                                    <a href="OneReserList.do">부산지점</a>
                                </li>
	
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>&nbsp;온라인상담 관리</a>
                            
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href=""><i class="fa fa-table fa-fw"></i>&nbsp;공지사항 관리</a>
                        </li>
                        <li>
                            <a href=""><i class="fa fa-edit fa-fw"></i>&nbsp;회원 관리</a>
                        </li>
                       
                       
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">강남지점</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#home" data-toggle="tab">개인예약</a>
                                </li>
                                <li><a href="#profile" data-toggle="tab">그룹예약</a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="home">
                                    <div class="panel-body">
										<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
											<thead>
												<tr>
													<th>번호</th>
													<th>상담내용</th>
													<th>예약자</th>
													<th>예약일</th>
												</tr>
											</thead>
											<tbody>
												<tr class="odd gradeX">
													<td><a href="">Trident</a></td>
													<td><a href="">Internet Explorer 4.0</a></td>
													<td><a href="">Win 95+</a></td>
													<td class="center"><a href="">4</a></td>
												</tr>
												<tr class="even gradeC">
													<td><a href="">Trident</a></td>
													<td><a href="">Internet Explorer 5.0</a></td>
													<td><a href="">Win 95+</a></td>
													<td class="center"><a href="">5</a></td>
												</tr>
												<tr class="odd gradeA">
													<td><a href="">Trident</a></td>
													<td><a href="">Internet Explorer 5.5</a></td>
													<td><a href="">Win 95+</a></td>
													<td class="center"><a href="">5.5</a></td>
												</tr>
												
											</tbody>
										</table>
										<!-- /.table-responsive -->
										
									</div>
                        <!-- /.panel-body -->
                                </div>
                                <div class="tab-pane fade" id="profile">
                                    <div class="panel-body">
										<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
											<thead>
												<tr>
													<th>번호</th>
													<th>상담내용</th>
													<th>예약자</th>
													<th>예약일</th>
													<th>예약인원</th>
												</tr>
											</thead>
											<tbody>
												<tr class="odd gradeX">
													<td><a href="">Trident</a></td>
													<td><a href="">Internet Explorer 4.0</a></td>
													<td><a href="">Win 95+</a></td>
													<td class="center"><a href="">4</a></td>
													<td class="center"><a href="">X</a></td>
												</tr>
												<tr class="even gradeC">
													<td><a href="">Trident</a></td>
													<td><a href="">Internet Explorer 5.0</a></td>
													<td><a href="">Win 95+</a></td>
													<td class="center"><a href="">5</a></td>
													<td class="center"><a href="">C</a></td>
												</tr>
												<tr class="odd gradeA">
													<td><a href="">Trident</a></td>
													<td><a href="">Internet Explorer 5.5</a></td>
													<td><a href="">Win 95+</a></td>
													<td class="center"><a href="">5.5</a></td>
													<td class="center"><a href="">A</a></td>
												</tr>
												
											</tbody>
										</table>
										<!-- /.table-responsive -->
										
									</div>
                                </div>
                               
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../vendor/raphael/raphael.min.js"></script>
    <script src="../vendor/morrisjs/morris.min.js"></script>
    <script src="../data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
</html>