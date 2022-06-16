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
<title>Language Details</title>
</head>
<body>
	<div class="showWrapper">
		<a class="homeTag" href="/languages">Home</a>
		<div class="showDiv">
			<div class="itemDiv">
				<p>Name:</p>
				<p>${language.name }</p>
			</div>
			<div class="itemDiv">
				<p>Creator:</p>
				<p>${language.creator }</p>
			</div>
			<div class="itemDiv">
				<p>Version:</p>
				<p>${language.version }</p>
			</div>
		</div>
		<div class="showPageBtns">
			<a class="btn btn-primary" href="/languages/${language.id }/edit">Edit</a>
			<form action="/languages/delete/${language.id}" method="post">
			    <input type="hidden" name="_method" value="delete">
			    <input class="btn btn-danger" type="submit" value="Delete">
			</form>
		</div>
	</div>
</body>
</html>