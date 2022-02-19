<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="resources/css/mypage.css">
<title>마커 클러스터러 사용하기</title>
<script type="text/javascript" src="resources/jQuery.js"></script>
<script>
	$(function(){
		   $.ajax({
		       url: "place.get", // 1. url자리에 요청 주소
		       success: function(hi){ // 2. 다운 받는데 성공하면
		                            // 콜백함수를 발동
		                      //   alert(hi);
		                      // 3. JavaScript 객체 -> 문자열 그대로 변환이 가능
		        alert(JSON.stringify(hi));
		       }   
		    });	   
	});
	window.onload = function() {

		var chart = new CanvasJS.Chart("chartContainer", {
			animationEnabled : true,
			title : {
				text : "MyData",
			},
			axisX : {
				valueFormatString : "DDD"
			},
			axisY : {
				prefix : "$"
			},
			toolTip : {
				shared : true
			},
			legend : {
				cursor : "pointer",
				itemclick : toggleDataSeries
			},
			data : [ {
				type : "stackedBar",
				name : "음식점",
				showInLegend : "true",
				xValueFormatString : "DD, MMM",
				yValueFormatString : "$#,##0",
				dataPoints : [ {
					x : new Date(2017, 0, 30),
					y : 56
				}, {
					x : new Date(2017, 0, 31),
					y : 45
				}, {
					x : new Date(2017, 1, 1),
					y : 71
				}, {
					x : new Date(2017, 1, 2),
					y : 41
				}, {
					x : new Date(2017, 1, 3),
					y : 60
				}, {
					x : new Date(2017, 1, 4),
					y : 75
				}, {
					x : new Date(2017, 1, 5),
					y : 98
				} ]
			}, {
				type : "stackedBar",
				name : "숙박",
				showInLegend : "true",
				xValueFormatString : "DD, MMM",
				yValueFormatString : "$#,##0",
				dataPoints : [ {
					x : new Date(2017, 0, 30),
					y : 86
				}, {
					x : new Date(2017, 0, 31),
					y : 95
				}, {
					x : new Date(2017, 1, 1),
					y : 71
				}, {
					x : new Date(2017, 1, 2),
					y : 58
				}, {
					x : new Date(2017, 1, 3),
					y : 60
				}, {
					x : new Date(2017, 1, 4),
					y : 65
				}, {
					x : new Date(2017, 1, 5),
					y : 89
				} ]
			}, {
				type : "stackedBar",
				name : "카페",
				showInLegend : "true",
				xValueFormatString : "DD, MMM",
				yValueFormatString : "$#,##0",
				dataPoints : [ {
					x : new Date(2017, 0, 30),
					y : 48
				}, {
					x : new Date(2017, 0, 31),
					y : 45
				}, {
					x : new Date(2017, 1, 1),
					y : 41
				}, {
					x : new Date(2017, 1, 2),
					y : 55
				}, {
					x : new Date(2017, 1, 3),
					y : 80
				}, {
					x : new Date(2017, 1, 4),
					y : 85
				}, {
					x : new Date(2017, 1, 5),
					y : 83
				} ]
			}, {
				type : "stackedBar",
				name : "편의점",
				showInLegend : "true",
				xValueFormatString : "DD, MMM",
				yValueFormatString : "$#,##0",
				dataPoints : [ {
					x : new Date(2017, 0, 30),
					y : 61
				}, {
					x : new Date(2017, 0, 31),
					y : 55
				}, {
					x : new Date(2017, 1, 1),
					y : 61
				}, {
					x : new Date(2017, 1, 2),
					y : 75
				}, {
					x : new Date(2017, 1, 3),
					y : 80
				}, {
					x : new Date(2017, 1, 4),
					y : 85
				}, {
					x : new Date(2017, 1, 5),
					y : 105
				} ]
			}, {
				type : "stackedBar",
				name : "은행",
				showInLegend : "true",
				xValueFormatString : "DD, MMM",
				yValueFormatString : "$#,##0",
				dataPoints : [ {
					x : new Date(2017, 0, 30),
					y : 61
				}, {
					x : new Date(2017, 0, 31),
					y : 55
				}, {
					x : new Date(2017, 1, 1),
					y : 61
				}, {
					x : new Date(2017, 1, 2),
					y : 75
				}, {
					x : new Date(2017, 1, 3),
					y : 80
				}, {
					x : new Date(2017, 1, 4),
					y : 85
				}, {
					x : new Date(2017, 1, 5),
					y : 105
				} ]
			}, {
				type : "stackedBar",
				name : "약국",
				showInLegend : "true",
				xValueFormatString : "DD, MMM",
				yValueFormatString : "$#,##0",
				dataPoints : [ {
					x : new Date(2017, 0, 30),
					y : 61
				}, {
					x : new Date(2017, 0, 31),
					y : 55
				}, {
					x : new Date(2017, 1, 1),
					y : 61
				}, {
					x : new Date(2017, 1, 2),
					y : 75
				}, {
					x : new Date(2017, 1, 3),
					y : 80
				}, {
					x : new Date(2017, 1, 4),
					y : 85
				}, {
					x : new Date(2017, 1, 5),
					y : 105
				} ]
			}, {
				type : "stackedBar",
				name : "지하철역",
				showInLegend : "true",
				xValueFormatString : "DD, MMM",
				yValueFormatString : "$#,##0",
				dataPoints : [ {
					x : new Date(2017, 0, 30),
					y : 52
				}, {
					x : new Date(2017, 0, 31),
					y : 55
				}, {
					x : new Date(2017, 1, 1),
					y : 20
				}, {
					x : new Date(2017, 1, 2),
					y : 35
				}, {
					x : new Date(2017, 1, 3),
					y : 30
				}, {
					x : new Date(2017, 1, 4),
					y : 45
				}, {
					x : new Date(2017, 1, 5),
					y : 25
				} ]
			} ]
		});
		chart.render();

		function toggleDataSeries(e) {
			if (typeof (e.dataSeries.visible) === "undefined"
					|| e.dataSeries.visible) {
				e.dataSeries.visible = false;
			} else {
				e.dataSeries.visible = true;
			}
			chart.render();
		}

	}
</script>
</head>
<body bgcolor="#EAEAEA">
	<div id="mapdivTbl">
		<div id="map" style="width: 800px; height: 740px;"></div>
	</div>
	<script type="text/javascript"
			src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script type="text/javascript"
			src="//dapi.kakao.com/v2/maps/sdk.js?appkey=def3156a82a2d8d7c67b62699af0ff95&libraries=clusterer"></script>
		<script>
			var map = new kakao.maps.Map(document.getElementById('map'), { // 지도를 표시할 div
				center : new kakao.maps.LatLng(36.2683, 127.6358), // 지도의 중심좌표 
				level : 14
			// 지도의 확대 레벨 
			});

			// 마커 클러스터러를 생성합니다 
			var clusterer = new kakao.maps.MarkerClusterer({
				map : map, // 마커들을 클러스터로 관리하고 표시할 지도 객체 
				averageCenter : true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정 
				minLevel : 10
			// 클러스터 할 최소 지도 레벨 
			});

			// 데이터를 가져오기 위해 jQuery를 사용합니다
			// 데이터를 가져와 마커를 생성하고 클러스터러 객체에 넘겨줍니다
			$.get("/main/place.get", function(data) {
				// 데이터에서 좌표 값을 가지고 마커를 표시합니다
				// 마커 클러스터러로 관리할 마커 객체는 생성할 때 지도 객체를 설정하지 않습니다
				var markers = $(data.place).map(
						function(i, position) {
							return new kakao.maps.Marker({
								position : new kakao.maps.LatLng(position.lat,
										position.lng)
							});
						});

				// 클러스터러에 마커들을 추가합니다
				clusterer.addMarkers(markers);
			});
		</script>
	<div id="divTbl">
		<div id="chartContainer"></div>
		<p>
		<p>
		<div id="myProfile">
			<div id="profileContent"></div>
		</div>
	</div>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>