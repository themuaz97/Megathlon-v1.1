<%@ page import="java.sql.*"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.ArrayList"%>

<%@page import="com.Megathlon.Beans.Product"%>
<%@page import="com.Megathlon.Beans.Stock"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Megathlon | Sale Page</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<script src="https://kit.fontawesome.com/52adbacfd8.js"
	crossorigin="anonymous"></script>
<!-- overlayScrollbars -->
<link rel="stylesheet" href="css/OverlayScrollbars.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="css/adminlte.min.css">
<!-- daterange picker -->
<link rel="stylesheet" href="css/daterangepicker.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<!-- Site wrapper -->
	<div class="wrapper">
		<%@include file="inc/NavBar.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6"></div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Blank Page</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">

				<!-- Default box -->
				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">Stock Transaction</h3>
									<div class="card-tools">
										<button type="button" class="btn btn-tool"
											data-card-widget="collapse" title="Collapse">
											<i class="fas fa-minus"></i>
										</button>
									</div>
								</div>
							</div>

							<form action="/Megathlon/stockDB" method="POST">
								<div class="p-3 mb-2 bg-white text-dark">
									<div class="card-body">
										<div class="form-group row">
											<div class="col-6">
												<label for="inputName">Date</label> <input type="date" id=""
													name="date" class="form-control">
											</div>

										</div>
										<div class="form-group row">
											<div class="col-6">
												<label>Status</label> <select id="status" name="stockStatus"
													class="form-control custom-select">
													<option value="0" selected disabled>Choose Status
														Type</option>
													<option value="1">Stock Addition</option>
													<option value="2">Stock Deduction</option>
													<option value="3">Defect Item</option>
												</select>
											</div>

											<div class="form-group row">
												<div class="col-6">
													<label>Status</label> <select id="status"
														name="stockStatus" class="form-control custom-select">
														<option value="0" selected disabled>Choose Status
															Type</option>
														<option value="1">Stock Addition</option>
														<option value="2">Stock Deduction</option>
														<option value="3">Defect Item</option>
													</select>
												</div>
												<div class="col-6">
													<label>Product name</label> <select id="productSelect"
														name="product" class="form-control custom-select">
														<option hidden>Select Product Name</option>
														<%
														ArrayList<Product> productlist = (ArrayList<Product>) request.getAttribute("productlist");

														for (Product p : productlist) {
														%>
														<option
															<%-- value="<%= p.getProductID() %>" --%> 
														value="<%=p.getProductName()%>"
															data-supplier="<%=p.getSupplier()%>"
															
															data-price="<%=p.getPrice()%>"
															data-quantity="<%=p.getQuantity()%>">
															<%=p.getProductName()%></option>
														<%
														}
														%>
													</select>
												</div>

											<div class="col-6">
												<label>Product name</label> <select id="productSelect"
													name="product" class="form-control custom-select">
													<option value="1">Select Product Name</option>
													<%
													ArrayList<Product> productlist = (ArrayList<Product>) request.getAttribute("productlist");

													for (Product p : productlist) {
													%>
													<option
														<%-- value="<%= p.getProductID() %>" --%> 
														value="<%=p.getProductName()%>"
														data-supplier="<%=p.getSupplier()%>"
														data-supplier="<%=p.getSupplier()%>"
														data-price="<%=p.getPrice()%>"
														data-quantity="<%=p.getQuantity()%>">
														<%=p.getProductName()%></option>
													<%
													}
													%>
												</select>

											</div>
										</div>

										<div class=" form-group">
											<label>Supplier</label> <input type="text" id="supplier"
												name="supplier" class="form-control" value="" readonly>
										</div>
										<div class="form-group">
											<label>Price</label> <input type="text" id="price"
												name="price" class="form-control" value="" readonly>
										</div>

										<div class="form-group row">
											<div class="col-6">
												<label>Current Quantity</label> <input type="number"
													id="quantity" name="quantity" value="" class="form-control"
													readonly>
											</div>
											<div class="col-6">
												<label id="label-quantity">Quantity to Add(s):</label> <input
													type="number" id="quantity_to_add" name="quantityChange"
													class="form-control"
													placeholder="Quantity to be add or deduct  e.g. 20">
											</div>
										</div>
										<div class="row">
											<div class="col-12">
												<div>
													<input type="submit" value="Add New Transaction"
														class="btn btn-success float-right">
												</div>
												<div>
													<input type="reset" value="Cancel"
														class="btn btn-primary float-left">
												</div>
											</div>
										</div>
										<!-- /.card -->


									</div>
								</div>
							</form>

								<div class="col-12">
									<div class="card">
										<div class="card card-primary">
											<div class="card-header">
												<h3 class="card-title">Stock Transaction List</h3>
												<div class="card-tools">
													<div class="input-group input-group-sm"
														style="width: 150px;">
														<input type="text" name="table_search"
															class="form-control float-right" placeholder="Search">

														<div class="input-group-append">
															<button type="submit" class="btn btn-default">
																<i class="fas fa-search"></i>
															</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- /.card-header -->
										<div class="card-body table-responsive p-0"
											style="height: 600px;">
											<table
												class="table table-hover table-head-fixed text-nowrap table-bordered">
												<thead>
													<tr>
														<th>No.</th>
														<th>Date</th>
														<th>Status</th>
														<th>Product Name</th>
														<th>Supplier</th>
														<th>Quantity Changed</th>
														<th>Stock Quantity</th>
													</tr>
												</thead>
												<tbody>
													<%
													ArrayList<Stock> stocklist = (ArrayList<Stock>) request.getAttribute("stocklist");
													for (int i = 0; i < stocklist.size(); i++) {
														if (stocklist.get(i).getStockStatus().equals("1")) {
													%>
													<tr class="table-success">

														<td><%=stocklist.get(i).getStockID()%>
														<td><%=stocklist.get(i).getDate()%>
														<td>Stock Addition</td>
														<td><%=stocklist.get(i).getProduct()%>
														<td><%=stocklist.get(i).getSupplier()%>
														<td><%=stocklist.get(i).getquantityChange()%>
														<td><%=stocklist.get(i).getQuantity()%>
													</tr>
													<%
													} else if (stocklist.get(i).getStockStatus().equals("2")) {
													%>
													<tr class="table-warning">

														<td><%=stocklist.get(i).getStockID()%>
														<td><%=stocklist.get(i).getDate()%>
														<td>Stock Reduction</td>
														<td><%=stocklist.get(i).getProduct()%>
														<td><%=stocklist.get(i).getSupplier()%>
														<td><%=stocklist.get(i).getquantityChange()%>
														<td><%=stocklist.get(i).getQuantity()%>
													</tr>
													<%
													} else {
													%>
													<tr class="table-danger"">

														<td><%=stocklist.get(i).getStockID()%>
														<td><%=stocklist.get(i).getDate()%>
														<td>Defect Product</td>
														<td><%=stocklist.get(i).getProduct()%>
														<td><%=stocklist.get(i).getSupplier()%>
														<td><%=stocklist.get(i).getquantityChange()%>
														<td><%=stocklist.get(i).getQuantity()%>
													</tr>
													<%
													}
													}
													%>
												</tbody>
											</table>
										</div>
										<!-- /.card-body -->
									</div>
									<!-- /.card -->
								</div>
							</div>

						
					</div>
				</section>
				<!-- /.content -->
				<div class="card-body"></div>
				<!-- /.card-body -->
				<div class="card-footer">Footer</div>
				<!-- /.card-footer-->
		</div>
		<!-- /.card -->
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->

	<footer class="main-footer">
		<div class="float-right d-none d-sm-block">
			<b>Version</b> 3.2.0
		</div>
		<strong>Copyright &copy; 2014-2021 <a
			href="https://adminlte.io">Megathlon</a>.
		</strong> All rights reserved.
	</footer>

	<!-- Control Sidebar -->
	<aside class="control-sidebar control-sidebar-dark">
		<!-- Control sidebar content goes here -->
	</aside>
	<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="js/adminlte.min.js"></script>

	<!-- overlayScrollbars -->
	<script src="/js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"
		integrity="sha512-2ImtlRlf2VVmiGZsjm9bEyhjGW4dU7B6TNwh/hx/iSByxNENtj3WVE6o/9Lj4TJeVXPi4bnOIMXFIJJAeufa0A=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
		$(function() {
			//Date picker
			$('#reservationdate').datetimepicker({
				format : 'L'
			});
			$(document).ready(function() {
				$('.js-example-basic-single').select2();
			});
		})
	</script>
	<script>
		document
				.getElementById("productSelect")
				.addEventListener(
						"change",
						function() {
							var productId = this.value;

							// Use AJAX to fetch data from the server
							// Example using jQuery:
							$
									.ajax({
										url : "ajaxhandler.jsp", // Replace with the actual URL to fetch data // tukar jgn guna sale jsp
										method : "GET",
										data : {
											productId : productId
										},
										success : function(data) {
											// Parse the JSON data returned from the server
											var productData = JSON.parse(data);

											// Populate the other input fields
											document
													.getElementById("supplierinput").value = product.supplier;
											document
													.getElementById("priceinput").value = product.price;
											document
													.getElementById("stockquantityinput").value = product.quantity;
										},
										error : function(error) {
											console
													.error("Error fetching product data: "
															+ error);
										}
									});
						});
	</script>
	<script>
		// Get references to the select element and the supplier input element
		var productSelect = document.getElementById("productSelect");
		var supplierInput = document.getElementById("supplier");
		var priceInput = document.getElementById("price");
		var quantityInput = document.getElementById("quantity");

		// Add a change event listener to the select element
		productSelect
				.addEventListener(
						"change",
						function() {
							// Get the selected option
							var selectedOption = productSelect.options[productSelect.selectedIndex];

							// Get the data-supplier attribute value from the selected option
							var supplier = selectedOption
									.getAttribute("data-supplier");
							var price = selectedOption
									.getAttribute("data-price");
							var quantity = selectedOption
									.getAttribute("data-quantity");

							// Update the value of the supplier input
							supplierInput.value = supplier;
							priceInput.value = price;
							quantityInput.value = quantity;
						});
	</script>
	<script>
		// Get references to the select element and the label element
		var statusSelect = document.getElementById("status");
		var label = document.getElementById("label-quantity");

		// Add a change event listener to the select element
		statusSelect.addEventListener("change", function() {
			// Get the selected option value
			var selectedValue = statusSelect.value;

			// Update the label based on the selected option
			if (selectedValue === "3") {
				label.textContent = "Defected Item(s):";
			} else if (selectedValue === "2") {
				label.textContent = "Quantity to Reduce(s):";
			} else {
				label.textContent = "Quantity to Add(s):";
			}
		});
	</script>

</body>

</html>
