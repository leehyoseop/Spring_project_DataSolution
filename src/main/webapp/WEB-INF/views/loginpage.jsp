<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/loginpage.css">
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
	$(function() {
		let tVisible = false;
		$("#tHandle").click(function() {
			if (!tVisible) {
				$("#loginTbl").css("right", "0px");
			} else {
				$("#loginTbl").css("right", "-211px");
			}
			tVisible = !tVisible;
		});
	});
</script>
</head>
<body bgcolor="#0F0F0F">
	<table id="loginTbl" width="300px" height="140px">
		<tr>
			<td id="loginIcon" rowspan="3" valign="top" align="right">
				<button>
					<img id="tHandle" alt="" src="resources/img/unlock.png"
						width="30px" height="30px">
				</button>
			</td>
		</tr>
		<tr>
			<td id="loginTd" align="left"
				style="color: white; font-family: SBugroB;">
				<h1>ෆ ${sessionScope.loginMember.m_name }님 ෆ</h1> 
				<h1>반갑습니다</h1>
				<form action="logoutfunc">
					<button class="outbt" style="">logout</button>
				</form>
			</td>
		</tr>
	</table>
	<table id="totalTbl" width="1800px" height="800px" bgcolor="#0F0F0F">
		<tr>
			<td>
				<div id="content">
					<h2>${sessionScope.loginMember.m_name }님! 선택할 프로필을 선택하세요.</h2>
				</div>
				<form action="Foodsearch" method="GET" class="icon1">
					<button style="background-color: red;">
						<img alt="" src="resources/img/food.png" width="100px"
							height="100px">
					</button>
					<h3>음식점</h3>
				</form>

				<form action="Hotelsearch" method="GET" class="icon2">
					<button style="background-color: blue;">
						<img alt="" src="resources/img/hotel.png" width="100px"
							height="100px">
					</button>
					<h3>숙박</h3>
				</form>

				<form action="Cafesearch" method="GET" class="icon3">
					<button style="background-color: green;">
						<img alt="" src="resources/img/coffee.png" width="100px"
							height="100px">
					</button>
					<h3>카페</h3>
				</form>

				<form action="Convstoresearch" method="GET" class="icon4">
					<button style="background-color: #FFE400;">
						<img alt="" src="resources/img/shop.png" width="100px"
							height="100px">
					</button>
					<h3>편의점</h3>
				</form>

				<form action="Banksearch" method="GET" class="icon5">
					<button style="background-color: orange;">
						<img alt="" src="resources/img/bank.png" width="100px"
							height="100px">
					</button>
					<h3>은행</h3>
				</form>

				<form action="Pharmacysearch" method="GET" class="icon6">
					<button style="background-color: purple;">
						<img alt="" src="resources/img/drugstore.png" width="100px"
							height="100px">
					</button>
					<h3>약국</h3>
				</form>

				<form action="Subwaysearch" method="GET" class="icon7">
					<button style="background-color: pink;">
						<img alt="" src="resources/img/subway.png" width="100px"
							height="100px">
					</button>
					<h3>지하철역</h3>
				</form>
				<form action="Mypagesearch" method="GET" class="icon8">
					<button style="background-color: #EAEAEA;">
						<img alt="" src="resources/img/home.png" width="100px"
							height="100px">
					</button>
					<h3>마이페이지</h3>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>