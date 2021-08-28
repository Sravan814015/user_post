<%@include file="../common/common.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center;">New post from</h1>
	<div class="container">
		<form:form method="post" action="updatep" modelAttribute="Post"
			enctype="multipart/form-data">
			<form:hidden path="id"/>
			<div class="form-group">
				<label for="email">Title:</label>
				<form:input path="tittle" cssClass="form-control" id="email"
					 />
			</div>

			<div class="form-group">
				<label for="email">Description :</label>
				<form:textarea path="desc_p" cssClass="form-control" id="email"
					 rows="3" />
			</div>
			<div class="form-group">
				<label for="email">Post of time:</label>
				<form:input  cssClass="form-control" id="email"
					type="date" path="time_post" />
			</div>
			<div class="form-group">
				<label for="email">User name:</label>
				<form:input path="us.name" cssClass="form-control" id="email"
					readonly="true" />
			</div>
<br>
			<button type="submit" class="btn btn-outline-info">Submit</button>
			<button type="reset" class="btn btn-outline-secondary">reset</button>
		</form:form>
	</div>
	<b><a href="/">back to home page</a></b>
</body>
</html>