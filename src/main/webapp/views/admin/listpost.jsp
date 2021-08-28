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
	<h1 style="text-align: center;">List of posts</h1>
	<div class="container">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">id</th>
					<th scope="col">title</th>
					<th scope="col">Description</th>
					<th scope="col">date of post</th>
					<th scope="col">User name</th>
					<th scope="col">action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="post" items="${listp }">

					<tr>
						<td>${post.id }</td>
						<td>${post.tittle }</td>
						<td>${post.desc_p }</td>
						<td>${post.time_post }</td>
						<td>${post.us.name }</td>
						<td><a href="/updatepost?id=${post.id}">Update</a> | <a
							href="/deletepost?id=${post.id}"
							onclick="return confirm('Are you sure ou want to delete this user?');">Delete</a>
						</td>
					</tr>

				</c:forEach>
			</tbody>
		</table>
	</div>
	<a href="view">back to home page</a>
</body>
</html>