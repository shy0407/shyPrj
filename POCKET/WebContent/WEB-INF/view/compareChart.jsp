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
        </div><body class="fix-header fix-sidebar">
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
                        <li> <a href="/index.do" aria-expanded="false"><i class="fa fa-home" style="font-size:20px"></i><span class="hide-menu">HOME </span></a>
                            <ul aria-expanded="false" class="collapse">
                               
                            </ul>
                        </li>
                        <li class="nav-label">POCKET</li>
                        <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-krw" style="font-size:20px"></i><span class="hide-menu">가계부</span></a>
                            <ul aria-expanded="false" class="collapse">
                                <li><a href="Calender.do">가계부</a></li>
                                <li><a href="pocketRegister.do">영수증올리기</a></li>
                               
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
                <div class="row">
                    <div class="col-6">
                        <div class="card">
			                           
                            <div class="card-body">
								<!--chart 1  -->
								<div id="chart_div" style="width: 100%; height: 400px;"></div>
								
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
			
			var categoryChart = document.getElementById("categoryChart");
			var hline = document.getElementById("hline");
			
			
			var category=[];
			var comp=[];
			
			$.ajax({
				url:"/compIncomeTwo.do",
				methos:"GET",
				success:function(dd){
					console.log(dd);
					$.each(dd,function(key,val){
						comp.push(val.FOODS);
						comp.push(val.ALCOHOL_CIGARETTE);
						comp.push(val.CLOTHES);
						comp.push(val.UTILITY_BILL);
						comp.push(val.HOUSEWARES);
						comp.push(val.HEALTH);
						comp.push(val.TRANSPORTATION);
						comp.push(val.TELEPHONE);
						comp.push(val.ENTERTAINMENT);
						comp.push(val.EDUCATION);
						comp.push(val.TRAVEL);
						
					});
				}
				
				
				
			});
			console.log(comp);
	
			
			$.ajax({
				url:"/expenseUserData.do",
				method:"GET",
				success:function(data){
					console.log(data);
					$.each(data,function(key,val){
						
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
				
				console.log(category);
				
				
	    			
	    			var categorydata={
	    					labels: ['식비','술/담배','의복','세금','가정용품','건강','교통','통신','오락','교육','여행'],
	    					datasets: [{
	    						label: '내정보',
	    						backgroundColor: [
    								"#D98880",
    								"#D98880",
    								"#D98880",
    								"#D98880",
    								"#D98880",
    								"#D98880",
    								"#D98880",
    								"#D98880",
    								"#D98880",
    								"#D98880",
    								"#D98880",
    								"#D98880"		
    								
    							],
	    						
	    						data: category,
	    						fill: true,
	    					},
	    					{
	    						label: '평균',
	    						backgroundColor: [
    								"#ffb64d",
    								"#ffb64d",
    								"#ffb64d",
    								"#ffb64d",
    								"#ffb64d",
    								"#ffb64d",
    								"#ffb64d",
    								"#ffb64d",
    								"#ffb64d",
    								"#ffb64d",
    								"#ffb64d",
    								"#ffb64d"		
    								
    							],
	    						
	    						data: comp,
	    						fill: true,
	    					}
	    					
	    					
	    					]
	    					
	    			};
	    			
	    			
	    			 
	    			
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
									
							          label:"내 정보",
							          fill: true,
							          backgroundColor: "#EC7063",
							          borderColor: "#EC7063",
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
								//backgroundColor: "#5499C7",
						        borderColor: "#5499C7",
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
								//backgroundColor: "#FDEDEC",
						        borderColor: "#FDEDEC",
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
						console.log(data);
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
								//backgroundColor: "#1F618D",
						        borderColor: "#1F618D",
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
								//backgroundColor: "#F2D7D5",
						        borderColor: "#F2D7D5",
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
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script>
var parent=[];
var num=[];

	$(function(){
		
		
		//3단계
		$.ajax({
			
			url:"apiData.do",
			dataType:"json",
			method:"GET",
			async: false,
			success:function(data){
				//console.log(data);
				
				$.each(data, function(key,value) {
				
				});
				
			},
			error:function(xhr, status, err){
				console.log(xhr);
				console.log(status);	
				console.log(err);
			}
			
			
			
			
		});
	//2단계
	
	
	$.ajax({
			
			url:"apiData2.do",
			dataType:"json",
			method:"GET",
			async: false,
			success:function(data){
				console.log(data);
				
				$.each(data, function(key,value) {
					$.each(value,function(key1,value1){
						
						
					});
					
					parent.push(value.C2_NM);
					num.push(parseInt(value.DT));
					
					
					
				});
				console.log(parent);
				console.log(num);
				console.log(typeof(num[1]));
				
				
			},
			error:function(xhr, status, err){
				console.log(xhr);
				console.log(status);	
				console.log(err);
			}
			
			
			
		});
		
		
	});
	
	google.charts.load('current', {'packages':['treemap']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['ITEM', 'Parent', 'size'],
        ['품목별지출',null,0],
        [parent[0],'품목별지출',0], //식료퓸
        [parent[12],'품목별지출',0], //주거
        /* [parent[16],'품목별지출',0], //광열 수도
        [parent[21],'품목별지출',0], //가구집기가사
        [parent[29],'품목별지출',0], //의류 및 신발
        [parent[37],'품목별지출',0], //보건의료
        [parent[41],'품목별지출',0], //교육
        [parent[55],'품목별지출',0], //기타소비
        [parent[60],'품목별지출',0], //비소비 */
        
        [parent[1],parent[0],num[1]],
        [parent[2],parent[0],num[2]],
        [parent[3],parent[0],num[3]],
        [parent[4],parent[0],num[4]],
        [parent[5],parent[0],num[5]],
        [parent[6],parent[0],num[6]],
        [parent[7],parent[0],num[7]],
        [parent[8],parent[0],num[8]],
        [parent[9],parent[0],num[9]],
        [parent[10],parent[0],num[10]],
        [parent[11],parent[0],num[11]],  //식료품 끝
       
        [parent[13],parent[12],num[13]],
        [parent[14],parent[12],num[14]],
        [parent[15],parent[12],num[15]]  //주거끝
        
       
        
		     
      ]);

      tree = new google.visualization.TreeMap(document.getElementById('chart_div'));

      tree.draw(data, {
        minColor: '#33ccff',
        midColor: '#ffff99',
        maxColor: '#ff99cc',
        headerHeight: 15,
        fontColor: 'black',
        showScale: true
      });

    }



</script>
</body>

</html>