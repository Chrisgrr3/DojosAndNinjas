<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Ninja</title>
</head>
<body>
	<div id="new" style="display: inline-block; position: absolute; top:100px; left: 100px;">
		<h1 style="font-size: 50px;">New Ninja</h1>
		
		<form:form  style="font-size: 25px;" action="/ninjas/new" method="post" modelAttribute="ninja">
		<p>
			<form:label path="dojo">Dojo:</form:label>
			<form:errors path="dojo" />
			<form:select path="dojo" style="margin-left: 143px; font-size: 22px;">
				<c:forEach items="${dojos}" var="dojo">
					<form:option value="${dojo}">${dojo.name}</form:option>
				</c:forEach>
			</form:select>
		</p>
		<p>
			<form:label path="firstName">First Name:</form:label>
			<form:errors path="firstName" />
			<form:input path="firstName" style="margin-left: 80px;"/>
		</p>
		<p>
			<form:label path="lastName">Last Name:</form:label>
			<form:errors path="lastName" />
			<form:input path="lastName" style="margin-left: 83px;"/>
		</p>
		<p>
			<form:label path="age">Age:</form:label>
			<form:errors path="age" />
			<form:input type="number" path="age" style="margin-left: 150px;"/>
		</p>
		<input type="submit" value="Create" style="margin-left: 200px;"/>
	</form:form>
	</div>

</body>
</html>