<%@include file="../common/common.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welocome to admin</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<div class="container-fluid">
		<c:if test="${not empty admin_n }"><a class="navbar-brand" href="#">Welcome to ${admin_n }</a></c:if>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					
					<c:if test="${not empty admin_n }">
						<li class="nav-item"><a class="nav-link active" href="logouta">logout</a></li>
					</c:if>
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
<c:if test="${not empty admin_n }">
<b>
<a href="listusers" >List of Users</a></b>
<br><br>
<b>
<a href="listpost" >List post</a></b>
</c:if>

</body>
</html>