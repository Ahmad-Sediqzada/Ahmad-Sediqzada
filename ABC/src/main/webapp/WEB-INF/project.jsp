<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:partial>


	<div class="d-flex justify-content-between">
	
		<h1 class="mt-4">
			<a class="text-decoration-none" href="/projects/project/${project.id}"><c:out value="${project.projectName}" /></a>
		</h1>
	
		<a href="/projects"><button class="btn btn-primary mt-4 mb-4">HOME</button></a>
	
	</div>

	
	<h3 class="text-success mt-4 mb-4">Users Who Liked:</h3>
	<c:forEach items="${project.likers}" var="liker">
	<p> <c:out value="${liker.firstName} ${liker.lastName}" /> </p>
	</c:forEach>
	
	<!-- Check if project belongs to user -->
	<c:if test="${project.user.id==userLoggedIn}">
	
		<a href="/projects/edit/${project.id}"><button class="btn btn-primary">Edit</button></a>
		<a href="/projects/delete/${project.id}" class="text-danger"><button class="btn btn-danger">Delete</button></a>
		
	</c:if>
	
</t:partial> 