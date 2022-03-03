<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">

<link 
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
	rel="stylesheet" 
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
	crossorigin="anonymous">
	
<title>Project Dashboard</title>

</head>

<body>
	<div class="container">
		
		<h3>Projects</h3>
		
		<a href="/project/new">New Project</a>
	
		<table class="table table-dark">
		
			<thead>
				<tr>
					<th>Project Name</th>
					<th>Created By</th>
					<th>Action</th>
				</tr>
			</thead>
		
			<tbody>
			<c:forEach items="${projects}" var="project">
			
				<tr>
					
					<td>
						<a href="/projects/${project.id}/details">
							<c:out value="${project.projectName}"/>
						</a>
					</td>
					
					<td>
						<c:out value="${project.student.firstName}"/>
					</td>
					
					<td>
						<a href="/projects/${project.id}/edit">Edit</a>
						<a href="/projects/${project.id}/delete">delete</a>
					</td>
				
				</tr>
			
			</c:forEach>
			</tbody>
		
		</table>
	
	</div>
</body>

</html>