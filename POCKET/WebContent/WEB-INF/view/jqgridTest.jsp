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
    <script type="text/ecmascript" src="/grid/js/trirand/i18n/grid.locale-kr.js"></script>
    <!-- A link to a jQuery UI ThemeRoller theme, more than 22 built-in and many more custom -->
    <link rel="stylesheet" type="text/css" media="screen" href="/grid/css/jquery-ui.css" />
    <!-- The link to the CSS that the grid needs -->
    <link rel="stylesheet" type="text/css" media="screen" href="/grid/css/trirand/ui.jqgrid.css" />
    <meta charset="utf-8" />
   <style type="text/css">

        /* set the size of the datepicker search control for Order Date*/
        #ui-datepicker-div { font-size:11px; }
        
        .ui-autocomplete { font-size: 11px; position: absolute; cursor: default;z-index:5000 !important;}      
        

    </style> 
    
    <title>jqGrid Loading Data - Dialogs - Edit, Add, Delete</title>
</head>
<body>
	 



    <table id="jqGrid"></table>
    <div id="jqGridPager"></div>
   
    
	<script type="text/ecmascript" src="/grid/js/jquery-ui.min.js"></script>
    <script type="text/javascript">

        $(document).ready(function () {
        	// KR language callendar
        	$.datepicker.regional['kr'] = {
        	    closeText: 'close', // 닫기 버튼 텍스트 변경
        	    currentText: '오늘', // 오늘 텍스트 변경
        	    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], // 개월 텍스트 설정
        	    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'], // 개월 텍스트 설정
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
                                   dateFormat: 'yy/MM/dd',
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
                        width: 150,
                        editable: true,
                        edittype: "select",
                        editoptions: {
                            value: "ALFKI:ALFKI;ANATR:ANATR;ANTON:ANTON;AROUT:AROUT;BERGS:BERGS;BLAUS:BLAUS;BLONP:BLONP;BOLID:BOLID;BONAP:BONAP;BOTTM:BOTTM;BSBEV:BSBEV;CACTU:CACTU;CENTC:CENTC;CHOPS:CHOPS;COMMI:COMMI;CONSH:CONSH;DRACD:DRACD;DUMON:DUMON;EASTC:EASTC;ERNSH:ERNSH;FAMIA:FAMIA;FISSA:FISSA;FOLIG:FOLIG;FOLKO:FOLKO;FRANK:FRANK;FRANR:FRANR;FRANS:FRANS;FURIB:FURIB;GALED:GALED;GODOS:GODOS;GOURL:GOURL;GREAL:GREAL;GROSR:GROSR;HANAR:HANAR;HILAA:HILAA;HUNGC:HUNGC;HUNGO:HUNGO;ISLAT:ISLAT;KOENE:KOENE;LACOR:LACOR;LAMAI:LAMAI;LAUGB:LAUGB;LAZYK:LAZYK;LEHMS:LEHMS;LETSS:LETSS;LILAS:LILAS;LINOD:LINOD;LONEP:LONEP;MAGAA:MAGAA;MAISD:MAISD;MEREP:MEREP;MORGK:MORGK;NORTS:NORTS;OCEAN:OCEAN;OLDWO:OLDWO;OTTIK:OTTIK;PARIS:PARIS;PERIC:PERIC;PICCO:PICCO;PRINI:PRINI;QUEDE:QUEDE;QUEEN:QUEEN;QUICK:QUICK;RANCH:RANCH;RATTC:RATTC;REGGC:REGGC;RICAR:RICAR;RICSU:RICSU;ROMEY:ROMEY;SANTG:SANTG;SAVEA:SAVEA;SEVES:SEVES;SIMOB:SIMOB;SPECD:SPECD;SPLIR:SPLIR;SUPRD:SUPRD;THEBI:THEBI;THECR:THECR;TOMSP:TOMSP;TORTU:TORTU;TRADH:TRADH;TRAIH:TRAIH;VAFFE:VAFFE;VICTE:VICTE;VINET:VINET;WANDK:WANDK;WARTH:WARTH;WELLI:WELLI;WHITC:WHITC;WILMK:WILMK;WOLZA:WOLZA"
                        }
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
                //multiselect: true,
                pager: "#jqGridPager"
                
               
            });

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
