<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicon.png">
<title>Ela - Bootstrap Admin Dashboard Template</title>
<!-- Bootstrap Core CSS -->
<link href="ElaAdmin-master/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="ElaAdmin-master/css/helper.css" rel="stylesheet">
<link href="ElaAdmin-master/css/style.css" rel="stylesheet">


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:** -->
<!--[if lt IE 9]>
    <script src="https:**oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https:**oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

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
                        <b><img src="/image/lo.png" class="dark-logo" /></b>
                        <!--End Logo icon -->
                        <!-- Logo text -->
                        <span><img src="/image/pocket.png" class="dark-logo" /></span>
                    </a>
                </div>
                <!-- End Logo -->
                <div class="navbar-collapse">
                    <!-- toggle and nav items -->
                    <ul class="navbar-nav mr-auto mt-md-0">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up text-muted  " href="javascript:void(0)"><i class="mdi mdi-menu"></i></a> </li>
                        <li class="nav-item m-l-10"> <a class="nav-link sidebartoggler hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                     
                    </ul>
                    <!-- User profile and search -->
                    <ul class="navbar-nav my-lg-0">

                        <!-- Search -->
                        <li class="nav-item hidden-sm-down search-box"> <a class="nav-link hidden-sm-down text-muted  " href="javascript:void(0)"><i class="ti-search"></i></a>
                            <form class="app-search">
                                <input type="text" class="form-control" placeholder="Search here"> <a class="srh-btn"><i class="ti-close"></i></a> </form>
                        </li>
                        
                        <!-- Messages -->
                        
                        <!-- End Messages -->
                        <!-- Profile -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-muted  " href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${sessionScope.userDTO.email}</a>
                            <div class="dropdown-menu dropdown-menu-right animated zoomIn">
                                <ul class="dropdown-user">
                                    <li><a href="detailChange.do"><i class="ti-user"></i> Profile</a></li>                            
                                  
                                    <li><a href="logout.do"><i class="fa fa-power-off"></i> Logout</a></li>
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
                        <li> <a href="/admin/index.do" aria-expanded="false"><i class="fa fa-home" style="font-size:20px"></i><span class="hide-menu">HOME </span></a>
                            <ul aria-expanded="false" class="collapse">
                               
                            </ul>
                        </li>
                        <li class="nav-label">회원정보</li>
                        <li> <a class="has-arrow  " href="/admin/userList.do " aria-expanded="false"><i class="fas fa-users"></i><span class="hide-menu">회원리스트</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/admin/userList.do">회원리스트</a></li>
                               
                               
                            </ul>
                        </li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-bar-chart"></i><span class="hide-menu">시각화</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/admin/userChart.do">회원정보시각화</a></li>
                                <li><a href="/admin/expenseChart.do">회원 지출 시각화</a></li>
                                <li><a href="/admin/storeChart.do">가맹점 통계 시각화</a></li>
                                
                            </ul>
                        </li>
                        <li class="nav-label">가맹점</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-shopping-bag"></i><span class="hide-menu">STORES </span></a>
                            <ul aria-expanded="false" class="collapse">
                            	<li><a href="/admin/storeRegister.do">가맹점 등록</a></li>
                                <li><a href="/admin/storeGallery.do">가맹점  갤러리</a></li>
                                 <li><a href="/admin/listPage.do">리스트로보기</a></li>
                            </ul>
                        </li>
                        <li class="nav-label">공지사항</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fas fa-bars"></i><span class="hide-menu">공지사항 </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/admin/notice.do">공지사항 등록</a></li>
                                 <li><a href="/admin/noticeList.do">리스트로보기</a></li>
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
					<h3 class="text-primary">가맹점 시각화</h3>
				</div>
				<div class="col-md-7 align-self-center">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
						<li class="breadcrumb-item active">가맹점 시각화</li>
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
                            
                            	<div id="chart-container">
									<canvas id="mycanvas"></canvas>
								</div>
								<div>
									<input type="button" value="30대" id="addThirty">
									<input type="button" value="40대" id="addForty">
									<input type="button" value="50대" id="addFifty">
									<input type="button" value="60대" id="addSixty">
								</div>
                            
                            
                            
                            </div>
                        </div>
                    </div>
                </div>
			
			<!-- End PAge Content -->
		</div>
		<!-- End Container fluid  -->
		<!-- footer -->
		<footer class="footer">
			© 2018 All rights reserved. Template designed by <a
				href="https://colorlib.com">Colorlib</a>
		</footer>
		<!-- End footer -->
	</div>
	<!-- End Page wrapper  -->
	</div>
	<!-- End Wrapper -->
	<!-- All Jquery -->
	<script src="/ElaAdmin-master/js/lib/jquery/jquery.min.js"></script>
	<<!-- script src="/jquery-3.3.1.min.js"></script> -->
	<!-- Bootstrap tether Core JavaScript -->
	<script src="/ElaAdmin-master/js/lib/bootstrap/js/popper.min.js"></script>
	<script src="/ElaAdmin-master/js/lib/bootstrap/js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="/ElaAdmin-master/js/jquery.slimscroll.js"></script>
	<!--Menu sidebar -->
	<script src="/ElaAdmin-master/js/sidebarmenu.js"></script>
	<!--stickey kit -->
	<script src="/ElaAdmin-master/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
	 <script src="/ElaAdmin-master/js/lib/chart-js/Chart.bundle.js"></script>
    <!-- <script src="/ElaAdmin-master/js/lib/chart-js/chartjs-init.js"></script> -->
	<!--Custom JavaScript -->
	<script src="/ElaAdmin-master/js/custom.min.js"></script>

	
<script>

$(document).ready(function(){
	var ctx = document.getElementById("mycanvas");
	$.ajax({
		url: "getData.do",
		method: "POST",
		success: function(data) {
			//console.log(data);
			
			var label=[];
			var con=[];
			$.each(data, function(key, value){

			   		if(value!=null){
			   			label.push(key);
			   			con.push(value);
			   		}
			   		
			   });

			 var chartdata={
					labels:label,
					datasets:[
						{
							
					          label: "대한민국 평균",
					          fill: true,
					          backgroundColor: "rgba(179,181,198,0.2)",
					          borderColor: "rgba(179,181,198,1)",
					          pointBorderColor: "#fff",
					          pointBackgroundColor: "rgba(179,181,198,1)",
					          data: con
						}
					]
			};

			ctx.height = 150;			 
			myRadarChart  = new Chart(ctx, {
					type: 'radar',
					data: chartdata
				});
			 
		},
		error: function(data) {
			console.log(data);
		}
		
	
		
		
	}); // ajax
	
	$("#addThirty").click(function (){
		$.ajax({
			url:"getAgeThirty.do",
			method:"POST",
			success:function(data){
				var label1=[];
				var con1=[];
				$.each(data, function(key,value){
					if(value!=null){
						label1.push(key);
						con1.push(value);
					}
				});
			
				var chartdata1={
						label:"30대",
						fill: true,
						backgroundColor: "rgba(11,181,198,0.2)",
				        borderColor: "rgba(179,181,198,1)",
				        pointBorderColor: "#fff",
				        pointBackgroundColor: "rgba(179,181,198,1)",
				        data:con1,
						
				};
				myRadarChart.data.datasets.push(chartdata1);
				window.myRadarChart.update();
				$('#addThirty').attr('disabled', true);

			}
		
	 
});

});
	/*##############40대 추가#####################  */
	$("#addForty").click(function (){
		$.ajax({
			url:"getAgeForty.do",
			method:"POST",
			success:function(data){
				var label1=[];
				var con1=[];
				$.each(data, function(key,value){
					if(value!=null){
						label1.push(key);
						con1.push(value);
					}
				});
			
				var chartdata1={
						label:"40대",
						fill: true,
						backgroundColor: "rgba(11,181,198,0.2)",
				        borderColor: "rgba(179,181,198,1)",
				        pointBorderColor: "#fff",
				        pointBackgroundColor: "rgba(179,181,198,1)",
				        data:con1,
						
				};
				myRadarChart.data.datasets.push(chartdata1);
				window.myRadarChart.update();
				$('#addForty').attr('disabled', true);

			}
		
	 
});

});
	/*##############50대 추가#####################  */
	$("#addFifty").click(function (){
		$.ajax({
			url:"getAgeFiFty.do",
			method:"POST",
			success:function(data){
				var label1=[];
				var con1=[];
				$.each(data, function(key,value){
					if(value!=null){
						label1.push(key);
						con1.push(value);
					}
				});
			
				var chartdata1={
						label:"50대",
						fill: true,
						backgroundColor: "rgba(11,181,198,0.2)",
				        borderColor: "rgba(179,181,198,1)",
				        pointBorderColor: "#fff",
				        pointBackgroundColor: "rgba(179,181,198,1)",
				        data:con1,
						
				};
				myRadarChart.data.datasets.push(chartdata1);
				window.myRadarChart.update();
				$('#addFifty').attr('disabled', true);

			}
		
	 
});

});
	
	/*##############60대 추가#####################  */
	$("#addSixty").click(function (){
		$.ajax({
			url:"getAgeSixty.do",
			method:"POST",
			success:function(data){
				var label1=[];
				var con1=[];
				$.each(data, function(key,value){
					if(value!=null){
						label1.push(key);
						con1.push(value);
					}
				});
			
				var chartdata1={
						label:"60대",
						fill: true,
						backgroundColor: "rgba(11,181,198,0.2)",
				        borderColor: "rgba(179,181,198,1)",
				        pointBorderColor: "#fff",
				        pointBackgroundColor: "rgba(179,181,198,1)",
				        data:con1,
						
				};
				myRadarChart.data.datasets.push(chartdata1);
				window.myRadarChart.update();
				$('#addSixty').attr('disabled', true);

			}
		
	 
});

});
});



</script>
	


</body>

</html>