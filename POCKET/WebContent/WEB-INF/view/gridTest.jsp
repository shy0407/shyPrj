<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <!-- The jQuery library is a prerequisite for all jqSuite products -->
    <script type="text/ecmascript" src="/grid/js/jquery.min.js"></script> 
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

    <script type="text/javascript">

        $(document).ready(function () {
            $("#jqGrid").jqGrid({
                url: 'expense.do',
				// we set the changes to be made at client side using predefined word clientArray
                postData:{pocket_no:'pocket_no'},
				editurl: 'insertPocket.do',
                datatype: "json",
                colModel: [
                	{
						label: 'pocket_no',
                        name: 'pocket_no',
                        width: 75,
						key: true,
						editable: false,
						//editrules : { required: true}
                		hidedlg: true
                		
                    },
                    {
						label: 'expense_date',
                        name: 'expense_date',
                        width: 75,
						
						editable: true,
						editrules : { required: true}
                    },
                    {
						label: 'expense_detail',
                        name: 'expense_detail',
                        width: 140,
                        editable: true // must set editable to true if you want to make the field editable
                    },
                    {
						label : 'expense_cash',
                        name: 'expense_cash',
                        width: 100,
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
                        width: 140,
                        editable: true
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
					beforeSubmit : function(postdata,form,oper) {
						if( confirm('Are you sure you want to update this row?') ) {
							// do something
							/*  console.log(postdata);
							 console.log(form);
							 console.log(typeof(postdata)); */
							
							 //console.log(rowKey);
							return [true,''];
						} else {
							return [false, 'You can not submit!'];
						}
					},
					afterSubmit: function () {
					    $(this).jqGrid("setGridParam", {datatype: 'json'});
					    return [true];
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
        });



    </script>

    
</body>
</html>