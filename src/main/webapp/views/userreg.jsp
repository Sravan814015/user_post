<%@include file="index.jsp"%>
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
	<h1 style="text-align: center;">User registration from</h1>
	<div class="container">
		<form:form method="post" action="saveu" modelAttribute="user"
			enctype="multipart/form-data">
			<div class="form-group">
				<label for="email">Name:</label>
				<form:input path="name" cssClass="form-control" id="email"
					placeholder="Enter the name here"  required="required" />
			</div>
<input required="required">
			<div class="form-group">
				<label for="email">E-mail:</label>
				<form:input path="email" cssClass="form-control" id="email"
					placeholder="Enter the email here" required="required" />
			</div>
			<div class="form-group">
				<label for="email">Password:</label>
				<form:input path="pass" cssClass="form-control" id="email"
					placeholder="Enter the password here" required="required"/>
			</div>

			<div class="form-group">
				<label for="email">Gender:</label>
				<form:radiobutton path="gender" value="male"
					cssClass="form-check-input" id="email" />
				Male
				<form:radiobutton path="gender" value="female"
					cssClass="form-check-input" id="email" />
				Female
			</div>
			<br>
			<button type="submit" class="btn btn-outline-info">Submit</button>
			<button type="reset" class="btn btn-outline-secondary">Reset</button>
		</form:form>
	</div>
</body>
</html>