<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<script>
var parent=[];
var num=[];

	$(function(){
		
		
		//3단계
		$.ajax({
			
			url:"apiData.do",
			dataType:"json",
			method:"GET",
			async: false,
			success:function(data){
				//console.log(data);
				
				$.each(data, function(key,value) {
				
				});
				
			},
			error:function(xhr, status, err){
				console.log(xhr);
				console.log(status);	
				console.log(err);
			}
			
			
			
			
		});
	//2단계
	
	
	$.ajax({
			
			url:"apiData2.do",
			dataType:"json",
			method:"GET",
			async: false,
			success:function(data){
				console.log(data);
				
				$.each(data, function(key,value) {
					$.each(value,function(key1,value1){
						
						
					});
					
					parent.push(value.C2_NM);
					num.push(parseInt(value.DT));
					
					
					
				});
				console.log(parent);
				console.log(num);
				console.log(typeof(num[1]));
				
				
			},
			error:function(xhr, status, err){
				console.log(xhr);
				console.log(status);	
				console.log(err);
			}
			
			
			
		});
		
		
	});
	
	google.charts.load('current', {'packages':['treemap']});
    google.charts.setOnLoadCallback(drawChart);
    function drawChart() {
      var data = google.visualization.arrayToDataTable([
        ['ITEM', 'Parent', 'size'],
        ['품목별지출',null,0],
        [parent[0],'품목별지출',0], //식료퓸
        [parent[12],'품목별지출',0], //주거
        /* [parent[16],'품목별지출',0], //광열 수도
        [parent[21],'품목별지출',0], //가구집기가사
        [parent[29],'품목별지출',0], //의류 및 신발
        [parent[37],'품목별지출',0], //보건의료
        [parent[41],'품목별지출',0], //교육
        [parent[55],'품목별지출',0], //기타소비
        [parent[60],'품목별지출',0], //비소비 */
        
        [parent[1],parent[0],num[1]],
        [parent[2],parent[0],num[2]],
        [parent[3],parent[0],num[3]],
        [parent[4],parent[0],num[4]],
        [parent[5],parent[0],num[5]],
        [parent[6],parent[0],num[6]],
        [parent[7],parent[0],num[7]],
        [parent[8],parent[0],num[8]],
        [parent[9],parent[0],num[9]],
        [parent[10],parent[0],num[10]],
        [parent[11],parent[0],num[11]],  //식료품 끝
       
        [parent[13],parent[12],num[13]],
        [parent[14],parent[12],num[14]],
        [parent[15],parent[12],num[15]]  //주거끝
        
       
        
		     
      ]);

      tree = new google.visualization.TreeMap(document.getElementById('chart_div'));

      tree.draw(data, {
        minColor: '#33ccff',
        midColor: '#ffff99',
        maxColor: '#ff99cc',
        headerHeight: 15,
        fontColor: 'black',
        showScale: true
      });

    }



</script>


    
</head>
<body>
<div id="chart_div" style="width: 900px; height: 500px;"></div>
</body>
</html>