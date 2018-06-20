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
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>Ela - Bootstrap Admin Dashboard Template</title>
    <!-- Bootstrap Core CSS -->
    <link href="/ElaAdmin-master/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/ElaAdmin-master/css/helper.css" rel="stylesheet">
    <link href="/ElaAdmin-master/css/style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    
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
                        <li> <a href="/index.do" aria-expanded="false"><i class="fa fa-home" style="font-size:20px"></i><span class="hide-menu">HOME </span></a>
                            <ul aria-expanded="false" class="collapse">
                               
                            </ul>
                        </li>
                        <li class="nav-label">POCKET</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-krw" style="font-size:20px"></i><span class="hide-menu">가계부</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="Calender.do">가계부</a></li>
                                <li><a href="pocketRegister.do">영수증올리기</a></li>
                                <li><a href="pocketGallery.do">영수증 확인</a></li>
                               
                            </ul>
                        </li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-bar-chart"></i><span class="hide-menu">시각화</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="compareChart.do">대한민국 평균과비교</a></li>
                                <li><a href="expenseChart.do">내 지출 시각화</a></li>
                                
                            </ul>
                        </li>
                        <li class="nav-label">공지사항</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fas fa-bars"></i><span class="hide-menu">공지사항 </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="noticeList.do">공지사항</a></li>
                                 
                            </ul>
                        </li>
                        
                         <li class="nav-label">가맹점</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-shopping-bag"></i><span class="hide-menu">가맹점 </span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="storeGallery.do">가맹점</a></li>
                                 
                            </ul>
                        </li>
						
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </div>
        <!-- End Left Sidebar  -->
        <!-- End Left Sidebar  -->
        <!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">회원정보 시각화</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">회원정보 시각화</li>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->
            <!-- Container fluid  -->
            <div class="container-fluid">
                <!-- Start Page Content -->
                <div class="row">
                    <div class="col-6">
                        <div class="card">
			                           
                            <div class="card-body">
								<!--chart 1  -->
								<div><canvas id="weekChart"></canvas></div>
								
							</div>
                        </div>
                    </div>
                       <div class="col-6">
                        <div class="card">
			                           
                            <div class="card-body">
								<!--chart 1  -->
								<div><canvas id="monthChart"></canvas></div>
								
							</div>
                        </div>
                    </div>
               
                </div>
                <div class="row">
                    <div class="col-6">
                        <div class="card">
			                           
                            <div class="card-body">
								<!--chart 1  -->
								<div><canvas id="categoryChart"></canvas></div>
								
							</div>
                        </div>
                    </div>
                       <div class="col-6">
                        <div class="card">
			                           
                            <div class="card-body">
								<!--chart 1  -->
								<div><canvas id="hline"></canvas></div>
								
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
    <!--Custom JavaScript -->
    <script src="/ElaAdmin-master/js/custom.min.js"></script>
	<!--stickey kit -->
	<!-- <script src="/ElaAdmin-master/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script> -->
	<script src="/ElaAdmin-master/js/lib/chart-js/Chart.bundle.js"></script>
	<script>
		$(document).ready(function(){
			var weekChart = document.getElementById("weekChart");
			var monthChart = document.getElementById("monthChart");
			var categoryChart = document.getElementById("categoryChart");
			var hline = document.getElementById("hline");
			
			var week=[];
			var month=[];
			var category=[];
			
			
			$.ajax({
				url:"/expenseUserData.do",
				method:"GET",
				success:function(data){
					console.log(data);
					$.each(data,function(key,val){
						week.push(val.first);
						week.push(val.second);
						week.push(val.third);
						week.push(val.forth);
						week.push(val.fifth);
						
						month.push(val.jan);
						month.push(val.feb);
						month.push(val.mar);
						month.push(val.api);
						month.push(val.may);
						month.push(val.jun);
						
						category.push(val.foods);
						category.push(val.alcohol_cigarette);
						category.push(val.clothes);
						category.push(val.utility_bill);
						category.push(val.housewares);
						category.push(val.health);
						category.push(val.transportation);
						category.push(val.telephone);
						category.push(val.entertainment);
						category.push(val.education);
						category.push(val.travel);
						
						
						
						
						
					});
				console.log(week);
				
				console.log(category);
				
					var weekdata={
							labels:["첫째","둘째","셋째","넷째","다섯째"],
							datasets:[{
										
										backgroundColor: "rgba(179,181,198,0.2)",
										borderColor: "rgba(179,181,198,1)",
										borderWidth:1,
										data:week
							
									}]
								};
					myhLineChart  = new Chart(weekChart, {
						type: 'bar',
						data: weekdata,
						options: {
							// Elements options apply to all of the options unless overridden in a dataset
							// In this case, we are setting the border of each horizontal bar to be 2px wide
							elements: {
								rectangle: {
									borderWidth: 2,
								}
							},
							responsive: true,
							legend: {
								//position: 'right',
								display:false,
							},
							title: {
								display: true,
								text: '주별 지출'
							}
						}
				});
					
					var linedata={
	    					labels: ['January', 'February', 'March', 'April', 'May', 'June'],
	    					datasets: [{
	    						label: '전체',
	    						borderColor:"rgba(0, 123, 255, 0.9)",
	    						borderWidth: "1",
	    						backgroundColor: "rgba(0, 123, 255, 0.5)",
	    						//pointHighlightStroke: "rgba(26,179,148,1)",
	    						data: month,
	    						fill: false,
	    					}
	    					]
	    					
	    			};
	    		
	    			myLineChart  = new Chart(monthChart, {
						type: 'line',
						data: linedata,
						options: {
							responsive: true,
							title: {
								display: true,
								text: '월 별 지출'
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
					
	    		
	    			
	    			var categorydata={
	    					labels: ['식비','술/담배','의복','세금','가정용품','건강','교통','통신','오락','교육','여행'],
	    					datasets: [{
	    						label: '분류별',
	    						backgroundColor: [
    								"#D98880",
    								"#C39BD3",
    								"#A9CCE3",
    								"#A3E4D7",
    								"#FAD7A0",
    								"#E74C3C",
    								"#F9E79F",
    								"#D7DBDD",
    								"#2ECC71",
    								"#F9EBEA",
    								"#C39BD3",
    								"#EBF5FB"		
    								
    							],
	    						
	    						data: category,
	    						fill: true,
	    					}
	    					]
	    					
	    			};
	    			
	    			 polar = new Chart(categoryChart,{
	    				 type:'polarArea',
	    				 data:categorydata,
	    				 options: {
	    						responsive: true,
	    						legend: {
	    							position: 'right',
	    						},
	    						title: {
	    							display: true,
	    							text: '분류별 지출'
	    						},
	    						scale: {
	    							ticks: {
	    								beginAtZero: true
	    							},
	    							reverse: false
	    						},
	    						animation: {
	    							animateRotate: false,
	    							animateScale: true
	    						}
	    					}
	    				 
	    				 
	    			 });
	    			 
	    			
	    			hline.height=300;
	    			 
	 				myLineChart  = new Chart(hline, {
						type: 'horizontalBar',
						data: categorydata,
						options: {
							// Elements options apply to all of the options unless overridden in a dataset
							// In this case, we are setting the border of each horizontal bar to be 2px wide
							elements: {
								rectangle: {
									borderWidth: 2,
								}
							},
							responsive: true,
							legend: {
								position: 'right',
								display:true,
							},
							title: {
								display: true,
								text: '분류별 지출'
							}
						}
				});
					
					
					
				}
			});
			
		});
	</script>

</body>

</html>