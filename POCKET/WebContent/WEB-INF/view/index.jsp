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
                                    <li><a href="#"><i class="ti-user"></i> Profile</a></li>                            
                                    <li><a href="detailChange.do"><i class="ti-settings"></i> Setting</a></li>
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
                                    <span><i class="ti-bag f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">278</h2>
                                    <p class="m-b-0">New Posts</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-pink p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-comment f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">278</h2>
                                    <p class="m-b-0">New Comment</p>
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
                                    <h2 class="color-white">$27647</h2>
                                    <p class="m-b-0">Bounce Rate</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card bg-danger p-20">
                            <div class="media widget-ten">
                                <div class="media-left meida media-middle">
                                    <span><i class="ti-location-pin f-s-40"></i></span>
                                </div>
                                <div class="media-body media-text-right">
                                    <h2 class="color-white">278</h2>
                                    <p class="m-b-0">Total Visitor</p>
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
                    
				</div>
				<div class="row">
                    <div class="col-lg-8">
                        <div class="card nestable-cart">
                            <div class="card-title">
                                <h4>World Map</h4>

                            </div>
                            <div class="card-body">
                            <div id="map" style="width:500px;height:400px;"></div>
							<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=27bd3a5915ae76a36c4f076bc4993248"></script>
							<script>
								var container = document.getElementById('map');
								var options = {
									center: new daum.maps.LatLng(33.450701, 126.570667),
									level: 3
								};
						
								var map = new daum.maps.Map(container, options);
							</script>
                             </div>
                            
                        </div>
                    </div>
					<div class="col-lg-4">
                        <div class="card">
                            <div class="card-block">
                                <h4 class="card-title">Visitor</h4>
                                
                            </div>
                        </div>
                    </div>
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
      dayClick: function(date, jsEvent, view) {
    	  //alert('Clicked on: ' + date.format());
    	  
    		swal.setDefaults({
        confirmButtonText: 'Next &rarr;',
        showCancelButton: true,
        animation: false,
        progressSteps: ['1', '2', '3'],
    })
    swal.queue([{
        title: 'New Event',
        text: 'Event Name:',
        input: 'text',
        preConfirm: function(inputValue) {
            return new Promise(function(resolve, reject) {
                if (!inputValue) {
                    reject('Enter a Name')
                } else {
                    inputName = inputValue;
                    resolve()
                }
            })
        }
    }, {
        title: 'New Event',
        text: 'Event Description:',
        input: 'text',
        preConfirm: function(inputValue) {
            return new Promise(function(resolve, reject) {
                if (!inputValue) {
                    reject('Enter a Description')
                } else {
                    inputDescription = inputValue;
                    resolve()
                }
            })
        }
    }, {
        title: 'New Event',
        text: 'Event Time:',
        input: 'select',
        inputOptions: {
            '06:00:00': '06:00 AM',
            '07:00:00': '07:00 AM',
            '08:00:00': '08:00 AM',
            '09:00:00': '09:00 AM',
            '10:00:00': '10:00 AM',
            '11:00:00': '11:00 AM',
            '12:00:00': '12:00 PM',
            '13:00:00': '01:00 PM',
            '14:00:00': '02:00 PM',
            '15:00:00': '03:00 PM',
            '16:00:00': '04:00 PM',
            '17:00:00': '05:00 PM',
            '18:00:00': '06:00 PM',
            '19:00:00': '07:00 PM',
            '20:00:00': '08:00 PM',
            '21:00:00': '09:00 PM',
            '22:00:00': '10:00 PM'
        },
        inputPlaceholder: 'Select Time',
        preConfirm: function(inputValue) {
            return new Promise(function(resolve, reject) {
                if (!inputValue) {
                    reject('Enter a Time')
                } else {
                    inputTime = inputValue;
                    resolve()
                }
            })
        }
    }]).then(function(inputValue) {
        $('#calendarDiv').fullCalendar('renderEvent', {
            title: inputName,
            description: inputDescription,
            start: date.format() + 'T' + inputTime,
            allDay: false,
        }, 'stick');
        swal.resetDefaults()
        swal({
            title: 'Event Created',
            html: "Name: " + inputName + "<br>Description: " + inputDescription + "<br>Time: " + inputTime,
            confirmButtonText: 'Done',
            showCancelButton: false
        })
    }, function() {
        swal.resetDefaults()
    })
		  },
      defaultDate: '2018-05-12',
      navLinks: true, // can click day/week names to navigate views
      //editable: true,
      eventLimit: true, // allow "more" link when too many events
      disableDragging: true

    });

  });


</script>

</body>

</html>