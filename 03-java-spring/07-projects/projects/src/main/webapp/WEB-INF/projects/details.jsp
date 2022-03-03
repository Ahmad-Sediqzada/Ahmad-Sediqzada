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
<title>Project Detials</title>
</head>
<body>

	<div class="container">
	
		<h3>Project Detials</h3>
		<p>
			Project Name: <c:out value="${project.projectName}"/>
		</p>
		
		<p>
			Created By: <c:out value="${project.student.firstName}"/>
		</p>
		
		<p>
			Description: <c:out value="${project.description}"/>
		</p>
	
	</div>

</body>
</html>