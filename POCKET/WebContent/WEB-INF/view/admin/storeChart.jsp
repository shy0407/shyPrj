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
    <!-- Bootstrap Core CSS -->
    <link href="/ElaAdmin-master/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="/ElaAdmin-master/css/helper.css" rel="stylesheet">
    <link href="/ElaAdmin-master/css/style.css" rel="stylesheet">
	<style>
#chartdiv {
  width: 100%;
  height: 500px;
}

table {
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
    border: 1px solid #ddd;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
				
	</style>
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
                        <li> <a   href="/index.do" aria-expanded="false"><i class="fa fa-home" style="font-size:20px"></i><span class="hide-menu">HOME </span></a>
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
                    <div class="col-12">
                        <div class="card">
			                           
                            <div class="card-body">
								<!--chart 1  -->
								<!-- <div id="scategory"></div> -->
								<canvas id="scategory"></canvas>
								<div>
		
								
								
								
								</div>
							</div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                            	<canvas id="month"></canvas>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-12">
                        <div class="card">
                              <div class="hline" style="height:90%"><canvas id="hline"></canvas></div>
                            	<div id="chart_div"></div>       
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
	<script src="/ElaAdmin-master/js/lib/chart-js/Chart.bundle.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<!-- <script src="/ElaAdmin-master/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script> -->

	

<script>
$(document).ready(function(){
	var bar = document.getElementById("scategory");
	var line = document.getElementById("month").getContext('2d');

var scategory=[];
var local=[];
var date=[];

$.ajax({
	url: "/admin/dataForStore.do",
	method: "POST",
	success: function(data) {
		console.log(data);
		$.each(data,function(key,val){
			scategory.push(val.restaurant);
			scategory.push(val.life);
			scategory.push(val.sales);
			scategory.push(val.edu);
			scategory.push(val.entertainment);
			scategory.push(val.medi);
			scategory.push(val.budong);
			scategory.push(val.accom); //가맹점 종류별로
			
			local.push(val.gangnam);
			local.push(val.gemcheon);
			local.push(val.songpa);
			local.push(val.gangseo);
			local.push(val.jungu);
			local.push(val.seongdong);
			local.push(val.nowon);
			local.push(val.dongjak);
			local.push(val.jongno);
			local.push(val.yongsan);
			local.push(val.gangbuk);
			local.push(val.gangdong);
			local.push(val.junrang);
			local.push(val.dongdae);
			local.push(val.dobong);//지역별
			
			date.push(val.jan);
			date.push(val.feb);
			date.push(val.mar);
			date.push(val.api);
			date.push(val.may);
			date.push(val.jun);
			date.push(val.july);
			date.push(val.aug); 
			//date.push(val.month);
			
			
			
		});
		console.log(scategory);
		console.log(local);
		console.log(date);
		
		var scategorydata={
				labels:['음식','생활','소매','교육','오락','의료','부동산','숙박'],
				datasets:[{
							
							backgroundColor: "rgba(179,181,198,0.2)",
							borderColor: "rgba(179,181,198,1)",
							borderWidth:1,
							data:scategory
				
						}]
					}; //hline chart data setting end
				//ctx.height=300;
				myhLineChart  = new Chart(bar, {
								type: 'bar',
								data: scategorydata,
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
										text: '업종별 가맹점'
									}
								}
						});
				
							
				//google chart.....!!!!!!!										
				google.charts.load('current', {'packages':['treemap']});
			    google.charts.setOnLoadCallback(drawChart);
			    function drawChart() {
			      var data = google.visualization.arrayToDataTable([
			        ['ITEM', 'Parent', 'size'],
			        ['local',null,0],
			        ['강남구','local',local[0]],
			        ['금천구','local',local[1]],
			        ['송파구','local',local[2]],
			        ['강서구','local',local[3]],
			        ['중구','local',local[4]],
			        ['성동구','local',local[5]],
			        ['노원구','local',local[6]],
			        ['동작구','local',local[7]],
			        ['종로구','local',local[8]],
			        ['용산구','local',local[9]],
			        ['강북구','local',local[10]],
			        ['강동구','local',local[11]],
			        ['중랑구','local',local[12]],
			        ['동대문구','local',local[13]],
			        ['도봉구','local',local[14]]
			        
			      
			        
			      ]);

			      tree = new google.visualization.TreeMap(document.getElementById('chart_div'));

			      tree.draw(data, {
			    	title:"지역별 가맹점 비율",
			        minColor: '#A4BFFA',
			        midColor: '#FAD9AA',
			        maxColor: '#33ccff',
			        headerHeight: 15,
			        fontColor: 'black',
			        showScale: true
			      });

			    }//이거뭐지
			    
				var chartdata={
    					labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August'],
    					datasets: [{
    						label: '월별',
    						borderColor:"rgba(0, 123, 255, 0.9)",
    						borderWidth: "1",
    						backgroundColor: "rgba(0, 123, 255, 0.5)",
    						//pointHighlightStroke: "rgba(26,179,148,1)",
    						data: date,
    						fill: false,
    					}
    					]
    					
    			};
    		
    			myLineChart  = new Chart(line, {
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
	}
	});

		});
</script>
</body>

</html>