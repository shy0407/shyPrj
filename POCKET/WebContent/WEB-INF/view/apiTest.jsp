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
		
		
		//3�ܰ�
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
	//2�ܰ�
	
	
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
        ['ǰ������',null,0],
        [parent[0],'ǰ������',0], //�ķ�Ǿ
        [parent[12],'ǰ������',0], //�ְ�
        /* [parent[16],'ǰ������',0], //���� ����
        [parent[21],'ǰ������',0], //�������Ⱑ��
        [parent[29],'ǰ������',0], //�Ƿ� �� �Ź�
        [parent[37],'ǰ������',0], //�����Ƿ�
        [parent[41],'ǰ������',0], //����
        [parent[55],'ǰ������',0], //��Ÿ�Һ�
        [parent[60],'ǰ������',0], //��Һ� */
        
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
        [parent[11],parent[0],num[11]],  //�ķ�ǰ ��
       
        [parent[13],parent[12],num[13]],
        [parent[14],parent[12],num[14]],
        [parent[15],parent[12],num[15]]  //�ְų�
        
       
        
		     
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