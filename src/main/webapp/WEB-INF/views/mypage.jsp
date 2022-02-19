<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="resources/css/mypage.css">
<title>마커 클러스터러 사용하기</title>
<script>
	window.onload = function() {
		$(function() {

			//data_Points 담을 카테고리별 배열
			let arr_food = []; let arr_hotel = []; let arr_cafe = [];
			let arr_convstore = []; let arr_bank = []; let arr_pharmacy = [];
			let arr_subway = [];

			//요일별 food
			let mon_foodcnt = 0; let tue_foodcnt = 0; let wed_foodcnt = 0;
			let thur_foodcnt = 0; let fri_foodcnt = 0; let sat_foodcnt = 0;
			let sun_foodcnt = 0;
			//요일별 hotel
			let mon_hotelcnt = 0; let tue_hotelcnt = 0; let wed_hotelcnt = 0;
			let thur_hotelcnt = 0; let fri_hotelcnt = 0; let sat_hotelcnt = 0;
			let sun_hotelcnt = 0;
			//요일별 cafe
			let mon_cafecnt = 0; let tue_cafecnt = 0; let wed_cafecnt = 0;
			let thur_cafecnt = 0; let fri_cafecnt = 0; let sat_cafecnt = 0;
			let sun_cafecnt = 0;
			//요일별 convstore
			let mon_convstorecnt = 0; let tue_convstorecnt = 0; let wed_convstorecnt = 0;
			let thur_convstorecnt = 0; let fri_convstorecnt = 0; let sat_convstorecnt = 0;
			let sun_convstorecnt = 0;
			//요일별 bank
			let mon_bankcnt = 0; let tue_bankcnt = 0; let wed_bankcnt = 0;
			let thur_bankcnt = 0; let fri_bankcnt = 0; let sat_bankcnt = 0;
			let sun_bankcnt = 0;
			//요일별 pharmacy
			let mon_pharmacycnt = 0; let tue_pharmacycnt = 0; let wed_pharmacycnt = 0;
			let thur_pharmacycnt = 0; let fri_pharmacycnt = 0; let sat_pharmacycnt = 0;
			let sun_pharmacycnt = 0;
			//요일별 subway
			let mon_subwaycnt = 0; let tue_subwaycnt = 0; let wed_subwaycnt = 0;
			let thur_subwaycnt = 0; let fri_subwaycnt = 0; let sat_subwaycnt = 0;
			let sun_subwaycnt = 0;
			$.getJSON("place.get",function(a) {
				//alert(JSON.stringify(a))
				$.each(a.place,function(i, p) {
					//=====요일_카테고리별 상황 분류=====
					if ((p.day) == ("MONDAY")) {
						if ((p.category) == ("food")) {
							mon_foodcnt += 1;
						} else if ((p.category) == ("hotel")) {
							mon_hotelcnt += 1;
						} else if ((p.category) == ("cafe")) {
							mon_cafecnt += 1;
						} else if ((p.category) == ("convstore")) {
							mon_convstore += 1;
						} else if ((p.category) == ("bank")) {
							mon_bankcnt += 1;
						} else if ((p.category) == ("pharmacy")) {
							mon_pharmacycnt += 1;
						} else if ((p.category) == ("subway")) {
							mon_subwaycnt += 1;
						}
					} else if ((p.day) == ("TUESDAY")) {
						if ((p.category) == ("food")) {
							tue_foodcnt += 1;
						} else if ((p.category) == ("hotel")) {
							tue_hotelcnt += 1;
						} else if ((p.category) == ("cafe")) {
							tue_cafecnt += 1;
						} else if ((p.category) == ("convstore")) {
							tue_convstorecnt += 1;
						} else if ((p.category) == ("bank")) {
							tue_bankcnt += 1;
						} else if ((p.category) == ("pharmacy")) {
							tue_pharmacycnt += 1;
						} else if ((p.category) == ("subway")) {
							tue_subwaycnt += 1;
						}
					} else if ((p.day) == ("WEDNESDAY")) {
						if ((p.category) == ("food")) {
							wed_foodcnt += 1;
						} else if ((p.category) == ("hotel")) {
							wed_hotelcnt += 1;
						} else if ((p.category) == ("cafe")) {
							wed_cafecnt += 1;
						} else if ((p.category) == ("convstore")) {
							wed_convstorecnt += 1;
						} else if ((p.category) == ("bank")) {
							wed_bankcnt += 1;
						} else if ((p.category) == ("pharmacy")) {
							wed_pharmacycnt += 1;
						} else if ((p.category) == ("subway")) {
							wed_subwaycnt += 1;
						}
					} else if ((p.day) == ("THURSDAY")) {
						if ((p.category) == ("food")) {
							thur_foodcnt += 1;
						} else if ((p.category) == ("hotel")) {
							thur_hotelcnt += 1;
						} else if ((p.category) == ("cafe")) {
							thur_cafecnt += 1;
						} else if ((p.category) == ("convstore")) {
							thur_convstorecnt += 1;
						} else if ((p.category) == ("bank")) {
							thur_bankcnt += 1;
						} else if ((p.category) == ("pharmacy")) {
							thur_pharmacycnt += 1;
						} else if ((p.category) == ("subway")) {
							thur_subwaycnt += 1;
						}
					} else if ((p.day) == ("FRIDAY")) {
						if ((p.category) == ("food")) {
							fri_foodcnt += 1;
						} else if ((p.category) == ("hotel")) {
							fri_hotelcnt += 1;
						} else if ((p.category) == ("cafe")) {
							fri_cafecnt += 1;
						} else if ((p.category) == ("convstore")) {
							fri_convstorecnt += 1;
						} else if ((p.category) == ("bank")) {
							fri_bankcnt += 1;
						} else if ((p.category) == ("pharmacy")) {
							fri_pharmacycnt += 1;
						} else if ((p.category) == ("subway")) {
							fri_subwaycnt += 1;
						}
					} else if ((p.day) == ("SATURDAY")) {
						if ((p.category) == ("food")) {
							sat_foodcnt += 1;
						} else if ((p.category) == ("hotel")) {
							sat_hotelcnt += 1;
						} else if ((p.category) == ("cafe")) {
							sat_cafecnt += 1;
						} else if ((p.category) == ("convstore")) {
							sat_convstorecnt += 1;
						} else if ((p.category) == ("bank")) {
							sat_bankcnt += 1;
						} else if ((p.category) == ("pharmacy")) {
							sat_pharmacycnt += 1;
						} else if ((p.category) == ("subway")) {
							sat_subwaycnt += 1;
						}
					} else if ((p.day) == ("SUNDAY")) {
						if ((p.category) == ("food")) {
							sun_foodcnt += 1;
						} else if ((p.category) == ("hotel")) {
							sun_hotelcnt += 1;
						} else if ((p.category) == ("cafe")) {
							sun_cafecnt += 1;
						} else if ((p.category) == ("convstore")) {
							sun_convstorecnt += 1;
						} else if ((p.category) == ("bank")) {
							sun_bankcnt += 1;
						} else if ((p.category) == ("pharmacy")) {
							sun_pharmacycnt += 1;
						} else if ((p.category) == ("subway")) {
							sun_subwaycnt += 1;
						}
					}
				});
				//alert(wed_foodcnt);

				//=====data_Points 입력=====
				//food
				arr_food[0] = { y: mon_foodcnt, label: "MONDAY"},
				arr_food[1] = { y: tue_foodcnt, label: "TUESDAY"},
				arr_food[2] = { y: wed_foodcnt, label: "WEDNESDAY"},
				arr_food[3] = { y: thur_foodcnt, label: "THURSDAY"},
				arr_food[4] = { y: fri_foodcnt, label: "FRIDAY"},
				arr_food[5] = { y: sat_foodcnt, label: "SATURDAY"},
				arr_food[6] = { y: sun_foodcnt, label: "SUNDAY"},
				//hotel
				arr_hotel[0] = { y: mon_hotelcnt, label: "MONDAY"},
				arr_hotel[1] = { y: tue_hotelcnt, label: "TUESDAY"},
				arr_hotel[2] = { y: wed_hotelcnt, label: "WEDNESDAY"},
				arr_hotel[3] = { y: thur_hotelcnt, label: "THURSDAY"},
				arr_hotel[4] = { y: fri_hotelcnt, label: "FRIDAY"},
				arr_hotel[5] = { y: sat_hotelcnt, label: "SATURDAY"},
				arr_hotel[6] = { y: sun_hotelcnt, label: "SUNDAY"},
				//cafe
				arr_cafe[0] = { y: mon_cafecnt, label: "MONDAY"},
				arr_cafe[1] = { y: tue_cafecnt, label: "TUESDAY"},
				arr_cafe[2] = { y: wed_cafecnt, label: "WEDNESDAY"},
				arr_cafe[3] = { y: thur_cafecnt, label: "THURSDAY"},
				arr_cafe[4] = { y: fri_cafecnt, label: "FRIDAY"},
				arr_cafe[5] = { y: sat_cafecnt, label: "SATURDAY"},
				arr_cafe[6] = { y: sun_cafecnt, label: "SUNDAY"},
				//convstore
				arr_convstore[0] = { y: mon_convstorecnt, label: "MONDAY"},
				arr_convstore[1] = { y: tue_convstorecnt, label: "TUESDAY"},
				arr_convstore[2] = { y: wed_convstorecnt, label: "WEDNESDAY"},
				arr_convstore[3] = { y: thur_convstorecnt, label: "THURSDAY"},
				arr_convstore[4] = { y: fri_convstorecnt, label: "FRIDAY"},
				arr_convstore[5] = { y: sat_convstorecnt, label: "SATURDAY"},
				arr_convstore[6] = { y: sun_convstorecnt, label: "SUNDAY"},
				//bank
				arr_bank[0] = { y: mon_bankcnt, label: "MONDAY"},
				arr_bank[1] = { y: tue_bankcnt, label: "TUESDAY"},
				arr_bank[2] = { y: wed_bankcnt, label: "WEDNESDAY"},
				arr_bank[3] = { y: thur_bankcnt, label: "THURSDAY"},
				arr_bank[4] = { y: fri_bankcnt, label: "FRIDAY"},
				arr_bank[5] = { y: sat_bankcnt, label: "SATURDAY"},
				arr_bank[6] = { y: sun_bankcnt, label: "SUNDAY"},
				//pharmacy
				arr_pharmacy[0] = { y: mon_pharmacycnt, label: "MONDAY"},
				arr_pharmacy[1] = { y: tue_pharmacycnt, label: "TUESDAY"},
				arr_pharmacy[2] = { y: wed_pharmacycnt, label: "WEDNESDAY"},
				arr_pharmacy[3] = { y: thur_pharmacycnt, label: "THURSDAY"},
				arr_pharmacy[4] = { y: fri_pharmacycnt, label: "FRIDAY"},
				arr_pharmacy[5] = { y: sat_pharmacycnt, label: "SATURDAY"},
				arr_pharmacy[6] = { y: sun_pharmacycnt, label: "SUNDAY"},
				//subway
				arr_subway[0] = { y: mon_subwaycnt, label: "MONDAY"},
				arr_subway[1] = { y: tue_subwaycnt, label: "TUESDAY"},
				arr_subway[2] = { y: wed_subwaycnt, label: "WEDNESDAY"},
				arr_subway[3] = { y: thur_subwaycnt, label: "THURSDAY"},
				arr_subway[4] = { y: fri_subwaycnt, label: "FRIDAY"},
				arr_subway[5] = { y: sat_subwaycnt, label: "SATURDAY"},
				arr_subway[6] = { y: sun_subwaycnt, label: "SUNDAY"}
			
				var chart = new CanvasJS.Chart("chartContainer", {
					animationEnabled : true,
					backgroundColor : "#EAEAEA",
					theme : "light2", //"light1", "dark1", "dark2"
					title : {
						text : "MY DATA"
					},
					axisY : {
						interval : 10,
						suffix : "%"
					},
					toolTip : {
						shared : true
					},
					//let arr_food = [];
					//let arr_hotel = [];
					//let arr_cafe = [];
					//let arr_convstore = [];
					//let arr_bank = [];
					//let arr_pharmacy = [];
					//let arr_subway = [];
					data : [{
								type : "stackedBar100",
								toolTipContent : "{label}<br><b>{name}:</b> {y} (#percent%)",
								showInLegend : true,
								name : "FOOD",
								dataPoints : arr_food
							},
							{
								type : "stackedBar100",
								toolTipContent : "<b>{name}:</b> {y} (#percent%)",
								showInLegend : true,
								name : "HOTEL",
								dataPoints : arr_hotel
							},
							{
								type : "stackedBar100",
								toolTipContent : "<b>{name}:</b> {y} (#percent%)",
								showInLegend : true,
								name : "CAFE",
								dataPoints : arr_cafe
							},
							{
								type : "stackedBar100",
								toolTipContent : "<b>{name}:</b> {y} (#percent%)",
								showInLegend : true,
								name : "CONVSTORE",
								dataPoints : arr_convstore
							},
							{
								type : "stackedBar100",
								toolTipContent : "<b>{name}:</b> {y} (#percent%)",
								showInLegend : true,
								name : "BANK",
								dataPoints : arr_bank
							},
							{
								type : "stackedBar100",
								toolTipContent : "<b>{name}:</b> {y} (#percent%)",
								showInLegend : true,
								name : "PHARMACY",
								dataPoints : arr_pharmacy
							},
							{
								type : "stackedBar100",
								toolTipContent : "<b>{name}:</b> {y} (#percent%)",
								showInLegend : true,
								name : "SUBWAY",
								dataPoints : arr_subway
							}]
						});
				chart.render();
			});
		});
	}
</script>
</head>
<body bgcolor="#EAEAEA">
	<table width="20%" height="50px" align="center">
		<tr>
			<td align="center">
				<form action="">
					<button class="hbt" style="float: center;">
						<img class="categorybt1" src="resources/category/dust.png"
							onmouseover="this.src='resources/category/dust1.png'"
							onmouseout="this.src='resources/category/dust.png'">
					</button>
				</form>
			</td>
			<td align="center">
				<form action="">
					<button class="hbt" style="float: center;">
						<img class="categorybt1" src="resources/category/cloud.png"
							onmouseover="this.src='resources/category/cloud1.png'"
							onmouseout="this.src='resources/category/cloud.png'">
					</button>
				</form>
			</td>
			<td align="center">
				<form action="heartpage" method="GET">
					<button class="hbt" style="float: center;">
						<img class="categorybt" src="resources/category/heart.png"
							onmouseover="this.src='resources/category/heart1.png'"
							onmouseout="this.src='resources/category/heart.png'">
					</button>
				</form>
			</td>
			<td align="center">
				<form action="goHomepage" method="GET">
					<button class="hbt" style="float: center;">
						<img class="categorybt" src="resources/category/home1.png"
							onmouseover="this.src='resources/category/home2.png'"
							onmouseout="this.src='resources/category/home1.png'">
					</button>
				</form>
			</td>
		</tr>
	</table>
	<div id="mapdivTbl">
		<div id="map" style="width: 800px; height: 770px;"></div>
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
	</div>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>