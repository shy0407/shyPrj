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
     <style type="text/css">

        /* set the size of the datepicker search control for Order Date*/
        #ui-datepicker-div { font-size:11px; }
        
        .ui-autocomplete { font-size: 11px; position: absolute; cursor: default;z-index:5000 !important;}      
        

    </style> 
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
    <title>Ela - Bootstrap Admin Dashboard Template</title>
    <!-- Bootstrap Core CSS -->
    <link href="/ElaAdmin-master/css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/ElaAdmin-master/css/helper.css" rel="stylesheet">
    <link href="/ElaAdmin-master/css/style.css" rel="stylesheet">
    <link href="/calendar/fullcalendar.min.css" rel="stylesheet">
       <link href="/calendar/fullcalendar.min.css" rel="stylesheet">
    <link href="/calendar/fullcalendar.print.css" rel="stylesheet" media="print">
        <link href="/ElaAdmin-master/css/lib/sweetalert/sweetalert.css" rel="stylesheet">
    
    <!-- 그리드 -->
    <!-- A link to a jQuery UI ThemeRoller theme, more than 22 built-in and many more custom -->
    <link rel="stylesheet" type="text/css" media="screen" href="/grid/css/jquery-ui.css" />
    <!-- The link to the CSS that the grid needs -->
    <link rel="stylesheet" type="text/css" media="screen" href="/grid/css/trirand/ui.jqgrid.css" />


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
								
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs customtab2" role="tablist">
                                        <li class="nav-item"> <a class="nav-link active" data-toggle="tab" href="#home7" role="tab"><span class="hidden-sm-up"><i class="ti-home"></i></span> <span class="hidden-xs-down">Home</span></a> </li>
                                        <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#profile7" role="tab"><span class="hidden-sm-up"><i class="ti-user"></i></span> <span class="hidden-xs-down">Profile</span></a> </li>
                                        <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#messages7" role="tab"><span class="hidden-sm-up"><i class="ti-email"></i></span> <span class="hidden-xs-down">Messages</span></a> </li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="home7" role="tabpanel">
                                            <div class="p-20">
                                                <div id='calendar'></div>
                                            </div>
                                        </div>
                                        <div class="tab-pane  p-20" id="profile7" role="tabpanel">
												
												    <table id="jqGrid"></table>
												    <div id="jqGridPager"></div>                                        
                                        </div>
                                        <div class="tab-pane p-20" id="messages7" role="tabpanel">3</div>
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
    <!-- 그리드 -->
     <!-- This is the Javascript file of jqGrid -->   
    <script type="text/ecmascript" src="/grid/js/trirand/jquery.jqGrid.min.js"></script>
    <!-- This is the localization file of the grid controlling messages, labels, etc.
    <!-- We support more than 40 localizations -->
    <script type="text/ecmascript" src="/grid/js/trirand/i18n/grid.locale-kr.js"></script>
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
	 <script src="/calendar/moment.min.js"></script>
    <script src="/calendar/fullcalendar.min.js"></script>
    <script src="/calendar/jquery-ui.min.js"></script>
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


    
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
    	  
    	  swal("Write something here:", {
    		  content: "input",
    		})
    		.then((value) => {
    		  swal(`You typed: ${value}`);
    		});
		  },
      defaultDate: '2018-05-12',
      navLinks: true, // can click day/week names to navigate views
      //editable: true,
      eventLimit: true, // allow "more" link when too many events
      disableDragging: true

    });

  });

  
</script>

<script type="text/ecmascript" src="/grid/js/jquery-ui.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
        	// KR language callendar
        	$.datepicker.regional['kr'] = {
        	    closeText: 'close', // 닫기 버튼 텍스트 변경
        	    currentText: '오늘', // 오늘 텍스트 변경
        	    monthNames: ['01','02','03','04','05','06','07','08','09','10','11','12'], // 개월 텍스트 설정
        	    monthNamesShort: ['01','02','03','04','05','06','07','08','09','10','11','12'], // 개월 텍스트 설정
        	    dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'], // 요일 텍스트 설정
        	    dayNamesShort: ['월','화','수','목','금','토','일'], // 요일 텍스트 축약 설정&nbsp;   dayNamesMin: ['월','화','수','목','금','토','일'], // 요일 최소 축약 텍스트 설정
        	    dateFormat: 'dd/mm/yy' // 날짜 포맷 설정
        	};

        	// Seeting up default language, Korean
        	$.datepicker.setDefaults($.datepicker.regional['kr']);
        	
        	
        	
            $("#jqGrid").jqGrid({
                url: 'expense.do',
				// we set the changes to be made at client side using predefined word clientArray
                //postData:{pocket_no:'pocket_no'},
				editurl: 'insertPocket.do',
				//mtype: "GET",
				
                datatype: "json",
                colModel: [
                	{
						label: 'pocket_no',
                        name: 'pocket_no',
                        width: 75,
						key: true,
						editable: false,
						//editrules : { required: true}
                		hidden: true
                		
                    },
                   /*  {
						label: 'expense_date',
                        name: 'expense_date',
                        width: 75,
						
						editable: true,
						editrules : { required: true}
                    }, */
                    {
						label: 'expense_date',
                        name: 'expense_date',
                        width: 150,
                        editable: true,
                        edittype:"text",
                        
                        editoptions: {
                            // dataInit is the client-side event that fires upon initializing the toolbar search field for a column
                            // use it to place a third party control to customize the toolbar
                            dataInit: function (element) {
                                $(element).datepicker({
                                    id: 'expense_date_datePicker',
                                   dateFormat: 'yy-MM-dd',
                                    //minDate: new Date(2010, 0, 1),
                                    maxDate: new Date(2020, 0, 1),
                                    showOn: 'focus'
                                });
                            }
                        }
                    },
                    
                    
                    {
						label: 'expense_detail',
                        name: 'expense_detail',
                        width: 140,
                        editable: true // must set editable to true if you want to make the field editable
                    },
                    
                    
                    {
						label: 'expense_cash',
                        name: 'expense_cash',
                        width: 80,
                        editable: true
                    },
                    
                    {
						label: 'expense_card',
                        name: 'expense_card',
                        width: 80,
                        editable: true
                    },
                    
                    {
						 label: 'expense_category',
                       name: 'expense_category',
                       width: 150,
                       editable: true,
                       edittype: "select",
                       editoptions: {
                           value: "식비:식비;술/담배:술/담배;의류:의류;세금:세금;BERGS:BERGS;BLAUS:BLAUS;BLONP:BLONP;BOLID:BOLID;BONAP:BONAP;BOTTM:BOTTM;BSBEV:BSBEV;CACTU:CACTU;CENTC:CENTC;CHOPS:CHOPS;COMMI:COMMI;CONSH:CONSH;DRACD:DRACD;DUMON:DUMON;EASTC:EASTC;ERNSH:ERNSH;FAMIA:FAMIA;FISSA:FISSA;FOLIG:FOLIG;FOLKO:FOLKO;FRANK:FRANK;FRANR:FRANR;FRANS:FRANS;FURIB:FURIB;GALED:GALED;GODOS:GODOS;GOURL:GOURL;GREAL:GREAL;GROSR:GROSR;HANAR:HANAR;HILAA:HILAA;HUNGC:HUNGC;HUNGO:HUNGO;ISLAT:ISLAT;KOENE:KOENE;LACOR:LACOR;LAMAI:LAMAI;LAUGB:LAUGB;LAZYK:LAZYK;LEHMS:LEHMS;LETSS:LETSS;LILAS:LILAS;LINOD:LINOD;LONEP:LONEP;MAGAA:MAGAA;MAISD:MAISD;MEREP:MEREP;MORGK:MORGK;NORTS:NORTS;OCEAN:OCEAN;OLDWO:OLDWO;OTTIK:OTTIK;PARIS:PARIS;PERIC:PERIC;PICCO:PICCO;PRINI:PRINI;QUEDE:QUEDE;QUEEN:QUEEN;QUICK:QUICK;RANCH:RANCH;RATTC:RATTC;REGGC:REGGC;RICAR:RICAR;RICSU:RICSU;ROMEY:ROMEY;SANTG:SANTG;SAVEA:SAVEA;SEVES:SEVES;SIMOB:SIMOB;SPECD:SPECD;SPLIR:SPLIR;SUPRD:SUPRD;THEBI:THEBI;THECR:THECR;TOMSP:TOMSP;TORTU:TORTU;TRADH:TRADH;TRAIH:TRAIH;VAFFE:VAFFE;VICTE:VICTE;VINET:VINET;WANDK:WANDK;WARTH:WARTH;WELLI:WELLI;WHITC:WHITC;WILMK:WILMK;WOLZA:WOLZA"
                       }
                   }
                    
                     
                    
                ],
				sortname: 'expense_date',
				sortorder : 'asc',
				loadonce: true,
				viewrecords: true,
                width: 780,
                height: 200,
                rowNum: 10,
                rownumbers: true,
                //multiselect: true,
                pager: "#jqGridPager"
                
               
            });
            //$('#jqGrid').jqGrid('footerData', 'set', {accountName:'합계', amount:debTotal});  //footer 데이터

            $('#jqGrid').navGrid('#jqGridPager',
                // the buttons to appear on the toolbar of the grid
                { edit: true, add: true, del: true, search: false, refresh: true, view: false, position: "left", cloneToTop: false },
                // options for the Edit Dialog
                {
                    editCaption: "The Edit Dialog",
                    recreateForm: true,
                    
					//checkOnUpdate : true,
					//checkOnSubmit : true,
					
					beforeSubmit : function(postdata, form, oper){
						if( confirm('Are you sure you want to update this row?') ) {
						
							 console.log(postdata);
							 
							return [true,''];
						} else {
							return [false, 'You can not submit!'];
						}
					},
					
					
					
					afterSubmit: function () {
					   	$(this).jqGrid("setGridParam", {datatype: 'json'});
					    //jQuery(this).jqGrid('editGridRow', "new", {datatype: 'json'});
					    return [true];
					},
                    closeAfterEdit: true,
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText
                    }
                },
                // options for the Add Dialog
               
                {
                    addCaption: "The add Dialog",
                    recreateForm: true,
                    
					//checkOnUpdate : true,
					//checkOnSubmit : true,
					
					beforeSubmit : function(postdata, form, oper){
						if( confirm('Are you sure you want to add this row?') ) {
						
							 console.log(postdata);
							 
							return [true,''];
						} else {
							return [false, 'You can not submit!'];
						}
					},
					
					
					
					afterSubmit: function () {
					   	$(this).jqGrid("setGridParam", {datatype: 'json'});
					    //jQuery(this).jqGrid('editGridRow', "new", {datatype: 'json'});
					    return [true];
					},
                    closeAfterAdd:true,
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText
                    }
                },
                
                // options for the Delete Dailog
                  {	 
					url:'deletePocket.do',
					beforeSubmit : function(postdata){
						if( confirm('Are you sure you want to delete this row?') ) {
						
							 console.log(postdata);
							 console.log(typeof(postdata));
							 
							return [true,''];
						} else {
							return [false, 'You can not submit!'];
						}
					},
                		

					/* afterSubmit:function(){
					
					    return [true];
					} */ 
					
                
                });
        });



    </script>

</body>

</html>