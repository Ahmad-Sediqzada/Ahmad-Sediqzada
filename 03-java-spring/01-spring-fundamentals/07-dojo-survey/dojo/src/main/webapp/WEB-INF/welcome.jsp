<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>Name: <c:out value="${firstName}"/></p>
<p>Email: <c:out value="${email}"/></p>
<p>Program: <c:out value="${program}"/></p>
<a href="/">Home</a>
</body>
</html>