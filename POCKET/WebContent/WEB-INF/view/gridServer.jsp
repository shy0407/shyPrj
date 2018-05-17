<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <!-- The jQuery library is a prerequisite for all jqSuite products -->
    <script src="/grid/js/jquery.min.js"></script> 
    <!-- This is the Javascript file of jqGrid -->   
    <script type="text/ecmascript" src="/grid/js/trirand/jquery.jqGrid.min.js"></script>
    <!-- This is the localization file of the grid controlling messages, labels, etc.
    <!-- We support more than 40 localizations -->
    <script type="text/ecmascript" src="/grid/js/trirand/i18n/grid.locale-en.js"></script>
    <!-- A link to a jQuery UI ThemeRoller theme, more than 22 built-in and many more custom -->
    <link rel="stylesheet" type="text/css" media="screen" href="/grid/css/jquery-ui.css" />
    <!-- The link to the CSS that the grid needs -->
    <link rel="stylesheet" type="text/css" media="screen" href="/grid/css/trirand/ui.jqgrid.css" />
    <meta charset="utf-8" />
    <title>jqGrid Loading Data - Dialogs - Edit, Add, Delete</title>
</head>
<body>

    <table id="jqGrid"></table>
    <div id="jqGridPager"></div>
	<div><input type="button" value="저장" id ="btn"></div>
    <script type="text/javascript">

        $(document).ready(function () {
        
        	
        	
            $("#jqGrid").jqGrid({
                url: 'expense.do',
				// we set the changes to be made at client side using predefined word clientArray
                editurl: 'insertPocket.do',
                datatype: "json",
                	
                colModel: [
                   
                    {
						label: '날짜',
                        name: 'expense_date',
                        width: 140,
                        editable: true // must set editable to true if you want to make the field editable
                    },
                    {
						label : '상세',
                        name: 'expense_detail',
                        width: 100,
                        editable: true
                    },
                    {
						label: '현금',
                        name: 'expense_cash',
                        width: 80,
                        editable: true
                    },
                    {
						label: '카드',
                        name: 'expense_card',
                        width: 140,
                        editable: true
                    },
                    {
						label: '카테고리',
                        name: 'expense_category',
                        width: 140,
                        editable: true
                    }
                ],
				sortname: 'CustomerID',
				sortorder : 'asc',
				loadonce: true,
				viewrecords: true,
                width: 780,
                height: 200,
                rowNum: 10,
                pager: "#jqGridPager"
            });

            $('#jqGrid').navGrid('#jqGridPager',
                // the buttons to appear on the toolbar of the grid
                { edit: true, add: true, del: true, search: false, refresh: false, view: false, position: "left", cloneToTop: false },
                // options for the Edit Dialog
                {
                    editCaption: "The Edit Dialog",
                    recreateForm: true,
					//checkOnUpdate : true,
					//checkOnSubmit : true,
					beforeSubmit : function( postdata, form , oper) {
						if( confirm('Are you sure you want to update this row?') ) {
							// do something
							
							return [true,''];
							
						} else {
							return [false, 'You can not submit!'];
						}
					},
			
                    closeAfterEdit: true,
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText
                    }
                },
                // options for the Add Dialog
                {
                    closeAfterAdd: true,
                    recreateForm: true,
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText
                    }
                },
                // options for the Delete Dailog
                {
                    errorTextFormat: function (data) {
                        return 'Error: ' + data.responseText
                    }
                });
            
            
        		/* $('#btn').click(function(){
        			var rodwdatas=$('#jqGrid').jqGrid('getRowData');
        			console.log(rowdatas);
        			 
        			$(this).ajaxSubmit({
                         type: 'post',
                         dataType:'json',
                         url:'save_local_array.php',
                         data:{
                             langArray:[] //leave as empty array here
                         },
                         beforeSubmit: function(arr, $form, options){
                             options.langArray = $('#data1').jqGrid('getRowData'); //current
                             console.log(JSON.stringify(options.langArray));
                             // return false; // here to prevent submit
                         },
                         success: function(){
                             // add routine here when success
                         }
                     });
        			
        		}); */
        		
        		  $("#btn").click(function(){
                	  //var rdata=$('#jqGrid').jqGrid.getRowData();
                	  var rowDatas =$("#jqGrid").jqGrid('getRowData');
                	  var jsonStr = JSON.stringify(rowDatas);
                	  	
                	  console.log(jsonStr);
                	  console.log(typeof(jsonStr));
                	
                	  
                	  $.ajax({
                	        type: "POST",
                	        url: "insertPocket.do",
                	        data: JSON.stringify(rowDatas),        	       
                	        dataType:"json",
                	        contentType: "application/json; charset=utf-8",
                	        success: function(data) {
                	            //alert("success");
                	            console.log(data);
                	        },
                	        error: function(xhr, textStatus, errorThrown) {
                	            alert("error");
                	            console.log(xhr);
                	            
                	        }
                	    });
        		
        		
        		  });
           
        });
      
        

    </script>

    
</body>
</html>