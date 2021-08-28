<%@include file="../common/common.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center;">List of post</h1>

	<div style="text-align: -webkit-center;">
		<c:forEach items="${allpost }" var="post">
			<div class="card" style="width: 18rem;">
				<div class="card-body">
					<h5 class="card-title">Title:${post.tittle }</h5>
					<p class="card-text">Description: ${post.desc_p }.</p>
					<p class="card-text">time: ${post.time_post }.</p>
					<a href="#" class="btn btn-primary">Go somewhere</a>
				</div>
			</div>
			<br>
		
	
	</c:forEach>
</div>
<a href="/">back to home page</a>
</body>
</html>