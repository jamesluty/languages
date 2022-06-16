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
<title>Edit Language</title>
</head>
<body>
	<div class="editWrapper">
		<div class="editPageBtns">
			<form action="/languages/delete/${language.id}" method="post">
			    <input type="hidden" name="_method" value="delete">
			    <input class="btn btn-danger" type="submit" value="Delete">
			</form>
			<a class="btn btn-primary" href="/languages">Home</a>
		</div>
		<div>
			<form:form class="editForm" action="/languages/edit" method="post" modelAttribute="language">
				<input type="hidden" name="_method" value="put">
				<input type="hidden" name="id" value="${language.id }"/>
				<div class="formItem">
					<div class="formInput">
						<form:label class="formLabel" path="name">Name: </form:label>
						<form:input class="formInput" path="name" value="${language.name }"/>
					</div>
					<form:errors class="errors" path="name"/>
				</div>
				<div class="formItem">
					<div class="formInput">
						<form:label class="formLabel" path="creator">Creator: </form:label>
						<form:input class="formInput" path="creator" value="${language.creator }"/>
					</div>
					<form:errors class="errors" path="creator"/>
				</div>
				<div class="formItem">
					<div class="formInput">
						<form:label class="formLabel" path="version">Version: </form:label>
						<form:input class="formInput" path="version" value="${language.version }"/>
					</div>
					<form:errors class="errors" path="version"/>
				</div>
				<button class="btn btn-primary">Edit</button>
			</form:form>
		</div>
	</div>
</body>
</html>