<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<style>
.fileDrop {
	width: 100%;
	height: 320px;
	border: 1px dotted gray;
}
#uploadedList{margin: 0 auto;}

</style>


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>Ela - Bootstrap Admin Dashboard Template</title>
    <!-- Bootstrap Core CSS -->
    <link href="/ElaAdmin-master/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/ElaAdmin-master/css/helper.css" rel="stylesheet">
    <link href="/ElaAdmin-master/css/style.css" rel="stylesheet">
    
</head>

<body class="fix-header fix-sidebar">
    <!-- Preloader - style you can find in spinners.css -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
			<circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" /> </svg>
    </div>
    <!-- Main wrapper  -->
    <div id="main-wrapper">
        <!-- header header  -->
        <div class="header">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- Logo -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.html">
                       <!-- Logo icon -->
                        <b><img src="/ElaAdmin-master/images/logo.png" class="dark-logo" /></b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span><img src="/ElaAdmin-master/images/logo (1).png" class="dark-logo" /></span>
                    </a>
                </div>
                <!-- End Logo -->
                <div class="navbar-collapse">
                    <!-- toggle and nav items -->
                    <ul class="navbar-nav mr-auto mt-md-0">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted  " href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                        <li class="nav-item m-l-10"> <a class="nav-link sidebartoggler hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                        <!-- Messages -->
                        
                        <!-- End Messages -->
                    </ul>
                    <!-- User profile and search -->
                    <ul class="navbar-nav my-lg-0">

                        <!-- Search -->
                        <li class="nav-item hidden-sm-down search-box"> <a class="nav-link hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-search"></i></a>
                            <form class="app-search">
                                <input type="text" class="form-control" placeholder="Search here"> <a class="srh-btn"><i class="ti-close"></i></a> </form>
                        </li>

                        <!-- Profile -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="images/users/5.jpg" alt="user" class="profile-pic" /></a>
                            <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                                <ul class="dropdown-user">
                                    <li><a href="#"><i class="ti-user"></i> Profile</a></li>
                                    <li><a href="#"><i class="ti-wallet"></i> Balance</a></li>
                                    <li><a href="#"><i class="ti-email"></i> Inbox</a></li>
                                    <li><a href="#"><i class="ti-settings"></i> Setting</a></li>
                                    <li><a href="#"><i class="fa fa-power-off"></i> Logout</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
        <!-- End header header -->
        <!-- Left Sidebar  -->
     	  <div class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-devider"></li>
                        <li class="nav-label">Home</li>
                        <li> <a   href="/idex.do" aria-expanded="false"><i class="fa fa-home" style="font-size:20px"></i><span class="hide-menu">HOME </span></a>
                            <ul aria-expanded="false" class="collapse">
                               
                            </ul>
                        </li>
                        <li class="nav-label">Apps</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-krw" style="font-size:20px"></i><span class="hide-menu">Email</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="jqgridTest.do">가계부</a></li>
                                <li><a href="email-read.html">Read</a></li>
                                <li><a href="email-inbox.html">Inbox</a></li>
                            </ul>
                        </li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-bar-chart"></i><span class="hide-menu">Charts</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="chart-flot.html">Flot</a></li>
                                <li><a href="chart-morris.html">Morris</a></li>
                                <li><a href="chart-chartjs.html">ChartJs</a></li>
                                <li><a href="chart-chartist.html">Chartist </a></li>
                                <li><a href="chart-amchart.html">AmChart</a></li>
                                <li><a href="chart-echart.html">EChart</a></li>
                                <li><a href="chart-sparkline.html">Sparkline</a></li>
                                <li><a href="chart-peity.html">Peity</a></li>
                            </ul>
                        </li>
                        <li class="nav-label">가맹점</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-shopping-bag"></i><span class="hide-menu">STORES <span class="label label-rouded label-warning pull-right">2</span></span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="ui-alert.html">SEE ALL</a></li>
                                <li><a href="ui-button.html">NEAR ME</a></li>             
                            </ul>
                        </li>
						
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </div>
        <!-- End Left Sidebar  -->
        <!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">가맹점 등록</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">가맹점 등록</li>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-12">
                        <div class="card">
			                           
                            <div class="card-body">
								<!--chart 1  -->
								<div class="card card-outline-primary">
                            <div class="card-header">
                                <h4 class="m-b-0 text-white">영수증 등록</h4>
                            </div>
                            <div class="card-body">
                               
                                <form role="form" id="regForm" method="post" action="insertExpense.do">
                                
                                    <div class="form-body">
                                      
                                        <hr>
                                        <div class="row">
                                            <div class="col-md-12 ">
                                                <div class="form-group">
                                                    <label>결제일</label>
                                                    <input type="date" name="expense_date" class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                          <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>결제 상세 </label>
                                                    <input type="text" name="expense_detail" class="form-control">
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>결제 카테고리</label>
                                                    <select class="form-control custom-select" name="expense_category">
                                                        <option>--카테고리를 선택해주세요--</option>
                                                        <option>식비</option>
                                                        <option>주거/통신</option>
                                                        <option>생활용품</option>
                                                        <option>의복/미용</option>
                                                        <option>건강/문화</option>
                                                        <option>교육/육아</option>
                                                        <option>교통/차량</option>
                                                        <option>경조사/회비</option>
                                                        <option>세금/이자</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <!-- <label>City</label>
                                                    <input type="text" class="form-control"> -->
                                                    <label for="exampleInputEmail1">File DROP Here</label>
													<div class="fileDrop">
													<div class="initMsg">파일을 올려주세요.</div>
													<div id="uploadedList"></div>
													
													</div>
                                                </div>
                                            </div>
                                            <!--/span-->
                                       
                                            <!--/span-->
                                        </div>
                                        <!--/row-->
                                        
                                    </div>
                                    <div class="form-actions">
                                    	<button type="submit" class="btn btn-success"><i class="fa fa-save"></i> 저장</button>
                                        <!-- <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Save</button> -->
                                        <button type="button" class="btn btn-inverse">Cancel</button>
                                    </div>
                                </form>
                            </div>
								
							</div>
                        </div>
                    </div>
               
                </div>
                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->
            <!-- footer -->
            <footer class="footer"> © 2018 All rights reserved. Template designed by <a href="https://colorlib.com"><img src="/image/insta.png"><img src="/image/twit.png"><img src="/image/facebook.png"></a></footer>
            <!-- End footer -->
        </div>
        <!-- End Page wrapper  -->
    </div>
    <!-- End Wrapper -->
    <!-- All Jquery -->
    <script src="/jquery-3.3.1.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="/ElaAdmin-master/js/lib/bootstrap/js/popper.min.js"></script>
    <script src="/ElaAdmin-master/js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="/ElaAdmin-master/js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="/ElaAdmin-master/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="/ElaAdmin-master/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
    <!--Custom JavaScript -->
    <script src="/ElaAdmin-master/js/custom.min.js"></script>
	<!--stickey kit -->
	<!-- <script src="/ElaAdmin-master/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script> -->
	<script src="/ElaAdmin-master/js/lib/chart-js/Chart.bundle.js"></script>
	<%--Handlebars JS--%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.0.11/handlebars.min.js"></script>
<%--파일업로드 JS--%>
<script type="text/javascript" src="/uploadjs/upload.js"></script>

<%--첨부파일 하나의 영역--%>
<%--이미지--%>


<script>
    $(document).ready(function () {
       $(".initMsg").show();

        // 전체 페이지 파일 끌어 놓기 기본 이벤트 방지 : 지정된 영역외에 파일 드래그 드랍시 페이지 이동방지
        $(".content-wrapper").on("dragenter dragover drop", function (event) {
            event.preventDefault();
        });
        // 파일 끌어 놓기 기본 이벤트 방지
        $(".fileDrop").on("dragenter dragover", function (event) {
            event.preventDefault();
        });
        // 파일 드랍 이벤트 : 파일 전송 처리
        $(".fileDrop").on("drop", function (event) {
            event.preventDefault();
            $(".initMsg").hide();
            var files = event.originalEvent.dataTransfer.files;
            var file = files[0];
            console.log(files);
            var formData = new FormData();
            formData.append("file", file);
            $.ajax({
                url: "uploadAjax.do",
                data: formData,
                dataType: "text",
                processData: false,
                contentType: false,
                type: "POST",
                success: function (data) {
                	console.log(data);
                    // 첨부 파일의 정보
                    var fileInfo = getFileInfo(data);
                   	var original= fileInfo.getLink;
                 	console.log(original);
                 	console.log(fileInfo.imgsrc);
                 	console.log(fileInfo.fullName);
                    // 하이퍼링크
                    var html = "<div><a href="+original+">"
					  +"<img src='displayFile.do?fileName="+data+"'/>"
					  +"</a><small data-src="+fileInfo.fullName+">X</small></div>";
                    			
                    			
                    			
                    // hidden 태그 추가
                    html += "<input type='hidden' class='file' name='files' value='"+fileInfo.fullName+"'>";
                    // div에 추가
                    $("#uploadedList").append(html);
                   
                }
            });
        });
        // 글 저장 버튼 클릭 이벤트 : 파일명 DB 저장 처리
        $("#regForm").submit(function (event) {
            event.preventDefault();
            var that = $(this);
           
            
            that.get(0).submit();
        });
        // 파일 삭제 버튼 클릭 이벤트 : 파일삭제, 파일명 DB 삭제 처리
        $("#uploadedList").on("click", "small", function(event){
        	
            var that = $(this);
            $.ajax({
                url: "deleteFile.do",
                type: "post",
                data: {fileName:$(this).attr("data-src")},
                dataType: "text",
                success: function (result) {
                    if (result == "deleted") {
                        alert("삭제되었습니다.");
                        that.parent("div").remove();
                        $(".initMsg").show();
                    }
                }
            });
        });
    });
</script>
<script>


</script>
</body>

</html>