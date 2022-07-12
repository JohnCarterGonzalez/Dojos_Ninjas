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
<title>Create a New Ninja Here</title>
</head>
<body>
	<div class="container">
		<h1>New Ninja</h1>
		<form:form action="/ninjas" method="post" modelAttribute="ninja">
		
		    <div class="mb-3">
		        <form:label class="form-label" path="firstName">First Name:</form:label>
		        <form:input class="form-control" path="firstName"/>
		    </div>
		    
		    <div class="mb-3">
	        <form:label class="form-label" path="lastName">Last Name:</form:label>
		        <form:input class="form-control" path="lastName"/>
		   	</div>
		    
		    <div class="mb-3">
		        <form:label class="form-label" path="age">Age:</form:label>
		        <form:input class="form-control" path="age"/>
		    </div>
		    
		    <div class="mb-3">
		        <form:label class="form-label" path="dojo">Dojo:</form:label>
		        
		        <form:select class="form-select" path="dojo">
		        	<option selected>Choose the Dojo Here</option>
		        	<c:forEach var="eachDojo" items="${dojos}">
			        	<option value="${eachDojo.id}"><c:out value="${eachDojo.name}"/></option>
		        	</c:forEach>
		        </form:select>
		   	</div>
		    
		    
		    <input class="btn btn-primary" type="submit" value="Submit"/>
		    
		</form:form> 
	</div>
</body>
</html>