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
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <title>Ela - Bootstrap Admin Dashboard Template</title>

    <link href="ElaAdmin-master/css/lib/chartist/chartist.min.css" rel="stylesheet">
	<link href="ElaAdmin-master/css/lib/owl.carousel.min.css" rel="stylesheet" />
    <link href="ElaAdmin-master/css/lib/owl.theme.default.min.css" rel="stylesheet" />
    <!-- Bootstrap Core CSS -->
    <link href="ElaAdmin-master/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="ElaAdmin-master/css/helper.css" rel="stylesheet">
    <link href="ElaAdmin-master/css/style.css" rel="stylesheet">
    <link href="/calendar/fullcalendar.min.css" rel="stylesheet">
       <link href="/calendar/fullcalendar.min.css" rel="stylesheet">
    <link href="/calendar/fullcalendar.print.css" rel="stylesheet" media="print">
        <link href="/ElaAdmin-master/css/lib/sweetalert/sweetalert.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    
<style>
.bcd{
height: auto;}
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
                                    <span><i class="fab fa-product-hunt fa-3x"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">278</h2>
                                    <p class="m-b-0">POINT</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-pink p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="fab fa-get-pocket fa-3x"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">${pDTO.income }</h2>
                                    <p class="m-b-0">INCOME</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-success p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-vector f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">${pDTO.expense_cash }</h2>
                                    <p class="m-b-0">EXPENSE</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-danger p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                   
                                </div>
                                <div class="media-body media-text-right">
                                    <div class="bcd">
                                    <img src="http://chart.apis.google.com/chart?cht=qr&amp;chs=350x350&amp;chl=${sessionScope.userDTO.email}" width="60" height="60">
                                    </div>
                                    	
										
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-title">
                                <h4>달력으로 확인</h4>
                            </div>
                             <div class="card-body">
                             <div id='calendar'></div>
                             </div>
                            
                        </div>
                        <!-- /# card -->
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-title">
                                <h4>최근지출내역</h4>
                            </div>
                            <div class="card-body">
								<div class="table-responsive">
									<table class="table table-hover ">
										<thead>
											<tr>
												<th>지출날짜</th>
												<th>금액</th>
												<th>내역</th>
											</tr>
										</thead>
										<tbody>
										 <c:forEach items="${pList}" var="pList">
											<tr>
												<td>${pList.expense_date }</td>
												<td>${pList.expense_cash }원</td>
												<td align="left">${pList.expense_category }</td>
											</tr>
											</c:forEach>
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
                   <!--  <div class="col-lg-4">
                        <div class="card nestable-cart">
                            <div class="card-title">
                                <h4>최근 등록된 가맹점</h4>

                            </div>
                            <div class="card-body">
                            <div id="map" style="width:100%;height:350px;"></div>
							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=27bd3a5915ae76a36c4f076bc4993248"></script>
							
							
                             </div>
                            
                        </div>
                    </div> -->
                    <!-- /# column -->
                </div>
               

                


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
	<script src="/ElaAdmin-master/js/lib/chart-js/Chart.bundle.js"></script>
	 <script src="/calendar/moment.min.js"></script>
    <script src="/calendar/fullcalendar.min.js"></script>
    <script src="/calendar/jquery-ui.min.js"></script>   
    <!--Custom JavaScript -->
    <script src="/ElaAdmin-master/js/custom.min.js"></script>
  
 <script src="https://unpkg.com/sweetalert2"></script>

	 <script>
   var date_last_clicked = null;
   
  $(document).ready(function() {
    $('#calendar').fullCalendar({
      header: {
        left: 'prev,next today',
        center: 'title',
        right: 'month,basicWeek,basicDay'
        	
      },
      events: function(start, end,timezone,callback){
    	  $.ajax({
    		  url:'expenseCal.do',
    		  dataType:'json',
    		  type:'post',
    		  data:{start:start.format()},
    		  success:function(data){
    			  console.log(data);
    			  var events= [];
    			  $(data).each(function(){
    				  events.push({
    					  title:$(this).attr('expense_category'),
    					  start:$(this).attr('expense_date'),
    					  end:$(this).attr('expense_date')
    				  });
    			  });
    			  callback(events);
    		  }
    	  });
      },
      
		  eventClick: function(calEvent, jsEvent, view) {

			  swal({
				  title: '지출내역입니다!',
				  text: calEvent.title,
				  //type: 'error',
				  confirmButtonText: 'Cool'
				})

			  },
		  
	
      //defaultDate: '2018-05-12',
      navLinks: true, // can click day/week names to navigate views
      //editable: true,
      eventLimit: true, // allow "more" link when too many events
      disableDragging: true

    });
    var lng=[];
    var store=[];
    var lat=[];
    var position = new Array();
    var init = new Object() ;
    var addr=[];
    $.ajax({
    	url:'getPosition.do',
    	
    	success:function(dd){
    		console.log(dd);
    		
    		
    		
    	}
    });
	
    var geocoder = new daum.maps.services.Geocoder();

    for (var i = 0; i < addr.length; i++) {
            (function(i) {                                                   
            geocoder.addr2coord(addr[i], function (status, result) {
           // 정상적으로 검색이 완료됐으면 
                if (status === daum.maps.services.Status.OK) {

                    var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);

                    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                    map.setCenter(coords);

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    var marker = new daum.maps.Marker({
                        map: map,
                        position: coords
        			 });
                }
            });
     })(i);
    }
    
    
    
    
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
	    mapOption = { 
	        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };
	
	var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	 
	// 마커를 표시할 위치와 title 객체 배열입니다 
	
	
	var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	    


  });


</script>



</html>