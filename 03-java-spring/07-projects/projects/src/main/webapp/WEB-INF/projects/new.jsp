<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>New Project</title>
</head>
	<body>
	
		<div class="container">
	
			<h1>New Project</h1>
	
			<form:form action="/project/create" method="post"
				modelAttribute="project">
	
				<p>
					<form:label path="projectName">Project Name</form:label>
					<form:errors path="projectName" class="text-danger" />
					<form:input path="projectName" class="form-control" />
				</p>
	
				<p>
					<form:label path="description">Description</form:label>
					<form:errors path="description" class="text-danger" />
					<form:input path="description" class="form-control" />
				</p>
	
				<button>Submit</button>
	
	
			</form:form>
	
	
		</div>
	
	</body>
</html>