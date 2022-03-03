<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:partial>

		<h2 class="mt-4">Edit - ${editProject.projectName}</h2>
		<!-- <p>
			<a href="/projects">Project Dashboard</a> <a href="/logout">Logout</a>
		</p> -->
		<form:form action="/projects/update/${editProject.id}" method="post"
			modelAttribute="editedProject">

			<div class="form-group mt-4">
				<form:label path="projectName">Content:</form:label>
				<form:errors class="text-danger" path="projectName" />
				<form:input class="form-control" path="projectName"
					value="${editProject.projectName}" />
			</div>
			<%-- <div class="form-group mt-4">
				<form:label path="description">Description</form:label>
				<form:errors class="text-danger" path="description" />
				<form:input class="form-control" path="description"
					value="${editProject.description}" />
			</div> --%>
					
			<c:if test="${project.user.id==userLoggedIn}">
	
				<a href="/projects/update/${project.id}"><button class="btn btn-primary mt-4">Update</button></a>
		
			</c:if>
			
		</form:form>

</t:partial>


</body>
</html>