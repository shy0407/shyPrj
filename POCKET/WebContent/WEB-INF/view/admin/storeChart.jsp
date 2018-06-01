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
	<style>
		.chart1{display: inline-block;
				width:70%;}
		.chart2{display: inline-block;
				width:20%;
				position: absolute;
				top:78px;
				right:50px;}
		.genderPie{display: inline-block;
				width:20%;
				position: absolute;
				top:78px;
				right:50px;}
		.hline{display: inline-block;
			   width:48%;
			   }
		#chart_div{display:inline-block;
					width:48%;
					height:90%;}
				
  				
				
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
								<div class="chart1"><canvas id="weekChart"></canvas></div>
								<div class="chart2"><canvas id="weekPieChart"></canvas></div>
							</div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                            	<div style="width:70%"><canvas id="line"></canvas></div>
                            	<div class="genderPie"><canvas id="genderPie"></canvas></div>
                            
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-12">
                        <div class="card">
                            <div style="height:450px"class="card-body">
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
	<!-- <script src="/ElaAdmin-master/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script> -->
	<script src="/ElaAdmin-master/js/lib/chart-js/Chart.bundle.js"></script>
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
	<script>
	var job=[]; //직업별
$(document).ready(function(){
	var ctx = document.getElementById("weekChart");
	var pie = document.getElementById("weekPieChart");
	var genderPie = document.getElementById("genderPie");
	var hline = document.getElementById("hline");
	
	var week=[]; //요일별
	
	var monthF=[]; //여자 월별
	var monthM=[]; //남자 월별
	var monthA=[]; //모두 월별
	var genderCount=[]; //성별 카운트
	
	var income=[]; //수입별 카운트
	var fIncome=[];//여자 수입별
	var mIncome=[];  //남자 수입별
	
	
	$.ajax({
		url: "/admin/allData.do",
		method: "POST",
		success: function(data) {
			console.log(data);
			$.each(data,function(key,val){
				week.push(val.sun);
				week.push(val.mon);
				week.push(val.tue);
				week.push(val.wed);
				week.push(val.thur);
				week.push(val.fri);
				week.push(val.sat);
				
				job.push(val.build);
				job.push(val.design);
				job.push(val.education);
				job.push(val.it);
				job.push(val.management);
				job.push(val.manufacture);
				job.push(val.medical);
				job.push(val.pro);
				job.push(val.sales);
				job.push(val.service);
				job.push(val.student);
				job.push(val.trade);
				
				income.push(val.oneA);				
				income.push(val.twoA);
				income.push(val.threeA);
				income.push(val.fourA);
				income.push(val.fiveA);
				income.push(val.sixA);
				income.push(val.sevA);
				
				fIncome.push(val.oneF);
				fIncome.push(val.twoF);
				fIncome.push(val.threeF);
				fIncome.push(val.fourF);
				fIncome.push(val.fiveF);
				fIncome.push(val.sixF);
				fIncome.push(val.sevF);
				
				mIncome.push(val.oneM);
				mIncome.push(val.towM);
				mIncome.push(val.threeM);
				mIncome.push(val.fourM);
				mIncome.push(val.fiveM);
				mIncome.push(val.sixM);
				mIncome.push(val.sevM); 
				
				monthA.push(val.Jan);
				monthA.push(val.Feb);
				monthA.push(val.Mar);
				monthA.push(val.Api);
				monthA.push(val.May);
				monthA.push(val.Jun);
				monthA.push(val.Jul);
				monthA.push(val.Aug);
				monthA.push(val.Sep);
				monthA.push(val.Oct);
				monthA.push(val.Nov);
				monthA.push(val.DecA);
				
				monthF.push(val.JanF);
				monthF.push(val.FebF);
				monthF.push(val.MarF);
				monthF.push(val.ApiF);
				monthF.push(val.MayF);
				monthF.push(val.JunF);
				monthF.push(val.JulF);
				monthF.push(val.AugF);
				monthF.push(val.SepF);
				monthF.push(val.OctF);
				monthF.push(val.NovF);
				monthF.push(val.DecF);
				
				
				monthM.push(val.JanM);
				monthM.push(val.FebM);
				monthM.push(val.MarM);
				monthM.push(val.ApiM);
				monthM.push(val.MayM);
				monthM.push(val.JunM);
				monthM.push(val.JulM);
				monthM.push(val.AugM);
				monthM.push(val.SepM);
				monthM.push(val.OctM);
				monthM.push(val.NovM);
				monthM.push(val.DecM); 
				
				genderCount.push(val.FEMALE);
				genderCount.push(val.MALE); 
				
				
				
				
			});
			console.log(job);
			var weekdata={
					labels:['일','월','화','수','목','금','토'],
					datasets:[{
								
								backgroundColor: "rgba(179,181,198,0.2)",
								borderColor: "rgba(179,181,198,1)",
								borderWidth:1,
								data:week
					
							}]
						}; //hline chart data setting end
					//ctx.height=300;
					myhLineChart  = new Chart(ctx, {
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
											text: 'Chart.js Horizontal Bar Chart'
										}
									}
							}); //bar chart drwa end
							
							var pieweekdata={
									labels:['일','월','화','수','목','금','토'],
									datasets:[{
												
												backgroundColor: ["#FFD6D3","#F1C7D3","#D1BCCF","#F0EACA","#B6DDDC","#C59ECA","#C1DFF7"],
												data:week
									
											}]
										};
							
							//pie.height=70;
							myPieChart  = new Chart(pie, {
								type: 'pie',
								data: pieweekdata,
								options: {
									responsive: true,
									legend: {
										//position: 'right',
										display:false,
									},
									title: {
										display: true,
										text: 'Chart.js Pie Chart'
									}
								}
						}); //pie week chart draw end
						
						
						
							var linedata={
			    					labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August','September','October','November','December'],
			    					datasets: [{
			    						label: '전체',
			    						borderColor:"rgba(0, 123, 255, 0.9)",
			    						borderWidth: "1",
			    						backgroundColor: "rgba(0, 123, 255, 0.5)",
			    						//pointHighlightStroke: "rgba(26,179,148,1)",
			    						data: monthA,
			    						fill: false,
			    					},{
			    						label: '남성',
			    						borderColor:"#ffb64d",
			    						borderWidth: "1",
			    						backgroundColor: "#ffb64d",
			    						//pointHighlightStroke: "rgba(26,179,148,1)",
			    						data: monthM,
			    						fill: false,
			    	
			    					},{
			    						label: '여성',
			    						borderColor:"#fc6180",
			    						borderWidth: "1",
			    						backgroundColor: "#fc6180",
			    						//pointHighlightStroke: "rgba(26,179,148,1)",
			    						data: monthF,
			    						fill: false,
			    					}
			    					]
			    					
			    			};
			    		
			    			myLineChart  = new Chart(line, {
								type: 'line',
								data: linedata,
								options: {
									responsive: true,
									title: {
										display: true,
										text: '월 별 가입자 수 변화 추이'
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
							}); //월별 회원수 변화 추이 그래프 그리기 끝
							
							var piegenderdata={
									labels:['여성','남성'],
									datasets:[{
												
												backgroundColor: ["#FFD6D3","#F1C7D3"],
												data:genderCount
									
											}]
										};
							
							//pie.height=70;
							myPieChart  = new Chart(genderPie, {
								type: 'pie',
								data: piegenderdata,
								options: {
									responsive: true,
									legend: {
										position: 'right',
										display:true,
									},
									title: {
										display: true,
										text: '회원 수 성비'
									}
								}
						}); //pie gender chart draw end
						
						
						var incomedata={
								labels:['100미만','100~200미만','200~300미만','300~400미만','400~500미만','500~600미만','600이상'],
								datasets:[
										{
											label:'전체',
											backgroundColor: "#A4BFFA",
											borderColor: "#87AAF7",
											borderWidth:1,
											data:income
								
										},
										{
											label:'여자',
											backgroundColor: "#FAD9AA",
											borderColor: "#FAD9AA",
											borderWidth:1,
											data:fIncome
										},
										{
											label:'남자',
											backgroundColor: "#FABBC8",
											borderColor: "#FABBC8",
											borderWidth:1,
											data:mIncome
										}
										
										
										]
									}; //hline chart data setting end
								hline.height=205;
								myLineChart  = new Chart(hline, {
												type: 'horizontalBar',
												data: incomedata,
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
														text: '수입별 회원 수'
													}
												}
										}); //horizontalBar chart drwa end
						
								//google chart.....!!!!!!!										
								google.charts.load('current', {'packages':['treemap']});
							    google.charts.setOnLoadCallback(drawChart);
							    function drawChart() {
							      var data = google.visualization.arrayToDataTable([
							        ['ITEM', 'Parent', 'size'],
							        ['JOB',null,0],
							        ['build','JOB',job[0]],
							        ['design','JOB',job[1]], 
							        ['education','JOB',job[2]], 
							        ['it','JOB',job[3]], 
							        ['management','JOB',job[4]], 
							        ['manufacture','JOB',job[5]],
							        ['medical','JOB',job[6]], 
							        ['pro','JOB',job[7]], 
							        ['sales','JOB',job[8]], 
							        ['service','JOB',job[9]], 
							        ['student','JOB',job[10]],
							        ['trade','JOB',job[11]]
							        
							      ]);

							      tree = new google.visualization.TreeMap(document.getElementById('chart_div'));

							      tree.draw(data, {
							    	title:"직종별 회원 수 비율",
							        minColor: '#A4BFFA',
							        midColor: '#FAD9AA',
							        maxColor: '#33ccff',
							        headerHeight: 15,
							        fontColor: 'black',
							        showScale: true
							      });

							    }				
	
		}//success function end

		});

});



				
				



</script>
</body>

</html>