<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>

<%@page import="com.Megathlon.Beans.Suppliers"%>
<%@page import="com.Megathlon.Beans.Account" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Megahtlon <b>IMS</b></title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<script src="https://kit.fontawesome.com/52adbacfd8.js" crossorigin="anonymous"></script>
<!-- <link rel="stylesheet" href="css/all.min.css"> -->
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="css/OverlayScrollbars.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="css/adminlte.min.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<!-- Site wrapper -->
	<div class="wrapper">
		<%@include file="inc/NavBar.jsp"%>
		
		<div class="content-wrapper">
			<section class="content pt-2">
				<div class="card">
					<!-- /.card-header -->
					<div class="card-body  ">
						<button type="button" class="btn btn-primary my-3 float-right"
							data-toggle="modal" data-target="#addsupplier">Add
							Supplier</button>
						<div class="modal fade" id="addsupplier" tabindex="-1"
							aria-labelledby="exampleModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header bg-primary">
										<h5 class="modal-title" id="exampleModalLabel">Supplier
											Form</h5>
									</div>
									<div class="modal-body">
										<form action="/Megathlon/Supplier" method="post"
											class="mx-5 text-dark">
											<div class="card-body pb-0">
												<div class="form-group">
													<label for="exampleSupplierFirstName">Supplier Name</label>
													<input type="text" class="form-control" name="supplierName"
														id="exampleInputFirstName" placeholder="First Name">
												</div>
												<div class="form-group">
													<label for="exampleSupplierEmail">Supplier Email</label>
													<input type="text" class="form-control" name="supplierEmail"
														id="exampleInputEmail" placeholder="Email">
												</div>
												<div class="form-group">
													<label for="exampleInputSupplier">Contact Number</label> <input
														type="text" class="form-control" name="supplierContact"
														id="exampleInputContact" placeholder="Contact Number">
												</div>
												<div class="form-group">
													<label for="exampleTextLocation">Location</label> <input
														type="text" class="form-control" name="supplierLocation"
														id="exampleInputAddress1" placeholder="Location">
												</div>
											</div>
											<!-- /.card-body -->
											<div class="card-footer bg-white  ">
												<div class="d-flex justify-content-between">
													<div>
														<button type="button" class="btn btn-danger"
															data-dismiss="modal">Close</button>
													</div>
													<div>
														<button type="reset" class="btn btn-secondary">Reset</button>
														<button type="submit" class="btn btn-primary">Submit</button>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div>
							<table class="table">
								<thead class="thead-light">
									<tr>
										<th scope="col" style="width: fit-content">#</th>
										<th scope="col">Name</th>
										<th scope="col">Email</th>
										<th scope="col">Contact</th>
										<th scope="col">Location</th>
										<th scope="col" style="width: fit-content">Action</th>
									</tr>
								</thead>
								<tbody>
									<%
									ArrayList<Suppliers> supplierlist = (ArrayList<Suppliers>) request.getAttribute("supplierlist");

									for (int i = 0; i < supplierlist.size(); ++i) {
									%>

									<tr>
										<th scope="row"><%=i + 1%>.</th>
										<td><%=supplierlist.get(i).getSupplierName()%></td>
										<td><%=supplierlist.get(i).getSupplierEmail()%></td>
										<td><%=supplierlist.get(i).getSupplierContact()%></td>
										<td><%=supplierlist.get(i).getSupplierLocation() %></td>
										<td>
											<!-- Edit Button -->
											<button type="button"
												class="btn btn-primary btn-lg btn-block btn-sm"
												data-toggle="modal" data-target="#editsupplier<%=i%>">Edit</button>
											<a href="/Megathlon/ManageSupplierList?supplierID=<%=supplierlist.get(i).getSupplierID()%>"  class="btn btn-danger btn-lg btn-block btn-sm">Delete</a> 
											
											<!-- Edit Modal -->
											<div class="modal fade" id="editsupplier<%=i%>"
												tabindex="-1" aria-labelledby="exampleModalLabel"
												aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header bg-primary">
															<h5 class="modal-title" id="exampleModalLabel">Supplier
																Form</h5>
														</div>
														<div class="modal-body">
															<form action="/Megathlon/ManageSupplierList"
																method="post" class="mx-5 text-dark">
																<div class="card-body pb-0">
																<input type="hidden" name="supplierID" value="<%= supplierlist.get(i).getSupplierID() %>">
																	<div class="form-group">
																		<label for="exampleSupplierFirstName">Supplier
																			Name</label> <input type="text" class="form-control"
																			name="supplierName"
																			value="<%=supplierlist.get(i).getSupplierName()%>"
																			id="exampleInputFirstName" placeholder="First Name">
																	</div>
																	<div class="form-group">
																		<label for="exampleSupplierFirstName">Supplier
																			Email</label> <input type="text" class="form-control"
																			name="supplierEmail"
																			value="<%=supplierlist.get(i).getSupplierEmail()%>"
																			id="exampleInputEmail" placeholder="Email">
																	</div>
																	<div class="form-group">
																		<label for="exampleInputSupplier">Contact
																			Number</label> <input type="text" class="form-control"
																			name="supplierContact"
																			value="<%=supplierlist.get(i).getSupplierContact()%>"
																			id="exampleInputEmail1" placeholder="Contact Number">
																	</div>
																	<div class="form-group">
																		<label for="exampleTextLocation">Location</label> <input
																			type="text" class="form-control"
																			name="supplierLocation"
																			value="<%=supplierlist.get(i).getSupplierLocation()%>"
																			id="exampleInputAddress1" placeholder="Location">
																	</div>
																</div>
																<!-- /.card-body -->
																<div class="card-footer bg-white  ">
																	<div class="d-flex justify-content-between">
																		<div>
																			<button type="button" class="btn btn-danger"
																				data-dismiss="modal">Close</button>
																		</div>
																		<div>
																			<button type="reset" class="btn btn-secondary">Reset</button>
																			<button type="submit" class="btn btn-primary">Edit</button>
																		</div>
																	</div>
																</div>
															</form>
														</div>
													</div>
												</div>
											</div>
										</td>
									</tr>

									<%
									}
									%>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</section>
		</div>




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
	<!-- overlayScrollbars -->
	<script
		src="js/jquery.overlayScrollbars.min.js"></script>
	<!-- AdminLTE App -->
	<script src="js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<!-- <script src="../js/demo.js"></script> -->
</body>

</html>