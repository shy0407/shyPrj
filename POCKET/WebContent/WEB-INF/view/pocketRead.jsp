<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<style>
.fileDrop {
	width: 100%;
	height: 320px;
	border: 1px dotted gray;
}
.uploadedList{margin: 0 auto;}




    .popup {position: absolute;}
    .back { background-color: gray; opacity:0.5; width: 100%; height: 300%; overflow:hidden;  z-index:1101;}
    .front { 
       z-index:1110; opacity:1; boarder:1px; margin: auto; 
      }
     .show{
       position:relative;
       max-width: 1200px; 
       max-height: 800px; 
       overflow: auto;       
     } 
     
     
.uploadedList{

	width :100%;
	height:308px;
	border: 1px;
	border-color: #e7e7e7;

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
                    <h3 class="text-primary">영수증 상세</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                        <li class="breadcrumb-item active">영수증 상세</li>
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
                                <h4 class="m-b-0 text-white">영수증 상세</h4>
                            </div>        
                            <div class="card-body">
								<!--chart 1  -->
								<div>
									<form role="form" action="pocketRead.do" method="post">
                                
                                    <div class="form-body">
                                      
                                        <hr>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <!-- <label>City</label>
                                                    <input type="text" class="form-control"> -->
                                                    <label for="exampleInputEmail1">첨부 영수증</label>
													
											<!-- 		<div class="initMsg">파일을 올려주세요.</div>-->
													<div class="uploadedList"></div> 
													
													</div>
                                                </div>
                                            
                                            
                                             <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>결제금액</label>
                                                     <input type="text" name="expense_cash" class="form-control"  value="${pocketDTO.expense_cash }">                                                  
                                                </div>
                                                <div class="form-group">
                                                	 <label>결제일</label>
                                                    <input type="date" name="expense_date" class="form-control"  value="${pocketDTO.expense_date }">
                                                
                                                </div>
                                                <div class="form-group">
                                                    <label>카테고리상세 </label>
                                                    <input type="text" name="expense_detail" class="form-control" value="${pocketDTO.expense_detail }">
                                                </div>
                                                <div class="form-group">
                                                    <label>결제 카테고리 </label>
                                                    <select class="form-control custom-select" name="expense_category">
                                                        <option>--카테고리를 선택해주세요--</option>
                                                       	<option value="foods" <c:if test="${pocketDTO.expense_category eq 'foods'}">selected</c:if>>식비</option>
                                                        <option value="living" <c:if test="${pocketDTO.expense_category eq 'living'}">selected</c:if>>주거/통신</option>
                                                        <option value="houseware" <c:if test="${pocketDTO.expense_category eq 'houseware'}">selected</c:if>>생활용품</option>
                                                        <option value="clothes" <c:if test="${pocketDTO.expense_category eq 'clothes'}">selected</c:if>>의복/미용</option>
                                                        <option value="health" <c:if test="${pocketDTO.expense_category eq 'health'}">selected</c:if>>건강/문화</option>
                                                        <option value="edu" <c:if test="${pocketDTO.expense_category eq 'edu'}">selected</c:if>>교육/육아</option>
                                                        <option value="transport" <c:if test="${pocketDTO.expense_category eq 'transport'}">selected</c:if>>교통/차량</option>
                                                        <option value="fee" <c:if test="${pocketDTO.expense_category eq 'fee'}">selected</c:if>>경조사/회비</option>
                                                        <option value="tax" <c:if test="${pocketDTO.expense_category eq 'tax'}">selected</c:if>>세금/이자</option>
                                                    </select>
                                                </div>
                                            </div>
                                            </div>
                                               <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                <label>파일업로드</label>
                                                <div class="fileDrop">
                                                </div>
                                                </div>
                                                </div>
                                             

                                    </div>
                                            
                                            	<input type="hidden" name="page" value="${cri.page }">
                                            	<input type="hidden" name="perPageNum" value="${cri.perPageNum }">
                                            	<input type="hidden" name="pocket_no" value="${pocketDTO.pocket_no}">
                                        </div>
                                     
                                    <div class="form-actions">
                                    	<button type="button" class="btn btn-dark btn-outline m-b-10 m-l-5" id="golist"><i class="fa fa-history"></i>Go List</button>	
                                        <button type="submit" class="btn btn-dark btn-outline m-b-10 m-l-5" id="modify"><i class="fa fa-save"></i> Modify</button>
                                        <button type="submit" class="btn btn-dark btn-outline m-b-10 m-l-5" id="remove"><i class="fa fa-trash-alt"></i> Remove</button>
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
$(document).ready(function(){
		
	var formObj = $("form[role='form']");
	
	formObj.submit(function(event){
		event.preventDefault();
		
		var that = $(this);
		
		var str ="";
		$(".uploadedList .delbtn").each(function(index){
			 str += "<input type='hidden' name='files' value='"+$(this).attr("href") +"'> ";
		});
		
		that.append(str);

		console.log(str);
		
		that.get(0).submit();
	});
	
	
	$("#golist ").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "/pocketGallery.do");
		formObj.submit();
	});

	/* $("#modify").on("click", function(){
		formObj.attr("action", "/pocketRead.do");
		formObj.attr("method", "post");		
		formObj.submit();
	}); */
	
	
	$("#remove").on("click", function(){
		
		
		var arr = [];
		$(".uploadedList li").each(function(index){
			 arr.push($(this).attr("data-src"));
		});
		
		if(arr.length > 0){
			$.post("/deleteAllFiles.do",{files:arr}, function(){
				
			});
		}
		
		formObj.attr("action", "/removePocket.do");
		formObj.submit();
	});	


var template = Handlebars.compile($("#template").html());


$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});


$(".fileDrop").on("drop", function(event){
	event.preventDefault();
	
	var files = event.originalEvent.dataTransfer.files;
	
	var file = files[0];

	//console.log(file);
	
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


var pocket_no = ${pocketDTO.pocket_no};
var template = Handlebars.compile($("#template").html());

$.ajax({
    
    url: "/getPocketAttach.do",
    data:{pocket_no:pocket_no},
    success: function(list){
        $(list).each(function(){
      	console.log(list);
      	var fileInfo = getFileInfo(this);
      	console.log(fileInfo);
      	console.log(fileInfo.imgsrc);
      	
    	
		var fileInfo = getFileInfo(this);
		
		var html = template(fileInfo);
		
		 $(".uploadedList").append(html);
      	
      	
      	

        });
    }
});

$(".uploadedList").on("click", ".mailbox-attachment-name", function(event){
	
	var fileLink = $(this).attr("href");
	
	if(checkImageType(fileLink)){
		
		event.preventDefault();
				
		var imgTag = $("#popup_img");
		imgTag.attr("src", fileLink);
		
		console.log(imgTag.attr("src"));
				
		$(".popup").show('slow');
		imgTag.addClass("show");		
	}	
});

$("#popup_img").on("click", function(){
	
	$(".popup").hide('slow');
	
});	

});
</script>

		</body>

</html>