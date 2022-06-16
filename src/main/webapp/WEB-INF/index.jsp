<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Languages</title>
</head>
<body>
	<div class="homeWrapper">
		<table class="table table-striped table-bordered">
			<thead class=table-dark>
				<tr>
					<th>Name</th>
					<th>Creator</th>
					<th>Version</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="language" items="${languages}">
					<tr>
						<td class="lineItem"><a href="/languages/${language.id }">${language.name }</a></td>
						<td>${language.creator }</td>
						<td>${language.version }</td>
						<td class="actionBtns">
							<a class="btn btn-primary" href="/languages/${language.id }/edit">Edit</a>
							<form action="/languages/delete/${language.id}" method="post">
							    <input type="hidden" name="_method" value="delete">
							    <input class="btn btn-danger" type="submit" value="Delete">
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="formDiv">
			<form:form class="createForm" action="/languages/create" method="post" modelAttribute="language">
				<div class="formItem">
					<div class="formInput">
						<form:label class="formLabel" path="name">Name: </form:label>
						<form:input class="formInput" path="name"/>
					</div>
					<form:errors class="errors" path="name"/>
				</div>
				<div class="formItem">
					<div class="formInput">
						<form:label class="formLabel" path="creator">Creator: </form:label>
						<form:input class="formInput" path="creator"/>
					</div>
					<form:errors class="errors" path="creator"/>
				</div>
				<div class="formItem">
					<div class="formInput">
						<form:label class="formLabel" path="version">Version: </form:label>
						<form:input class="formInput" path="version"/>
					</div>
					<form:errors class="errors" path="version"/>
				</div>
				<button class="btn btn-primary">Submit</button>
			</form:form>
		</div>
	</div>
</body>
</html>