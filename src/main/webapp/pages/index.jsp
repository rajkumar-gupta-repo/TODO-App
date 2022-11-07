<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="all.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<title>Home</title>
</head>
<body>

	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<a class="navbar-brand" href="home">Todo</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="home">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"></li>


				</ul>
				<a data-toggle="modal" 
						data-target="#exampleModal" class="nav-link" href="#"><span
							class="material-symbols-rounded btn btn-outline-warning" > add_circle </span></a>

			</div>
		</nav>
		<c:forEach items="${listoftodo}" var="list">
			<div class="card border-dark" style="margin-top: 20px">
				<h5 class="card-header text-white bg-secondary">${list.title}</h5>
				<div class="card-body">

					<p class="card-text">${list.content}</p>
					<a href="/update/${list.id}" class="btn btn-outline-warning">update</a>
					<a href="/delete/${list.id }" class="btn btn-outline-danger">delete</a>
				</div>
			</div>

		</c:forEach>





		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Add Todo</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="add" method="post">

						<div class="modal-body">
							<div class="form-group">
								<label for="formGroupExampleInput">Title</label> <input
									type="text" class="form-control" id="formGroupExampleInput"
									placeholder="Enter Title" name="title">
							</div>
							<div class="form-group">
								<label for="formGroupExampleInput2">Content</label>
								<textarea class="form-control" id="formGroupExampleInput2"
									placeholder="Enter your content here .." name="content"></textarea>

							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Cancel</button>
							<button type="submit" class="btn btn-warning">Add</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>