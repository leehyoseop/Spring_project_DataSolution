<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/heart.css">
</head>
<body bgcolor="#0F0F0F">
	<table id="totalTbl" width="1800px" height="800px" bgcolor="#0F0F0F">
		<tr>
			<td>
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
							<form action="goHomepage" method="GET">
								<button class="hbt" style="float: center;">
									<img class="categorybt1" src="resources/category/home1.png"
										onmouseover="this.src='resources/category/home2.png'"
										onmouseout="this.src='resources/category/home1.png'">
								</button>
							</form>
						</td>
					</tr>
				</table>
				<div id="box" style="float: center;">
					<table class="heartTbl1" border="1" width="200px" height="600px"
						style="float: left;">
						<tr>
							<td height="80px">
								<h1>Food</h1>
							</td>
						</tr>
						<tr>
							<td id="heartTd"></td>
						</tr>
					</table>
					&nbsp;
					<table class="heartTbl1" border="1" width="200px" height="600px"
						style="float: left;">
						<tr>
							<td height="80px">
								<h1>Hotel</h1>
							</td>
						</tr>
						<tr>
							<td id="heartTd"></td>
						</tr>
					</table>
					<table class="heartTbl1" border="1" width="200px" height="600px"
						style="float: left;">
						<tr>
							<td height="80px">
								<h1>Cafe</h1>
							</td>
						</tr>
						<tr>
							<td id="heartTd"></td>
						</tr>
					</table>
					<table class="heartTbl1" border="1" width="200px" height="600px"
						style="float: left;">
						<tr>
							<td height="80px">
								<h1>Convstore</h1>
							</td>
						</tr>
						<tr>
							<td id="heartTd"></td>
						</tr>
					</table>
					<table class="heartTbl1" border="1" width="200px" height="600px"
						style="float: left;">
						<tr>
							<td height="80px">
								<h1>Bank</h1>
							</td>
						</tr>
						<tr>
							<td id="heartTd"></td>
						</tr>
					</table>
					<table class="heartTbl1" border="1" width="200px" height="600px"
						style="float: left;">
						<tr>
							<td height="80px">
								<h1>Pharmacy</h1>
							</td>
						</tr>
						<tr>
							<td id="heartTd"></td>
						</tr>
					</table>
					<table class="heartTbl1" border="1" width="200px" height="600px"
						style="float: left;">
						<tr>
							<td height="80px">
								<h1>Subway</h1>
							</td>
						</tr>
						<tr>
							<td id="heartTd"></td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>