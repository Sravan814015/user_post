<%@include file="common/common.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<c:if test="${not empty name }">
				<a class="navbar-brand" href="#">Welcome to ${name }</a>
			</c:if>
			<c:if test="${empty name }">
				<a class="navbar-brand" href="#">User post</a>
			</c:if>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<c:if test="${empty name }">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="newu">User registraion</a></li>
						<li class="nav-item"><a class="nav-link" href="logu">User
								login</a></li>
					</c:if>
					<c:if test="${not empty name }">
						<li class="nav-item"><a class="nav-link active" href="logout">logout</a></li>
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
	<c:if test="${not empty name }">
		<b><a  href="postn">New post</a></b>
		<br>
		<br>
		<b><a  href="listp">List post</a></b>
	</c:if>
</body>
</html>