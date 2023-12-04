<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset=UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/styles.css">
<title>House Finder</title>
</head>

<body>

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
					
					
					
					
					<div class="container-fluid text-end">
						<a href="addHouse.do" class="btn btn-danger">Add New Property</a>
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

	<!-- List All Houses -->
	<div class="container mt-4">
		<h2 class="mb-3">House Details - ID ${house.id}</h2>

		<div class="card">
			<img src="https://picsum.photos/300/200?grayscale"
				class="card-img-top" alt="Image of the house">
			<div class="card-body">
				<h5 class="card-title">${house.address}</h5>
				<p class="card-text">${house.description}</p>
				<ul class="list-group list-group-flush">
					<li class="list-group-item">City: ${house.city}</li>
					<li class="list-group-item">State: ${house.state}</li>
					<li class="list-group-item">Zip: ${house.zipCode}</li>
					<li class="list-group-item">Price: $${house.price}</li>
					<li class="list-group-item">Square Footage:
						${house.squareFootage} sqft</li>
					<li class="list-group-item">Bedrooms: ${house.bedrooms}</li>
					<li class="list-group-item">Bathrooms: ${house.bathrooms}</li>
					<li class="list-group-item">Listed: ${house.dateListed}</li>
				</ul>
			</div>
			<div class="card-footer">
				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
					data-bs-target="#editHouseModal">Edit</button>

				<!-- Delete Button -->
				<button type="button" class="btn btn-danger" data-bs-toggle="modal"
					data-bs-target="#deleteConfirmationModal">Delete</button>
			</div>
		</div>

		<!-- Delete Confirmation Modal -->
		<div class="modal fade" id="deleteConfirmationModal" tabindex="-1"
			aria-labelledby="deleteModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="deleteModalLabel">Confirm
							Deletion</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">Are you sure you want to delete this
						house?</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Cancel</button>
						<a href="deleteHouse.do?id=${house.id}" class="btn btn-danger">Delete</a>
					</div>
				</div>
			</div>
		</div>


		<!-- Modal for Editing House Details -->
		<div class="modal fade" id="editHouseModal" tabindex="-1"
			aria-labelledby="editHouseModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="editHouseModalLabel">Edit House
							Details</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<!-- Edit Form -->
						<form action="updateHouse.do" method="post">
							<input type="hidden" name="id" value="${house.id}" />

							<!-- Address -->
							<div class="mb-3">
								<label for="address" class="form-label">Address</label> <input
									type="text" class="form-control" id="address" name="address"
									value="${house.address}">
							</div>

							<!-- City -->
							<div class="mb-3">
								<label for="city" class="form-label">City</label> <input
									type="text" class="form-control" id="city" name="city"
									value="${house.city}">
							</div>

							<!-- State -->
							<div class="mb-3">
								<label for="state" class="form-label">State</label> <input
									type="text" class="form-control" id="state" name="state"
									value="${house.state}">
							</div>

							<!-- Zip Code -->
							<div class="mb-3">
								<label for="zipCode" class="form-label">Zip Code</label> <input
									type="text" class="form-control" id="zipCode" name="zipCode"
									value="${house.zipCode}">
							</div>

							<!-- Price -->
							<div class="mb-3">
								<label for="price" class="form-label">Price</label> <input
									type="number" class="form-control" id="price" name="price"
									value="${house.price}">
							</div>

							<!-- Square Footage -->
							<div class="mb-3">
								<label for="squareFootage" class="form-label">Square
									Footage</label> <input type="number" class="form-control"
									id="squareFootage" name="squareFootage"
									value="${house.squareFootage}">
							</div>

							<!-- Bedrooms -->
							<div class="mb-3">
								<label for="bedrooms" class="form-label">Bedrooms</label> <input
									type="number" class="form-control" id="bedrooms"
									name="bedrooms" value="${house.bedrooms}">
							</div>

							<!-- Bathrooms -->
							<div class="mb-3">
								<label for="bathrooms" class="form-label">Bathrooms</label> <input
									type="number" class="form-control" id="bathrooms"
									name="bathrooms" value="${house.bathrooms}">
							</div>

							<!-- Listed -->
							<div class="mb-3">
								<label for="dateListed" class="form-label">Date Listed</label> <input
									type="date" class="form-control" id="dateListed"
									name="dateListed" value="${house.dateListed}">
							</div>

							<!-- Modal Footer with Save Button -->
							<div class="modal-footer">
								<button type="submit" class="btn btn-primary">Save
									Changes</button>
							</div>
						</form>
					</div>
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