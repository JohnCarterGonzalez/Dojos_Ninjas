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
<title>Create A New Dojo</title>
</head>
<body>
	<div class="container-sm">
		<div class="row justify-content-md-center">
		<h2 class="row justify-content-md-center">New Dojo</h2>
		<form:form class="row justify-content-md-center g-3" action="/dojos/create" method="post" modelAttribute="dojo">
			<div class="col-auto">
				<form:label class="visually-hidden" path="name">Name</form:label>
				<form:errors path="name"/>
				<form:input type="text" class="form-control-plaintext border border-dark" path="name" placeholder="Enter Dojo Name"/>
			</div>
			<div class="col-auto">
				<input type="submit" class="btn btn-primary mb-3" value="Submit"/>
			</div>
		</form:form>
		</div>
	</div>
</body>
</html>