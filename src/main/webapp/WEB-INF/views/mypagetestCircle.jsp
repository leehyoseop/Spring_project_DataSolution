<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/jQuery.js"></script>
<script>
window.onload = function () {
	$(function(){
		let arr = [];
		let food_cnt=0;
		$.getJSON("place.get", function(a){
			alert(JSON.stringify(a))
			$.each(a.place, function(i,p){
				//console.log(typeof(p.day));
				//if((p.day)==("WEDNESDAY")){
					//alert(p.day);						
				//}
				//alert(p.category)
				if((p.category) == ("food")){
					food_cnt+=1;
				}
				//arr[i] = {
				//	y:food_cnt, label:food
				//}
			});
			//for (var i = 0; i < data.length; i++) {
			//	dataPoints.push({
			//		x: new Date(data[i].date),
			//		y: data[i].units
			//	});
			//}
			alert(food_cnt);
			arr[0] = { 
				y: food_cnt, label: "food" 
			},
			arr[1] = { 
				y: 65, label: "bank" 
			},
			arr[2] = { 
				y: 50, label : "cafe" 
			}
			var chart = new CanvasJS.Chart("chartContainer", {
				animationEnabled: true,
				title:{
					text: "[TT VALUE] MY DATA",
					horizontalAlign: "left"
				},
				data: [{
					type: "doughnut",
					startAngle: 60,
					//innerRadius: 60,
					indexLabelFontSize: 17,
					indexLabel: "{label} - #percent%",
					toolTipContent: "<b>{label}:</b> {y} (#percent%)",
					dataPoints: arr
					//dataPoints: [
					//	{ y: 67, label: "Inbox" },
					//	{ y: 28, label: "Archives" },
					//	{ y: 10, label: "Labels" },
					//	{ y: 7, label: "Drafts"},
					//	{ y: 15, label: "Trash"},
					//	{ y: 6, label: "Spam"}
					//]
				}]
			});
			chart.render();
		});
	});
	//for (var i = 0; i < data.length; i++) {
	//	dataPoints.push({
	//		x: new Date(data[i].date),
	//		y: data[i].units
	//	});
	//}
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>