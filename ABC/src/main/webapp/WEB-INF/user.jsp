<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
			<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
				<t:partial>

					<div class="d-flex justify-content-between">

						<h1 class="mt-4">
							<a class="text-decoration-none" href="/projects/user_project/${project.id}">
								<c:out value="${project.user.firstName} ${project.user.lastName}" />
							</a>
						</h1>

						<a href="/projects"><button class="btn btn-primary mt-4 mb-4">HOME</button></a>

					</div>

					<table class="table table-dark mt-4">
						<thead>
							<tr>
								<th>IDEAS</th>
								<th class="text-center">LIKES</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${projects}" var="project">
								<tr>
									<td class="text-center">
										<c:out value="${project.projectName}" />
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

								</tr>
							</c:forEach>
						</tbody>
					</table>

				</t:partial>