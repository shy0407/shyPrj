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
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-title">
                                <h4>Sales</h4>
                            </div>
                            <div class="sales-chart">
                                <div class="ct-bar-chart" style="height:350px"></div>
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
                    <div class="col-lg-6">
                        <div class="card nestable-cart">
                            <div class="card-title">
                                <h4>World Map</h4>

                            </div>
                            <div class="datamap">
                                <div id="world-datamap"></div>
                            </div>
                        </div>
                    </div>
					<div class="col-lg-6">
                        <div class="card">
                            <div class="card-block">
                                <h4 class="card-title">Visitor</h4>
                                <div class="ct-svg-chart" style="height:420px"></div>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                </div>
                <!-- /# row -->

                <div class="row">

                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-title">
                                <h4>Project</h4>
                            </div>
                            <div class="card-body">
                                <div class="current-progress">
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Website</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-40" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
                                                            40%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Android</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-60" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">
                                                            60%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Ios</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                                            70%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Mobile</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-90" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                                                            90%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Android</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-60" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100">
                                                            60%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Ios</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-70" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100">
                                                            70%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-content">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="progress-text">Mobile</div>
                                            </div>
                                            <div class="col-lg-8">
                                                <div class="current-progressbar">
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-primary w-90" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">
                                                            90%
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /# column -->
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-title">
                                <h4>Messages</h4>
                            </div>
                            <div class="card-body">
                                <div class="recent-meaasge">
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="#"><img alt="..." src="images/avatar/1.jpg" class="media-object"></a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading">john doe</h4>
                                            <div class="meaasge-date">15 minutes Ago</div>
                                            <p class="f-s-12">We are happy about your service </p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="#"><img alt="..." src="images/avatar/2.jpg" class="media-object"></a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading">Mr. John</h4>
                                            <div class="meaasge-date">40 minutes ago</div>
                                            <p class="f-s-12">Quick service and good serve </p>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="media-left">
                                            <a href="#"><img alt="..." src="images/avatar/3.jpg" class="media-object"></a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading">Mr. Michael</h4>
                                            <div class="meaasge-date">1 minutes ago</div>
                                            <p class="f-s-12">We like your birthday cake </p>
                                        </div>
                                    </div>
                                    <div class="media no-border">
                                        <div class="media-left">
                                            <a href="#"><img alt="..." src="images/avatar/2.jpg" class="media-object"></a>
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading">Mr. John</h4>
                                            <div class="meaasge-date">40 minutes ago</div>
                                            <p class="f-s-12">Quick service and good serve </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-title">
                                <h4>Todo</h4>
                            </div>
                            <div class="todo-list">
                                <div class="tdl-holder">
                                    <div class="tdl-content">
                                        <ul>
                                            <li class="color-primary">
                                                <label>
                                                <input type="checkbox"><i class="bg-primary"></i><span>Post three to six times on Twitter.</span>
                                                <a href='#' class="ti-close"></a>
                                            </label>
                                            </li>
                                            <li class="color-success">
                                                <label>
                                                <input type="checkbox" checked><i class="bg-success"></i><span>Post one to two times on Facebook.</span>
                                                <a href='#' class="ti-close"></a>
                                            </label>
                                            </li>
                                            <li class="color-warning">
                                                <label>
                                                <input type="checkbox" checked><i class="bg-warning"></i><span>Follow back those who follow you</span>
                                                <a href='#' class="ti-close"></a>
                                            </label>
                                            </li>
                                            <li class="color-danger">
                                                <label>
                                                <input type="checkbox" checked><i class="bg-danger"></i><span>Connect with one new person</span>
                                                <a href='#' class="ti-close"></a>
                                            </label>
                                            </li>
                                        </ul>
                                    </div>
                                    <input type="text" class="tdl-new form-control" placeholder="Type here">
                                </div>
                            </div>
                        </div>
                    </div>

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
    <script src="ElaAdmin-master/js/lib/jquery/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="ElaAdmin-master/js/lib/bootstrap/js/popper.min.js"></script>
    <script src="ElaAdmin-master/js/lib/bootstrap/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="ElaAdmin-master/js/jquery.slimscroll.js"></script>
    <!--Menu sidebar -->
    <script src="ElaAdmin-master/js/sidebarmenu.js"></script>
    <!--stickey kit -->
    <script src="ElaAdmin-master/js/lib/sticky-kit-master/dist/sticky-kit.min.js"></script>


    <script src="ElaAdmin-master/js/lib/datamap/d3.min.js"></script>
    <script src="ElaAdmin-master/js/lib/datamap/topojson.js"></script>
    <script src="ElaAdmin-master/js/lib/datamap/datamaps.world.min.js"></script>
    <script src="ElaAdmin-master/js/lib/datamap/datamap-init.js"></script>

    <script src="ElaAdmin-master/js/lib/weather/jquery.simpleWeather.min.js"></script>
    <script src="ElaAdmin-master/js/lib/weather/weather-init.js"></script>
    <script src="ElaAdmin-master/js/lib/owl-carousel/owl.carousel.min.js"></script>
    <script src="ElaAdmin-master/js/lib/owl-carousel/owl.carousel-init.js"></script>


    <script src="ElaAdmin-master/js/lib/chartist/chartist.min.js"></script>
    <script src="ElaAdmin-master/js/lib/chartist/chartist-plugin-tooltip.min.js"></script>
    <script src="ElaAdmin-master/js/lib/chartist/chartist-init.js"></script>
    <!--Custom JavaScript -->
    <script src="ElaAdmin-master/js/custom.min.js"></script>

</body>

</html>