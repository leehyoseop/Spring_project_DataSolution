<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/jQuery.js"></script>
<script type="text/javascript">
// 텍스트 샤라락 이벤트
window.onload = function() {
	// Wrap every letter in a span
	var textWrapper = document.querySelector('.clT');
	textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

	anime.timeline({once: true})
	  .add({
	    targets: '.clT .letter',
	    opacity: [0,1],
	    easing: "easeInOutQuad",
	    duration: 2250,
	    delay: (el, i) => 150 * (i+1)
	  }).add({
	    targets: '.clT',
	    opacity: 0,
	    duration: 1000,
	    easing: "easeOutExpo",
	    delay: 1000
	  });
}
// 3초 뒤 페이지 이동
function gotoMain() {
	location.href = "gotoMain";
	}
setTimeout(gotoMain, 3500);
</script>
<!-- 
<script language="javascript">
	function gotoMain() {location.href = "gotoMain";}
</script>
 -->
<link rel="stylesheet" href="resources/css/TTValue.css">
</head>
<body bgcolor="#0F0F0F">
	<!-- onload= "setTimeout('gotoMain()', 3000)" -->
	<table id="titleTbl">
		<tr>
			<td id="title" align="center"><h1 class="clT">TTValue</h1>
			<!--	<audio autoplay controls>
					<source src="bensound-creepy.mp3" type="bensound-creepy.mp3">
					</audio>
			--> 
			<script
					src="https://cdnjs.cloudflare.com/ajax/libs/animejs/2.0.2/anime.min.js"></script>
			</td>
		</tr>
	</table>
</body>
</html>
