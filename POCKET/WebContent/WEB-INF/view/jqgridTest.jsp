<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<link rel="stylesheet" type="text/css" media="screen" href="/jqgrid/css/jquery-ui.css" />
<!-- <link rel="stylesheet" type="text/css" media="screen" href="/jqgrid/css/jquery-ui.theme.css" />
<link rel="stylesheet" type="text/css" media="screen" href="/jqgrid/css/jquery-ui.structure.css" /> -->
<link rel="stylesheet" type="text/css" media="screen" href="/jqgrid/css/ui.jqgrid.css" />
<script src="/jqgrid/js/jquery-1.7.2.min.js"></script>

<script src="/jqgrid/js/jquery-ui.min.js"></script>
<script src="/jqgrid/js/i18n/grid.locale-kr.js"></script>
<script src="/jqgrid/js/jquery.jqGrid.min.js"></script>
<script>
$(document).ready(function(){
	  $.ajax({
			url : "expense.do",
			method : "POST",
		    success:function(data){
		    	 jQuery("#list4").jqGrid({
		    	 	datatype: "json",
		    	 	pager:true,
		    	 	height: 250,
		    	    	colNames:['pocket_no','expense_date', 'expense_detail', 'expense_cash','expense_card','expense_category'],
		    	    	colModel:[
									{name:'pocket_no', index:'pocket_no', width:55},
		    		          		{name:'expense_date', index:'expense_date', width:90},
		    		           		{name:'expense_detail', index:'expense_detail asc, invdate', width:100},
		    		           		{name:'expense_cash', index:'expense_cash', width:80, align:"right"},
									{name:'expense_card', index:'expense_card', width:80, align:"right"},	
		    		           		{name:'expense_category', index:'expense_category', width:80, align:"right"}
		    	    			],

		    	    		jsonReader: {
		    	                 repeatitems:false,
		    	                 multiselect: true,
		 		    	    	 caption: "Manipulating Array Data"
		    	    		}
		    	    		
				    	 
		    	 });
		    	
		    	
		    	 for(var i=0;i<=data.length;i++)
		    			jQuery("#list4").addRowData(i+1,data[i]);

		    	 
		        

		    	 
		    }
		    	
		});   
	  
	  
	  
		  
		}); 
		
		
		
		
		

		
		
		
		

</script>





<title>Insert title here</title>
</head>
<body>
<div><table id="list4"></table></div>
<div id="pager"></div>

</body>
</html>