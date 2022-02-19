<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/mainpage.css">
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
	$(function() {
		let tVisible = true;
		$("#tHandle").click(function() {
			if (!tVisible) {
				$("#loginTbl").css("right", "0px");
			} else {
				$("#loginTbl").css("right", "-248px");
			}
			tVisible = !tVisible;
		});
	});
</script>
</head>
<body bgcolor="#0F0F0F">
	<table id="loginTbl" width="300px" height="230px">
		<tr>
			<td id="loginIcon" rowspan="3" valign="top" align="right">
				<button>
					<img id="tHandle" alt="" src="resources/img/lock.png" width="30px"
						height="30px">
				</button>
			</td>
			<td id="login" height="40px">
				<h1>로그인</h1>
			</td>
		</tr>
		<tr>
			<td id="loginTd" align="left"
				style="color: white; font-family: SBugroB;">
				<form action="loginfunc" method="GET">
					&nbsp;&nbsp;&nbsp;&nbsp;ID&nbsp; <input class="id" name="m_id"
						autocomplete="off" placeholder="ID" size="15"
						style="color: #353535;">
					<p>
						&nbsp;&nbsp;&nbsp;PW <input class="pw" name="m_pw"
							autocomplete="off" type="password" placeholder="Password"
							size="15" style="color: #353535;">
					<p>
						<button class="lbt" style="float: left; margin-left: 40px;">Login</button>
				</form>
				<form action="signup">
					<button class="sgbt" style="float: right; margin-right: 30px;">Sign
						Up</button>
				</form>
			</td>
		</tr>
	</table>
	<table id="totalTbl" width="1800px" height="800px" bgcolor="#0F0F0F">
		<tr>
			<td>
				<div id="content">
					<h2>고객님! 선택할 프로필을 선택하세요.</h2>
				</div>
				<form action="NotloginFood" method="GET" class="icon1">
					<button style="background-color: red;">
						<img alt="" src="resources/img/food.png" width="100px"
							height="100px">
					</button>
					<h3>음식점</h3>
				</form>

				<form action="NotloginHotel" method="GET" class="icon2">
					<button style="background-color: blue;">
						<img alt="" src="resources/img/hotel.png" width="100px"
							height="100px">
					</button>
					<h3>숙박</h3>
				</form>

				<form action="NotloginCafe" method="GET" class="icon3">
					<button style="background-color: green;">
						<img alt="" src="resources/img/coffee.png" width="100px"
							height="100px">
					</button>
					<h3>카페</h3>
				</form>

				<form action="NotloginConvstore" method="GET" class="icon4">
					<button style="background-color: #FFE400;">
						<img alt="" src="resources/img/shop.png" width="100px"
							height="100px">
					</button>
					<h3>편의점</h3>
				</form>

				<form action="NotloginBank" method="GET" class="icon5">
					<button style="background-color: orange;">
						<img alt="" src="resources/img/bank.png" width="100px"
							height="100px">
					</button>
					<h3>은행</h3>
				</form>

				<form action="NotloginPharmacy" method="GET" class="icon6">
					<button style="background-color: purple;">
						<img alt="" src="resources/img/drugstore.png" width="100px"
							height="100px">
					</button>
					<h3>약국</h3>
				</form>

				<form action="NotloginSubway" method="GET" class="icon7">
					<button style="background-color: pink;">
						<img alt="" src="resources/img/subway.png" width="100px"
							height="100px">
					</button>
					<h3>지하철역</h3>
				</form>
			</td>
		</tr>
	</table>
</body>
</html>