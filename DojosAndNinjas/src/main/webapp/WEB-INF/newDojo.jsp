<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Dojo</title>
</head>
<body>
	<div id="new" style="display: inline-block; position: absolute; top:100px; left: 100px;">
	<h1 style="font-size: 50px;">New Dojo</h1>
		<form:form action="/dojos/new" method="post" modelAttribute="dojo">
		<p>
			<form:label path="name" style="font-size: 25px;">Name</form:label>
			<form:errors path="name" />
			<form:input path="name" style="font-size: 20px; margin-left: 30px;"/>
		</p>
		<input type="submit" value="Create" style="font-size: 20px;"/>
	</form:form>
	</div>
</body>
</html>