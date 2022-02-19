<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="p" items="${place }">
		${p.m_id }&nbsp;&nbsp;${p.category }&nbsp;&nbsp;${p.place_name }
	</c:forEach>
</body>
</html>