<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix = "form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>${dojo.name} Ninjas</title>
	<style>
		#box {
			display: flex;
			justify-content: center;
		}
		table, th, td{
			border: 2px solid black;
			border-collapse: collapse;
			font-size: 32px;
			padding-right: 150px;
		}
	</style>
</head>
<body>
	<h1 style="text-align: center;">${dojo.name} Ninjas</h1>
	<div id="box">
		<table>
			<thead>
				<tr>
					<th class="thead">First Name</th>
					<th class="thead">Last Name</th>
					<th class="thead">Age</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ninjas}" var="ninja">
					<tr>
						<td>${ninja.firstName}</td>
						<td><c:out value="${ninja.lastName}"/></td>
						<td><c:out value="${ninja.age}"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>