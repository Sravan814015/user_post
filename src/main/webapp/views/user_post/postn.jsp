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
		<form:form method="post" action="savep" modelAttribute="post"
			enctype="multipart/form-data">
			<div class="form-group">
				<label for="email">Title:</label>
				<form:input path="tittle" cssClass="form-control" id="email"
					placeholder="Enter the title here" required="required" />
			</div>

			<div class="form-group">
				<label for="email">Description :</label>
				<form:textarea path="desc_p" cssClass="form-control" id="email"
					placeholder="enter the post description here" rows="3" required="required" />
			</div>
			<div class="form-group">
				<label for="email">Post of time:</label>
				<form:input  cssClass="form-control" id="email"
					type="datetime-local" path="time_post" />
			</div>
<br>
			<button type="submit" class="btn btn-outline-info">Submit</button>
			<button type="reset" class="btn btn-outline-secondary">Reset</button>
		</form:form>
	</div>
	<b><a href="/">back to home page</a></b>
</body>
</html>