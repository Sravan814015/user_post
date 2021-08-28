<%@include file="index.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 style="text-align: center;">User registration from</h1>
	<h2 style="color: red;">${invalid }</h2>
	<div class="container">
		<form:form method="post" action="checku" modelAttribute="user"
			enctype="multipart/form-data">

			<div class="form-group">
				<label for="email">E-mail:</label>
				<form:input path="email" cssClass="form-control" id="email"
					placeholder="Enter the email here" required="required"/>
			</div>
			<div class="form-group">
				<label for="email">Password:</label>
				<form:input path="pass" cssClass="form-control" id="email"
					placeholder="Enter the name here" required="required" />
			</div> 
<br>
			<button type="submit" class="btn btn-outline-info">Submit</button>
			<button type="reset" class="btn btn-outline-secondary">Reset</button>
		</form:form>
	</div>
</body>
</html>