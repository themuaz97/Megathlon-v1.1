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
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#" role="button"><i class="fas fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="../../index3.html" class="nav-link">Home</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"> <i
						class="fas fa-search"></i>
				</a>
					<div class="navbar-search-block">
						<form class="form-inline">
							<div class="input-group input-group-sm">
								<input class="form-control form-control-navbar" type="search"
									placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button class="btn btn-navbar" type="submit">
										<i class="fas fa-search"></i>
									</button>
									<button class="btn btn-navbar" type="button"
										data-widget="navbar-search">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>

				<!-- Messages Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-comments"></i>
						<span class="badge badge-danger navbar-badge">3</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="../../dist/img/user1-128x128.jpg" alt="User Avatar"
									class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Brad Diesel <span class="float-right text-sm text-danger"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">Call me whenever you can...</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="../../dist/img/user8-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										John Pierce <span class="float-right text-sm text-muted"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">I got your message bro</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="../../dist/img/user3-128x128.jpg" alt="User Avatar"
									class="img-size-50 img-circle mr-3">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										Nora Silvester <span class="float-right text-sm text-warning"><i
											class="fas fa-star"></i></span>
									</h3>
									<p class="text-sm">The subject goes here</p>
									<p class="text-sm text-muted">
										<i class="far fa-clock mr-1"></i> 4 Hours Ago
									</p>
								</div>
							</div> <!-- Message End -->
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Messages</a>
					</div></li>
				<!-- Notifications Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="far fa-bell"></i> <span
						class="badge badge-warning navbar-badge">15</span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<span class="dropdown-item dropdown-header">15
							Notifications</span>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-envelope mr-2"></i> 4 new messages <span
							class="float-right text-muted text-sm">3 mins</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i
							class="fas fa-users mr-2"></i> 8 friend requests <span
							class="float-right text-muted text-sm">12 hours</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item"> <i class="fas fa-file mr-2"></i>
							3 new reports <span class="float-right text-muted text-sm">2
								days</span>
						</a>
						<div class="dropdown-divider"></div>
						<a href="#" class="dropdown-item dropdown-footer">See All
							Notifications</a>
					</div></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"> <i
						class="fas fa-expand-arrows-alt"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"
					role="button"> <i class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="../../index3.html" class="brand-link"> <img
				src="img/Megathlon logo.png" alt="Megathlon Logo"
				class="brand-image img-rectangle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">IMS</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="../img/user2-160x160.jpg" class="img-circle elevation-2"
							alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block"><%out.println(session.getAttribute("name"));%></a>
					</div>
				</div>

				<!-- SidebarSearch Form -->
				<div class="form-inline">
					<div class="input-group" data-widget="sidebar-search">
						<input class="form-control form-control-sidebar" type="search"
							placeholder="Search" aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-sidebar">
								<i class="fas fa-search fa-fw"></i>
							</button>
						</div>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item"><a href="/Megathlon/SupplierList" class="nav-link"> <i
								class="nav-icon fas fa-tachometer-alt"></i>
								<p>
									Supplier
								</p>
						</a>
						</li>
					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>
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
													<label for="exampleInputSupplier">Contact Number</label> <input
														type="text" class="form-control" name="supplierContact"
														id="exampleInputEmail1" placeholder="Contact Number">
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