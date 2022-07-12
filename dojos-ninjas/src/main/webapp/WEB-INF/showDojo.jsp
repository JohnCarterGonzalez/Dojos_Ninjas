<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dojo and its Contents</title>
</head>
<body>
	<div class="container">
		<h1><c:out value="${dojo.name}"/></h1>
		
		<table class="table">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Age</th>
				</tr>			
			</thead>
			<tbody>
				<c:forEach var="ninja" items="${dojo.ninjas}">
					<tr>
						<th scope="row"><c:out value="${ninja.id}"/></th>
						<td><c:out value="${ninja.firstName}"/></td>
						<td><c:out value="${ninja.lastName}"/></td>
						<td><c:out value="${ninja.age}"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>