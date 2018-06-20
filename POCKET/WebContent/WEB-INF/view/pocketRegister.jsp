<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<style>
.fileDrop {
	width: 100%;
	height: 200px;	
	border: 1px dotted gray;
}
.uploadedList{

	width :100%;
	height:308px;
	border: 1px solid;
	border-color: #e7e7e7;

}

.uploadedList img{
margin:0 auto; 
width: 100%;
height: 100%;
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
                    <h3 class="text-primary">영수증 올리기</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">영수증 올리기</li>
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
			                   	<div class="card card-outline-primary">
                            <div class="card-header">
                                <h4 class="m-b-0 text-white">영수증 등록</h4>
                            </div>        
                            <div class="card-body">
                          
                                <form role="form" id="registerForm" method="post">
								<div>
                                   <div class="form-body">
                                        <hr>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    
                                                    <label for="exampleInputEmail1">첨부파일</label>
													<div class="uploadedList">		
													</div>
													</div>
                                                
                                            </div>
                                            
                                             <div class="col-md-8">
                                                <div class="form-group">
                                                    <label>결제금액</label>
                                                    <input type="text" name="expense_cash" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>결제일</label>
                                                    <input type="date" name="expense_date" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>결제 상세 </label>
                                                    <input type="text" name="expense_detail" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>결제 카테고리</label>
                                                    <select class="form-control custom-select" name="expense_category">
                                                        <option>--카테고리를 선택해주세요--</option>
                                                        <option value="foods">식비</option>
                                                        <option value="living">주거/통신</option>
                                                        <option value="houseware">생활용품</option>
                                                        <option value="clothes">의복/미용</option>
                                                        <option value="health">건강/문화</option>
                                                        <option value="edu">교육/육아</option>
                                                        <option value="transport">교통/차량</option>
                                                        <option value="fee">경조사/회비</option>
                                                        <option value="tax">세금/이자</option>
                                                    </select>
                                                </div>
                                            </div>  	
                                        </div>
                                       <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                  <div class="fileDrop">
													<div class="initMsg">파일을 올려주세요.</div>
													
													</div>
                                                </div>
                                            </div>
                                        </div>  
                                        </div>               
                                    </div>
                                    <div class="form-actions">                                  		
                                        <button type="submit" class="btn btn-dark btn-outline m-b-10 m-l-5" id="register"><i class="far fa-check-circle"></i> 등록</button>
                                        <button type="button" class="btn btn-dark btn-outline m-b-10 m-l-5" id="golist"><i class="fas fa-history"></i> 목록</button>
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
	<script type="text/javascript" src="/uploadjs/upload.js"></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

	<script id="template" type="text/x-handlebars-template">
		<li>
 			 <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
 				 <div class="mailbox-attachment-info">
					<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
					<a href="{{fullName}}" 
   					  class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
			</span>
  				</div>
		</li>                
	</script>    
	<script>
    $(document).ready(function () {
    	
    	var formObj = $("form[role='form']");
    	
    	$("#golist").on("click", function(){
			formObj.attr("method", "get");
			formObj.attr("action", "/pocketGallery.do");
			formObj.submit();
		});
    	
    	
    	
       $(".initMsg").show();
       var template = Handlebars.compile($("#template").html());
        // 전체 페이지 파일 끌어 놓기 기본 이벤트 방지 : 지정된 영역외에 파일 드래그 드랍시 페이지 이동방지
        $(".content-wrapper").on("dragenter dragover drop", function (event) {
            event.preventDefault();
        });
        // 파일 끌어 놓기 기본 이벤트 방지
        $(".fileDrop").on("dragenter dragover", function (event) {
            event.preventDefault();
        });
        // 파일 드랍 이벤트 : 파일 전송 처리
        $(".fileDrop").on("drop", function (event) {
            event.preventDefault();
            $(".initMsg").hide();
            var files = event.originalEvent.dataTransfer.files;
            var file = files[0];
            console.log(files);
            var formData = new FormData();
            formData.append("file", file);
            $.ajax({
      		  url: '/uploadAjax.do',
      		  data: formData,
      		  dataType:'text',
      		  processData: false,
      		  contentType: false,
      		  type: 'POST',
      		  success: function(data){
      			  
      			  var fileInfo = getFileInfo(data);
      			  
      			  var html = template(fileInfo);
      			  
      			  $(".uploadedList").append(html);
      		  }
      		});	
        });
        // 파일 삭제 버튼 클릭 이벤트 : 파일삭제, 파일명 DB 삭제 처리
        $(".uploadedList").on("click", ".delbtn", function(event){
        	
        	event.preventDefault();
        	
        	var that = $(this);
        	 
        	$.ajax({
        	   url:"/deleteFile.do",
        	   type:"post",
        	   data: {fileName:$(this).attr("href")},
        	   dataType:"text",
        	   success:function(result){
        		   if(result == 'deleted'){
        			   that.closest("li").remove();
        		   }
        	   }
           });
        });
     
        
        // 글 저장 버튼 클릭 이벤트 : 파일명 DB 저장 처리
    	  $("#registerForm").submit(function(event){
			event.preventDefault();
			
			var that = $(this);
			
			var str ="";
			$(".uploadedList .delbtn").each(function(index){
				str += "<input type='hidden' name='files' value='"+$(this).attr("href") +"'> ";
			});
			console.log(str);
			that.append(str);
		
			that.get(0).submit();
			});    
        
    });     
		</script>
		</body>

</html>