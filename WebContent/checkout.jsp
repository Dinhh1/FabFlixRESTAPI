<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="cs122b.DB.*, cs122b.Models.*, java.util.*, cs122b.Tables.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<!-- Nick's Changes -->
<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="MediaCenter, Template, eCommerce">
<meta name="robots" content="all">

<title>FabFlix</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<!-- Customizable CSS -->
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/green.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.transitions.css">
<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
<link href="assets/css/lightbox.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/animate.min.css">
<link rel="stylesheet" href="assets/css/rateit.css">
<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

<!-- Icons/Glyphs -->
<link rel="stylesheet" href="assets/css/font-awesome.min.css">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700'
	rel='stylesheet' type='text/css'>



<!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->

</head>
<body class="cnt-home">



	<!-- ============================================== HEADER ============================================== -->
	<header class="header-style-1">

		<!-- ============================================== TOP MENU ============================================== -->
		<div class="top-bar animate-dropdown">
			<div class="container">
				<div class="header-top-inner">
					<div class="cnt-account">
						<ul class="list-unstyled">
							<li><a href="cart"><i class="icon fa fa-shopping-cart"></i>My
									Cart</a></li>
							<li><a href="checkout"><i class="icon fa fa-key"></i>Checkout</a></li>
							<li><a id='login' href="#" onclick="checkLogin()"><i
									class="icon fa fa-sign-in"></i> <%
						 	if (session.getAttribute("user") == null) {
						 				 out.print("Login");
						 			 } else {
						 				 out.print("Logout");
						 			 }
 							%></a></li></ul>
					</div>
					<!-- /.cnt-account -->
					<div class="clearfix"></div>
				</div>
				<!-- /.header-top-inner -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.header-top -->
		<!-- ============================================== TOP MENU : END ============================================== -->
		<div class="main-header">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
						<!-- ============================================================= LOGO ============================================================= -->
						<div class="logo">
							<a href="/FabFlixRESTAPI/"> <img src="assets/images/logo.png" alt="">

							</a>
						</div>
						<!-- /.logo -->
						<!-- ============================================================= LOGO : END ============================================================= -->
					</div>
					<!-- /.logo-holder -->

					<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
						<!-- ============================================================= SEARCH AREA ============================================================= -->
						<div class="search-area">
							<form action="browse" method="GET">
								<div class="control-group">
									<input type="hidden" name="by" value="search" /> <input
										id="search_box" type="text" class="search-field"
										placeholder="Search here..." name="arg" /> <input
										type="hidden" name="order" value="t_asc" /> <input
										type="hidden" name="page" value="1" /> <input type="hidden"
										name="lmt" value="6" /> <a class="search-button" href="#"
										onclick="searchMovies(this)"></a>
								</div>
							</form>
						</div>
						<!-- /.search-area -->
						<!-- ============================================================= SEARCH AREA : END ====================================================== -->
					</div>
					<!-- /.top-search-holder -->
				</div>
				<!-- /.row -->

			</div>
			<!-- /.container -->

		</div>
		<!-- /.main-header -->

		<!-- ============================================== NAVBAR ============================================== -->
		<div class="header-nav animate-dropdown">
			<div class="container">
				<div class="yamm navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button data-target="#mc-horizontal-menu-collapse"
							data-toggle="collapse" class="navbar-toggle collapsed"
							type="button">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="nav-bg-class">
						<div class="navbar-collapse collapse"
							id="mc-horizontal-menu-collapse">
							<div class="nav-outer">
								<ul class="nav navbar-nav">
									<li class="active dropdown yamm-fw"><a
										href="/FabFlixRESTAPI/" data-hover="dropdown"
										class="dropdown-toggle" data-toggle="dropdown">Home</a></li>

									<li class="dropdown"><a href="advanced-search.jsp">Advanced
											Search</a></li>
								</ul>
								<!-- /.navbar-nav -->
								<div class="clearfix"></div>
							</div>
							<!-- /.nav-outer -->
						</div>
						<!-- /.navbar-collapse -->


					</div>
					<!-- /.nav-bg-class -->
				</div>
				<!-- /.navbar-default -->
			</div>
			<!-- /.container-class -->

		</div>
		<!-- /.header-nav -->
		<!-- ============================================== NAVBAR : END ============================================== -->

	</header>

	<!-- ============================================== HEADER : END ============================================== -->

	<div class="body-content outer-top-bd">
		<div class="container">
			<div class="checkout-box inner-bottom-sm">
				<div class="row">
					<div class="col-md-8">
						<div class="panel-group checkout-steps" id="accordion">
							<!-- checkout-step-01  -->
							<div class="panel panel-default checkout-step-01">

								<!-- panel-heading -->
								<div class="panel-heading">
									<h4 class="unicase-checkout-title">
										<a data-toggle="collapse" class="" data-parent="#accordion"
											href="#collapseOne"> <span>1</span>Order Information
										</a>
									</h4>
								</div>
								<!-- panel-heading -->

								<div id="collapseOne" class="panel-collapse collapse in">

									<!-- panel-body  -->
									<div class="panel-body">
										<div class="row">
											<div class="row">
												<p class="info-title" style="color: red">
													<%
														if ((String) session.getAttribute("checkout-status") != null)
															out.print(session.getAttribute("checkout-status"));
													%>
												</p>
												<p class="text title-tag-lin">Please fill out all
													customer information</p>
												<form class="register-form" role="form" action="checkout"
													method="POST">
													<div class="form-group">
														<label class="info-title" for="exampleInputEmail">Credit
															Card Number<span>*</span>
														</label> <input type="text"
															class="form-control unicase-form-control text-input"
															id="exampleInputEmail1" name="cc_num">
													</div>
													<div class="form-group">
														<label class="info-title" for="exampleInputPassword">Expiration
															Date (YYYY-MM-DD)<span>*</span>
														</label> <input type="text"
															class="form-control unicase-form-control text-input"
															id="exampleInputPassword" name="exp_date">
													</div>
													<div class="form-group">
														<label class="info-title" for="exampleInputPassword">First
															Name<span>*</span>
														</label> <input type="text"
															class="form-control unicase-form-control text-input"
															id="exampleInputPassword" name="f_name">
													</div>
													<div class="form-group">
														<label class="info-title" for="exampleInputPassword">Last
															Name<span>*</span>
														</label> <input type="text"
															class="form-control unicase-form-control text-input"
															id="exampleInputPassword" name="l_name">
													</div>
													<input type="submit"
														class="btn-upper btn btn-primary checkout-page-button">
													<button></button>
												</form>
											</div>
										</div>
									</div>
									<!-- panel-body  -->

								</div>
								<!-- row -->
							</div>
							<!-- checkout-step-01  -->

						</div>
						<!-- /.checkout-steps -->
					</div>
				</div>
				<!-- /.row -->
			</div>
			<!-- /.checkout-box -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.body-content -->
	<!-- ============================================================= FOOTER ============================================================= -->
	<footer id="footer" class="footer color-bg">
		<div class="copyright-bar">
			<div class="container">
				<div class="col-xs-12 col-sm-6 no-padding">
					<div class="copyright">
						Copyright © 2014 <a href="index.jsp">FabFlix</a> - All rights
						Reserved
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- ============================================================= FOOTER : END============================================================= -->

	<!-- JavaScripts placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery-1.11.1.min.js" type="text/javascript"></script>

	<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

	<script src="assets/js/bootstrap-hover-dropdown.min.js"
		type="text/javascript"></script>
	<script src="assets/js/owl.carousel.min.js" type="text/javascript"></script>

	<script src="assets/js/echo.min.js" type="text/javascript"></script>
	<script src="assets/js/jquery.easing-1.3.min.js" type="text/javascript"></script>
	<script src="assets/js/bootstrap-slider.min.js" type="text/javascript"></script>
	<script src="assets/js/jquery.rateit.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="assets/js/lightbox.min.js"></script>
	<script src="assets/js/bootstrap-select.min.js" type="text/javascript"></script>
	<script src="assets/js/wow.min.js" type="text/javascript"></script>
	<script src="assets/js/scripts.js" type="text/javascript"></script>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			checkLogin();
		});

		function checkLogin() {
			if ($('#login').text().trim() == "Login") {
				$('#login').attr('href', 'login');
			} else {
				// bring them to a logout a page 
				$('#login').attr('href', 'logout');
			}
		}

		function searchMovies(tag) {
			var query = $("#search_box").val();
			var query = query.replace(/\s/g, '%');
			urlString = "browse?by=search&arg=" + query
					+ "&order=t_asc&page=1&lmt=6";
			tag.href = urlString;
		}
	</script>



</body>
</html>