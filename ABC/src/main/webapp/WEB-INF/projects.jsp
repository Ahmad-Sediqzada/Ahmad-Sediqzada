<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
			<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
				<t:partial>



					<div class="container">

						<div class="d-flex justify-content-between">

							<h1 class="mt-4">
								<a class="text-primary text-decoration-none" href="/projects">HOME</a>
							</h1>

							<a href="/logout"><button class="btn btn-danger mt-4">LOGOUT</button></a>

						</div>



						<form:form action="/projects/create" method="post" modelAttribute="newProject">
							<div class="form-group mt-4">
								<!-- <form:label path="projectName">Content:</form:label> -->
								<form:errors class="text-danger" path="projectName" />
								<form:input placeholder="Any Creative Idea, ${user.firstName}?"
									class="form-control text-center" path="projectName" />
							</div>
							<%-- <div class="form-group mt-4">
								<form:label path="description">Project Description:</form:label>
								<form:errors class="text-danger" path="description" />
								<form:textarea class="form-control" path="description" />
					</div> --%>
					<!-- Hidden Input for userId -->
					<form:input type="hidden" value="${userId}" path="user" />

					<div class="d-flex justify-content-end">

						<a href="/projects/create"><button class="btn btn-light mt-2 mb-4">POST</button></a>

					</div>


					</form:form>

					<table class="table table-dark mt-4">
						<thead>
							<tr>
								<th>IDEAS</th>
								<th class="text-center">CREATED BY</th>
								<th class="text-center">LIKES</th>
								<th class="text-center">ACTIONS</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${projects}" var="project">
								<tr>
									<td>
										<c:out value="${project.projectName}" />
									</td>
									<td class="text-center">
										<a class="text-decoration-none link-secondary"
											href="/projects/user_project/${project.id}">
											<c:out value="${project.user.firstName}" />
										</a>
									</td>
									<td class="text-center">
										<a class="text-decoration-none link-secondary"
											href="/projects/project/${project.id}">
											<c:out value="${project.likers.size()}" />
										</a>
										<c:choose>
											<c:when test="${project.likers.contains(user)}">
												<a class="text-decoration-none link-primary font-weight-bold"
													href="/projects/unLike/${project.id}">Like</a>
											</c:when>
											<c:otherwise>
												<a class="text-decoration-none link-secondary"
													href="/projects/like/${project.id}">Like</a>
											</c:otherwise>
										</c:choose>
									</td>
									<td class="text-center">
										<c:if test="${project.user.id==userLoggedIn}">
											<a href="/projects/edit/${project.id}"><button
													class="btn btn-primary btn-sm">Edit</button></a>
											<a href="/projects/delete/${project.id}" class="text-danger"><button
													class="btn btn-danger btn-sm">Delete</button></a>

										</c:if>
									</td>


								</tr>
							</c:forEach>
						</tbody>
					</table>


					<div>

					</div>

					</div>

				</t:partial>