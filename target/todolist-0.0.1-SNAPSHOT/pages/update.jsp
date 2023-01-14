<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>Update</title>
</head>
<body>
	<div class="container">

		<h1>
			<center>Update</center>
		</h1>


		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="#">Todo</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>


		</nav>

		<form action="${pageContext.request.contextPath}/add" method="post">
			<input type="hidden" name="id" value="${todo.id}">

			<div class="modal-body">
				<div class="form-group">
					<label for="formGroupExampleInput">Title</label> <input type="text"
						class="form-control" id="formGroupExampleInput"
						placeholder="Enter Title" name="title" value="${todo.title}">
				</div>
				<div class="form-group">
					<label for="formGroupExampleInput2">Content</label>
					<textarea class="form-control" id="formGroupExampleInput2"
						placeholder="Enter your content here .." name="content">${todo.content}</textarea>

				</div>


				<button type="submit" class="btn btn-warning">Update</button>

			</div>




		</form>





	</div>
</body>
</html>