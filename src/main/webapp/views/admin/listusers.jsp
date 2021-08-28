<%@include file="../common/common.jsp" %>
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
	<h1 style="text-align: center;">List of User</h1>
<div class="container">
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">id</th>
				<th scope="col">name</th>
				<th scope="col">email</th>
				<th scope="col">password</th>
				<th scope="col">gender</th>
				<th scope="col">action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${listu }">

				<tr>
					<td>${user.id }</td>
					<td>${user.name }</td>
					<td>${user.email }</td>
					<td>${user.pass }</td>
					<td>${user.gender }</td>
					<td><a href="/updateCustomer?id=${user.id}">Update</a> | <a
						href="/deleteCustomer?id=${user.id}"
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