<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/css/styles.css">
<title>House Finder</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">


</head>
<body>

	<video class="container-fluid" autoplay="autoplay" muted="muted"
		loop="loop">
		<source src="/images/hero.mp4" type="video/mp4">
	</video>

	<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
		<div class="container-fluid my-5">
			<a class="navbar-brand" href="home.do">House Finder</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar"
				aria-controls="offcanvasNavbar" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="offcanvas offcanvas-end" tabindex="-1"
				id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title" id="offcanvasNavbarLabel">House
						Finder</h5>
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
						aria-label="Close"></button>
				</div>
				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">

					</ul>
					<div class="container-fluid text-end mt-2">
						<button type="button" class="btn btn-success"
							data-bs-toggle="modal" data-bs-target="#addHouseModal">Add
							New Property</button>
					</div>
					<form action="getHouse.do" method="GET" class="d-flex mt-3"
						role="search">
						<input type="text" name="id" placeholder="House ID" /> <input
							type="submit" value="Show House" />
					</form>
				</div>
			</div>
		</div>
	</nav>

	<!-- List All Houses with Details and Images -->
	<div class="container my-5">
		<div class="row">
			<c:forEach var="house" items="${houseList}">
				<div class="col-md-3 mb-4">
					<div class="card text-center">
						<%-- <h5 class="card-header">${house.id}</h5> --%>
						<div class="card-header text-body-secondary">${house.id}</div>
						<img src="https://picsum.photos/300/200?grayscale"
							class="card-img-top" alt="Image of ${house.address}">
						<div class="card-body">
							<h5 class="card-title">${house.address}</h5>
							<p class="card-text">
								City: ${house.city}<br> State: ${house.state}<br> Zip:
								${house.zipCode}<br> Price: $${house.price}
							</p>
							<div class="d-grid gap-2 col-8 mx-auto">
								<a href="getHouse.do?id=${house.id}"
									class="btn btn-sm btn-outline-danger">Show More Details</a>
							</div>
						</div>
						<div class="card-footer text-body-secondary">Listed:
							${house.dateListed}</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<!-- Modal for Adding New House -->
	<div class="modal fade" id="addHouseModal" tabindex="-1"
		aria-labelledby="addHouseModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="addHouseModalLabel">Add New House</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
				
					<!-- Add House Form -->
					<form action="createHouse.do" method="post">
					
						<!-- Address -->
						<div class="mb-3">
							<label for="address" class="form-label">Address</label> <input
								type="text" class="form-control" id="address" name="address">
						</div>

						<!-- City -->
						<div class="mb-3">
							<label for="city" class="form-label">City</label> <input
								type="text" class="form-control" id="city" name="city">
						</div>

						<!-- State -->
						<div class="mb-3">
							<label for="state" class="form-label">State</label> <input
								type="text" class="form-control" id="state" name="state">
						</div>

						<!-- Zip Code -->
						<div class="mb-3">
							<label for="zipCode" class="form-label">Zip Code</label> <input
								type="text" class="form-control" id="zipCode" name="zipCode">
						</div>

						<!-- Price -->
						<div class="mb-3">
							<label for="price" class="form-label">Price</label> <input
								type="number" class="form-control" id="price" name="price">
						</div>

						<!-- Square Footage -->
						<div class="mb-3">
							<label for="squareFootage" class="form-label">Square
								Footage</label> <input type="number" class="form-control"
								id="squareFootage" name="squareFootage">
						</div>

						<!-- Bedrooms -->
						<div class="mb-3">
							<label for="bedrooms" class="form-label">Bedrooms</label> <input
								type="number" class="form-control" id="bedrooms" name="bedrooms">
						</div>

						<!-- Bathrooms -->
						<div class="mb-3">
							<label for="bathrooms" class="form-label">Bathrooms</label> <input
								type="number" class="form-control" id="bathrooms"
								name="bathrooms">
						</div>

						<!-- Listed -->
						<div class="mb-3">
							<label for="dateListed" class="form-label">Date Listed</label> <input
								type="date" class="form-control" id="dateListed"
								name="dateListed">
						</div>
						<!-- Modal Footer with Add Button -->
						<div class="modal-footer">
							<button type="submit" class="btn btn-primary">Add House</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>




















	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>