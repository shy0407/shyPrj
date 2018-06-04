<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<style>
#shy{	width:60%;
		margin: 0 auto;}



.btn12 {
  border: 3px solid #1a1a1a;
  display: inline-block;
  padding: 10px;
  position: relative;
  text-align: center;
  -webkit-transition: background 600ms ease, color 600ms ease;
  transition: background 600ms ease, color 600ms ease;
}

input[type="radio"].toggle {
  display: none;
}
input[type="radio"].toggle + label {
  cursor: pointer;
  min-width: 60px;
}
input[type="radio"].toggle + label:hover {
  background: none;
  color: #1a1a1a;
}
input[type="radio"].toggle + label:after {
  background: #1a1a1a;
  content: "";
  height: 100%;
  position: absolute;
  top: 0;
  -webkit-transition: left 200ms cubic-bezier(0.77, 0, 0.175, 1);
  transition: left 200ms cubic-bezier(0.77, 0, 0.175, 1);
  width: 100%;
  z-index: -1;
}
input[type="radio"].toggle.toggle-left + label {
  border-right: 0;
}
input[type="radio"].toggle.toggle-left + label:after {
  left: 100%;
}
input[type="radio"].toggle.toggle-right + label {
  margin-left: -5px;
}
input[type="radio"].toggle.toggle-right + label:after {
  left: -100%;
}
input[type="radio"].toggle:checked + label {
  cursor: default;
  color: #fff;
  -webkit-transition: color 200ms;
  transition: color 200ms;
}
input[type="radio"].toggle:checked + label:after {
  left: 0;
}

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
    <link href="/toggle/scss/style.scss" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    
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
                        <li class="breadcrumb-item active">회원정보 수정</li>
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
								<div class="card card-outline-primary" id= "shy">
                            <div class="card-header">
                                <h4 class="m-b-0 text-white">회원 정보 수정</h4>
                            </div>
                            <div class="card-body" >
                               
                                <form role="form" id="regForm" method="post" action="detailChange.do">
                                
                                    <div class="form-body">
                                      
                                        <hr>
                                        <div class="row">
                                            <div class="col-md-12 ">
                                                <div class="form-group">
                                                    <label>EMAIL</label>
                                                    <input type="text" name="email" class="form-control" value="" disabled>
                                                </div>
                                            </div>
                                        </div>
                                           <div class="row">
                                            <div class="col-md-12 ">
                                                <div class="form-group">
                                                    <label>USER ID</label>
                                                    <input type="text" name="user_id" class="form-control">
                                                </div>
                                            </div>
                                        </div>
											<div class="row">
												<div class="col-md-6 ">
													<div class="form-group">
														<label>성별</label> 
														
													  <input id="toggle-on" class="toggle toggle-left" name="gender" value="male" type="radio" checked>
														<label for="toggle-on" class="btn12">M</label>
														<input id="toggle-off" class="toggle toggle-right" name="gender" value="female" type="radio">
														<label for="toggle-off" class="btn12">F</label>
  
													</div>
												</div>
												   <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>AGE</label>
                                                    <select class="form-control custom-select" name="age">
                                                        <option value="">--나이를 선택해주세요--</option>
                                                        <option value="10">10대</option>
							                            <option value="20">20대</option>
							                            <option value="30">30대</option>
							                            <option value="40">40대</option>
							                            <option value="50">50대</option>
							                            <option value="60">60대 이상</option>
                                                    </select>
                                                </div>
                                            </div>
											</div>
											<div class="row"> 
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>JOB</label>
                                                    <select class="form-control custom-select" name="job">
                                                        <option value="">--직업을 선택해주세요--</option>
                                                        <option value="management">경영/사무</option>
							                            <option value="sales">영업/고객상담</option>
							                            <option value="it">IT인터넷</option>
							                            <option value="design">디자인</option>
							                            <option value="service">서비스</option>
							                            <option value="pro">전문직</option>
							                            <option value="medical">의료</option>
							                            <option value="manufacture">생산/제조</option>
							                            <option value="build">건설</option>
							                            <option value="trade">유통/무역</option>
							                            <option value="education">교육</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>INCOME</label>
                                                    <select class="form-control custom-select" name="income">
                                                        <option value="">--수입을 선택해주세요--</option>
                                                        <option value="100">100만원 미만</option>
							                            <option value="200">100~200만원 미만</option>
							                            <option value="300">200~300만원 미만</option>
							                            <option value="400">300~400만원 미만</option>
							                            <option value="500">400~500만원 미만</option>
							                            <option value="600">500~600만원 미만</option>
							                            <option value="700">600만원 이상</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        
                               
                                        
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

</body>

</html>