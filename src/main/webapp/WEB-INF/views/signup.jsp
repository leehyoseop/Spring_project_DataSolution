<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
	function checklogin() {
		//유효성 검사
		var id = document.ff.m_id.value;
		var pw = document.ff.m_pw.value;
		var name = document.ff.m_name.value;
		var phone = document.ff.m_phone.value;
		var birth = document.ff.m_birthday.value;

		//ID 공란
		if (id === "") {
			ff.m_id.focus();
			alert("->ID 공란 확인");
			return;
		}
		//ID 길이
		if (id.length <= 4) {
			ff.m_id.focus();
			alert("->ID 길이 확인");
			return;
		}
		//PW 공란
		if (pw === "") {
			ff.m_pw.focus();
			alert("->PW 공란 확인");
			return;
		}
		//PW 길이
		if (pw.length <= 6) {
			ff.m_pw.focus();
			alert("->PW 길이 확인");
			return false;
		}
		//이름 공란
		if (name === "") {
			ff.m_name.focus();
			alert("->이름 공란");
			return;
		}
		//핸드폰 번호 공란
		if (phone === "") {
			ff.m_phone.focus();
			alert("->핸드폰 번호 공란");
			return;
		}
		//생일 공란
		if (birth === "") {
			ff.m_birthday.focus();
			alert("->생일 공란");
			return;
		}
	}
</script>
<link rel="stylesheet" href="resources/css/signup.css">
</head>
<script
	src="https://tistory3.daumcdn.net/tistory/941717/skin/images/jquery.min.js"
	type="text/javascript"></script>
<script
	src="https://tistory3.daumcdn.net/tistory/941717/skin/images/snowfall.jquery.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="http://bpmaker.giffy.me/userdata/user/54/54797/2/parts.js"></script>

<body bgcolor="#0F0F0F">
	<table id="totalTbl" width="1800px" height="800px" bgcolor="#0F0F0F">
		<tr>
			<td>
				<form action="goMainpage" method="GET">
					<button class="hbt" style="float: center;">
						<img class="categorybt" src="resources/category/home1.png"
							onmouseover="this.src='resources/category/home2.png'"
							onmouseout="this.src='resources/category/home1.png'">
					</button>
				</form>
				<table id="signupTbl" border="1" width="350px" height="600px">
					<tr>
						<td style="border-bottom: none;" height="80px">
							<h1>회원가입</h1>
						</td>
					</tr>
					<tr>
						<form action="signupfunc" method="post"
							style="font-family: SBugroB;" name="ff" onsubmit='checklogin();'>
							<td id="signupTd">
								<h2>ID</h2> <input class="sign" name="m_id" autocomplete="off"
								placeholder="ID 5-10자" maxlength="10" size="30"
								style="color: #353535;">
								<h2>PW</h2> <input class="sign" name="m_pw" autocomplete="off"
								type="password" placeholder="Password 7-15자" maxlength="15"
								size="30" style="color: #353535;">
								<h2>NAME</h2> <input class="sign" name="m_name"
								autocomplete="off" type="text" placeholder="Name" maxlength="5"
								size="30" style="color: #353535;">
								<h2>PHONE</h2> <input class="sign" name="m_phone"
								autocomplete="off" type="text" placeholder="Phone"
								maxlength="11" size="30" style="color: #353535;">
								<h2>BIRTHDAY</h2> <input class="sign" name="m_birthday"
								autocomplete="off" type="text" placeholder="Birthday"
								maxlength="8" size="30" style="color: #353535;">
								<p>
									<button>Sign up</button>
							</td>
						</form>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>