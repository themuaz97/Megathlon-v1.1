<%@page import="java.util.ArrayList"%>

<%@page import="com.Megathlon.Beans.Product"%>
<%@page import="com.Megathlon.Beans.Brand"%>
<%@page import="com.Megathlon.Beans.Suppliers"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Product</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Theme style -->
<link rel="stylesheet" href="css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
	
	<%@include file="product-aside.jsp" %>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Product Information</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Edit Product</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content ">
				<div class="container-fluid">
					<div class="row ">
						<!-- left column -->
						<div class="col-md-8 offset-2">
							<!-- general form elements -->
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">Edit Product</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->

								<%
								Product product = (Product) request.getAttribute("product");
								%>

								<!-- EDIT METHOD -->
								<form action="/Megathlon/ProductEdit" method="post">

									<div class="card-body">
										<div class="form-group">
											<label for="exampleInputName">Product Name</label> <input
												type="text" name="productName" class="form-control"
												id="exampleInputEmail1" placeholder="Enter Product Name"
												value="<%=product.getProductName()%>">
										</div>
										<div class="form-group">
											<label for="exampleInputDescription">Description</label> <input
												type="text" name="description" class="form-control"
												id="exampleInputPassword1" placeholder="Product Description"
												value="<%=product.getDescription()%>">
										</div>
										<div class="form-group">
											<label for="exampleInputPrice">Price</label>
											<div class="input-group">
												<div class="input-group-prepend">
													<span class="input-group-text">RM</span>
												</div>
												<input type="text" name="price" class="form-control"
													placeholder="0.00"
													value="<%=product.getPrice()%>" />
											</div>
										</div>
										<div class="form-group my-3">
											<label for="exampleInputQuantity">Quantity</label> <input
												type="text" name="quantity" class="form-control"
												id="exampleInputPassword1" placeholder="Quantity" readonly
												value="<%=product.getQuantity()%>">
										</div>
										<div class="form-group">
											<label>Brand</label> 
											<select class="form-control" name="brand">
												
												
												<%
												ArrayList<Brand> brandlist = (ArrayList<Brand>) request.getAttribute("BrandList");
													
													for (Brand brand:brandlist){
												%>
												
												<option value="<%= brand.getBrandName() %>"><%= brand.getBrandName() %></option>
												<%} %>
												<option hidden>Select Brand</option>

											</select>
										</div>
										<div class="form-group">
											<label>Supplier</label> <select class="form-control"name="supplier">
												
												<%
												ArrayList<Suppliers> supplierlist = (ArrayList<Suppliers>) request.getAttribute("SupplierList");
													
													for (Suppliers supplier:supplierlist){
												%>
												
												<option value="<%= supplier.getSupplierName() %>"><%= supplier.getSupplierName() %></option>
												<%} %>
												<option hidden>Select Supplier</option>

											</select>
										</div>
										<div class="form-group">
											<label for="exampleInputFile">Product Picture</label>
											<div class="input-group">
												<div class="custom-file">
													<input type="file" name="productImage"
														class="custom-file-input" id="exampleInputFile"> <label
														class="custom-file-label" for="exampleInputFile">Choose
														file</label>
												</div>
												<div class="input-group-append">
													<span class="input-group-text">Upload</span>
												</div>
											</div>
										</div>

									</div>
									<!-- /.card-body -->

									<div class="card-footer">
										<input type="hidden" name="productID"
											value="<%=product.getProductID()%>">
										<button type="submit" class="btn btn-primary float-right">Update</button>
									</div>
	
								</form>
							</div>
							<!-- /.card -->
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
				</div>
				<!--/.col (right) -->
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
	<!-- bs-custom-file-input -->
	<!-- 	<script src="../js/bs-custom-file-input.min.js"></script> -->
	<!-- AdminLTE App -->
	<script src="js/adminlte.min.js"></script>
	<!-- Font Awesome -->
	<script src="https://kit.fontawesome.com/52adbacfd8.js"
		crossorigin="anonymous"></script>

	<!-- Page specific script -->
	<script>
		$(function() {
			bsCustomFileInput.init();
		});
	</script>
</body>
</html>
