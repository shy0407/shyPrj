<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<style>
#shy{	width:60%;
		margin: 0 auto;}

.switch {
    position: relative;
    margin: 1px auto;
    width: 219px;
    height: 43px;
    border: 1px solid #e7e7e7;
    color: #222225;
    font-size: 16px;
    border-radius: 5px;
}

.quality {
  position: relative;
  display: inline-block;
  width: 50%;
  height: 100%;
  line-height: 40px;
}
.quality:first-child label {
  border-radius: 5px 0 0 5px;
}
.quality:last-child label {
  border-radius: 0 5px 5px 0;
}
.quality label {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  cursor: pointer;
  font-style: italic;
  text-align: center;
  transition: transform 0.4s, color 0.4s, background-color 0.4s;
}
.quality input[type="radio"] {
  appearance: none;
  width: 0;
  height: 0;
  opacity: 0;
}
.quality input[type="radio"]:focus {
  outline: 0;
  outline-offset: 0;
}
.quality input[type="radio"]:checked ~ label {
  background-color: #e7e7e7;
  color: #111;
}
.quality input[type="radio"]:active ~ label {
  transform: scale(1.05);
}


</style>
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

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
   
    <script>
	var result ='${msg}';
	if(result=='success'){
		alert("수정완료되었습니다.");
	

	</script>
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
                    <h3 class="text-primary">회원정보수정</h3> </div>
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
                            <div class="card-header" id="ss">
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
                                                    <input type="text" name="email" class="form-control" value='<c:out value="${userDTO.email }"></c:out>'  disabled>
                                                </div>
                                            </div>
                                        </div>
                                           <div class="row">
                                            <div class="col-md-12 ">
                                                <div class="form-group">
                                                    <label>USER ID</label>
                                                    <input type="text" name="user_id" value='<c:out value="${userDTO.user_id }"></c:out>' class="form-control">
                                                </div>
                                            </div>
                                        </div>
											<div class="row">
												<div class="col-md-6 ">
													<div class="form-group">
														<label>성별</label> 
														  <div class='switch'><div class='quality'>
													    <input checked id='q1' name='M' type='radio' value="MALE" <c:if test="${userDTO.gender eq 'M'}">checked</c:if>>
													    <label for='q1'>MALE</label>
													  </div><div class='quality'>
													    <input id='q2' name='F' type='radio' value='FEMALE' <c:if test="${userDTO.gender eq 'F'}">checked</c:if>>
													    <label for='q2'>FEMALE</label>
													  </div>
													</div>
																										  
													  
													</div>
												</div>
												   <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>AGE</label>
                                                    <select class="form-control custom-select" name="age">
                                                        <option value="">--나이를 선택해주세요--</option>
                                                        <option value="10" <c:if test="${userDTO.age eq '10'}">selected</c:if>>10대</option>
							                            <option value="20" <c:if test="${userDTO.age eq '20'}">selected</c:if>>20대</option>
							                            <option value="30" <c:if test="${userDTO.age eq '30'}">selected</c:if>>30대</option>
							                            <option value="40" <c:if test="${userDTO.age eq '40'}">selected</c:if>>40대</option>
							                            <option value="50" <c:if test="${userDTO.age eq '50'}">selected</c:if>>50대</option>
							                            <option value="60" <c:if test="${userDTO.age eq '60'}">selected</c:if>>60대 이상</option>
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
                                                        <option value="management" <c:if test="${userDTO.job eq 'management'}">selected</c:if>>경영/사무</option>
							                            <option value="sales" <c:if test="${userDTO.job eq 'sales'}">selected</c:if>>영업/고객상담</option>
							                            <option value="it" <c:if test="${userDTO.job eq 'it'}">selected</c:if>>IT인터넷</option>
							                            <option value="design" <c:if test="${userDTO.job eq 'design'}">selected</c:if>>디자인</option>
							                            <option value="service" <c:if test="${userDTO.job eq 'service'}">selected</c:if>>서비스</option>
							                            <option value="pro" <c:if test="${userDTO.job eq 'pro'}">selected</c:if>>전문직</option>
							                            <option value="medical" <c:if test="${userDTO.job eq 'medical'}">selected</c:if>>의료</option>
							                            <option value="manufacture" <c:if test="${userDTO.job eq 'manufacture'}">selected</c:if>>생산/제조</option>
							                            <option value="build" <c:if test="${userDTO.job eq 'build'}">selected</c:if>>건설</option>
							                            <option value="trade" <c:if test="${userDTO.job eq 'trade'}">selected</c:if>>유통/무역</option>
							                            <option value="education" <c:if test="${userDTO.job eq 'education'}">selected</c:if>>교육</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!--/span-->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>INCOME</label>
                                                    <select class="form-control custom-select" name="income">
                                                        <option value="">--수입을 선택해주세요--</option>
                                                        <option value="100" <c:if test="${userDTO.income eq '100'}">selected</c:if>>100만원 미만</option>
							                            <option value="200" <c:if test="${userDTO.income eq '200'}">selected</c:if>>100~200만원 미만</option>
							                            <option value="300" <c:if test="${userDTO.income eq '300'}">selected</c:if>>200~300만원 미만</option>
							                            <option value="400" <c:if test="${userDTO.income eq '400'}">selected</c:if>>300~400만원 미만</option>
							                            <option value="500" <c:if test="${userDTO.income eq '500'}">selected</c:if>>400~500만원 미만</option>
							                            <option value="600" <c:if test="${userDTO.income eq '600'}">selected</c:if>>500~600만원 미만</option>
							                            <option value="700" <c:if test="${userDTO.income eq '700'}">selected</c:if>>600만원 이상</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!--/span-->
                                        </div>
                                        
                               
                                        
                                    </div>
                                    
                                    <div class="form-actions">
                                    	<button type="submit" class="btn btn-dark btn-outline m-b-10 m-l-5"><i class="fa fa-save"></i> 저장</button>
                                        <!-- <button type="submit" class="btn btn-success"> <i class="fa fa-check"></i> Save</button> -->
                                        
                                        <button type="submit" class="btn btn-dark btn-outline m-b-10 m-l-5" id="delete"><i class="far fa-trash-alt"></i>탈퇴</button>
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
	<script>
	
	$(document).ready(function(){
		
		var formObj = $("form[role='form']");
		
		console.log(formObj);
		
		$("#delete").on("click", function(){
			formObj.attr("method", "post");
			formObj.attr("action", "/deleteUser.do");
			formObj.submit();
		});
		
		
	});
	</script>
</body>

</html>