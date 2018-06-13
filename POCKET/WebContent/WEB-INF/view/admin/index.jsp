<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
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
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>Ela - Bootstrap Admin Dashboard Template</title>

    <link href="/ElaAdmin-master/css/lib/chartist/chartist.min.css" rel="stylesheet">
	<link href="/ElaAdmin-master/css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="/ElaAdmin-master/css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <!-- Bootstrap Core CSS -->
    <link href="/ElaAdmin-master/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/ElaAdmin-master/css/helper.css" rel="stylesheet">
    <link href="/ElaAdmin-master/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">

    
     	
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
                                <li><a href="compareChart.do">대한민국 평균과비교</a></li>
                                <li><a href="expenseChart.do">내 지출 시각화</a></li>
                                
                            </ul>
                        </li>
                        <li class="nav-label">가맹점</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-shopping-bag"></i><span class="hide-menu">STORES <span class="label label-rouded label-warning pull-right">2</span></span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="/admin/storeGallery.do">가맹점 사진으로 보기</a></li>
                                 <li><a href="/admin/listPage.do">리스트로보기</a></li>
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
                    <h3 class="text-primary">Dashboard</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-md-3">
                        <div class="card bg-primary p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="fas fa-users fa-4x"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white" id="all_users"></h2>
                                    <p class="m-b-0">ALL USERS</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-pink p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="fas fa-female fa-4x"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white" id="female"></h2>
                                    <p class="m-b-0">여자 회원수</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-success p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="fas fa-male fa-4x"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white" id="male"></h2>
                                    <p class="m-b-0">남자 회원수</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-danger p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="fas fa-store fa-4x"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">278</h2>
                                    <p class="m-b-0">전체 가맹점</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-title">
                                <h4>월별 회원 수 변화</h4>
                            </div>
                           <!--  <div class="sales-chart">
                                <div class="ct-bar-chart" style="height:350px"></div>
                            </div> -->
                            
                            <div id="chart-container">
									<canvas id="mycanvas"></canvas>
							</div>
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-title">
                                <h4>Visitor in Device</h4>
                            </div>
                            <div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover ">
										<thead>
											<tr>
												<th>Device</th>
												<th>Visits</th>
												<th>Avg. time</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Unknown</td>
												<td>2,456</td>
												<td>00:02:36</td>
											</tr>
											<tr>
												<td>Apple iPad</td>
												<td>1,006</td>
												<td>00:03:41</td>
											</tr>
											<tr>
												<td>Apple iPhone</td>
												<td>68</td>
												<td>00:04:10</td>
											</tr>
											<tr>
												<td>HTC Desire</td>
												<td>38</td>
												<td>00:01:40</td>
											</tr>
											<tr>
												<td>Samsung</td>
												<td>20</td>
												<td>00:04:54</td>
											</tr>
											<tr>
												<td>Apple iPad</td>
												<td>1,006</td>
												<td>00:03:41</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
                        </div>
                    </div>
				</div>
				<div class="row">
                <div class="col-lg-12">
                        <div class="card">
                            <div class="card-title">
                                <h4>최근 등록 가맹점</h4>
                            </div>
                            <div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover ">
										<thead>
											<tr>
												<th>가맹점</th>
												<th>종류</th>
												<th>주소</th>
											</tr>
										</thead>
										<tbody>
										 <c:forEach items="${sDTO}" var="sList">
										 
											<tr>
												<td>${sList.store_name }</td>
												<td>${sList.category }</td>
												<td>${sList.jibun_addr }</td>
												
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
                        </div>
                    </div>
                <!-- /# row -->

                


                <!-- End PAge Content -->
            </div>
            <!-- End Container fluid  -->
            <!-- footer -->
            <footer class="footer"> © 2018 All rights reserved. Template designed by <a href="https://colorlib.com">Colorlib</a></footer>
            <!-- End footer -->
        </div>
        <!-- End Page wrapper  -->
    </div>
    <!-- End Wrapper -->
    <!-- All Jquery -->

    <script src="/ElaAdmin-master/js/lib/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="/ElaAdmin-master/js/lib/bootstrap/js/popper.min.js"></script>
    <script src="/ElaAdmin-master/js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="/ElaAdmin-master/js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="/ElaAdmin-master/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="/ElaAdmin-master/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>


    <script src="/ElaAdmin-master/js/lib/datamap/d3.min.js"></script>
    <script src="/ElaAdmin-master/js/lib/datamap/topojson.js"></script>
    <script src="/ElaAdmin-master/js/lib/datamap/datamaps.world.min.js"></script>
    <script src="/ElaAdmin-master/js/lib/datamap/datamap-init.js"></script>

    <script src="/ElaAdmin-master/js/lib/weather/jquery.simpleWeather.min.js"></script>
    <script src="/ElaAdmin-master/js/lib/weather/weather-init.js"></script>
    <script src="/ElaAdmin-master/js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="/ElaAdmin-master/js/lib/owl-carousel/owl.carousel-init.js"></script>

	<!--stickey kit -->
	<script src="/ElaAdmin-master/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>
	<script src="/ElaAdmin-master/js/lib/chart-js/Chart.bundle.js"></script>
	
	
    <!-- <script src="/ElaAdmin-master/js/lib/chartist/chartist.min.js"></script>
    <script src="/ElaAdmin-master/js/lib/chartist/chartist-plugin-tooltip.min.js"></script>
    <script src="/ElaAdmin-master/js/lib/chartist/chartist-init.js"></script> -->
    <!--Custom JavaScript -->
    <script src="/ElaAdmin-master/js/custom.min.js"></script>
    
  
    <script>

    $(document).ready(function(){
    	var ctx = document.getElementById("mycanvas").getContext('2d');

    	var con=[];
     	var con1=[];
     	var con2=[];
     	var all_users;
     	var female;
     	var male;
    	$.ajax({
    		url: "/admin/joinCount.do",
    		method: "POST",
    		success:function(data){
    			//console.log(data);
    			
    			
    			$.each(data, function(key,value){
    				con.push(value.count);
    			});	
    			//console.log(con);
    			
    			var chartdata={
    					labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August','September','October','November','December'],
    					datasets: [{
    						label: '전체',
    						borderColor:"rgba(0, 123, 255, 0.9)",
    						borderWidth: "1",
    						backgroundColor: "rgba(0, 123, 255, 0.5)",
    						//pointHighlightStroke: "rgba(26,179,148,1)",
    						data: con,
    						fill: false,
    					},{
    						label: '남성',
    						borderColor:"#ffb64d",
    						borderWidth: "1",
    						backgroundColor: "#ffb64d",
    						//pointHighlightStroke: "rgba(26,179,148,1)",
    						data: con1,
    						fill: false,
    	
    					},{
    						label: '여성',
    						borderColor:"#fc6180",
    						borderWidth: "1",
    						backgroundColor: "#fc6180",
    						//pointHighlightStroke: "rgba(26,179,148,1)",
    						data: con2,
    						fill: false,
    					}
    					]
    					
    			};
    		
    			myLineChart  = new Chart(ctx, {
					type: 'line',
					data: chartdata,
					options: {
						responsive: true,
						title: {
							display: true,
							text: 'Min and Max Settings'
						},
						scales: {
							yAxes: [{
								ticks: {
									// the data minimum used for determining the ticks is Math.min(dataMin, suggestedMin)
									suggestedMin: 10,
									// the data maximum used for determining the ticks is Math.max(dataMax, suggestedMax)
									suggestedMax: 50
								}
							}]
						}
					}	
				});
    			
    		},
    		  		
    		error:function(data){
    			console.log(data);
    		}
 		
    	}); //ajax end
 		
   
    	$.ajax({
    		
    		url:"/admin/genderCountByMonth.do",
    		method:"POST",
    		success:function(data){
    			console.log(data);
    			
    			$.each(data,function(key,value){
    				if(value.gender=="M"){
    					con1.push(value.count);
    				}else{
    					con2.push(value.count);
    				}
    				
    			});
    			console.log(con1);
    			
    		}
    		
    	});
    	
    	
		$.ajax({
    		
    		url:"/admin/userAnalysis.do",
    		method:"POST",
    		success:function(data){
    			console.log(data);
    			
    			$.each(data,function(key,value){
    				$("#all_users").html(value.ALL_USER);
    				$("#female").html(value.FEMALE);
    				$("#male").html(value.MALE);
    				console.log(value.ALL_USER);
    			});
    			
    			
    		}
    		
    	});
    	
    	
    	
	}); //document ready function end
  
    </script>

</body>

</html>