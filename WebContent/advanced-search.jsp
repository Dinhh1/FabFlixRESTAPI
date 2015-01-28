<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="cs122b.DB.*, cs122b.Models.*, java.util.ArrayList, cs122b.Tables.*"%>
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

<!-- Demo Purpose Only. Should be removed in production -->
<link rel="stylesheet" href="assets/css/config.css">

<link href="assets/css/green.css" rel="alternate stylesheet"
	title="Green color">
<link href="assets/css/blue.css" rel="alternate stylesheet"
	title="Blue color">
<link href="assets/css/red.css" rel="alternate stylesheet"
	title="Red color">
<link href="assets/css/orange.css" rel="alternate stylesheet"
	title="Orange color">
<link href="assets/css/dark-green.css" rel="alternate stylesheet"
	title="Darkgreen color">
<!-- Demo Purpose Only. Should be removed in production : END -->


<!-- Icons/Glyphs -->
<link rel="stylesheet" href="assets/css/font-awesome.min.css">

<!-- Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700'
	rel='stylesheet' type='text/css'>

<!-- Favicon -->
<link rel="shortcut icon" href="assets/images/favicon.ico">

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
							<li><a href="#"><i class="icon fa fa-shopping-cart"></i>My
									Cart</a></li>
							<li><a href="#"><i class="icon fa fa-key"></i>Checkout</a></li>
							<li><a href="#"><i class="icon fa fa-sign-in"></i>Login</a></li>
						</ul>
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
							<a href="index.jsp"> <img src="assets/images/logo.png" alt="">
							</a>
						</div>
						<!-- /.logo -->
						<!-- ============================================================= LOGO : END ============================================================= -->
					</div>
					<!-- /.logo-holder -->

					<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
						<!-- ============================================================= SEARCH AREA ============================================================= -->
						<div class="search-area">
							<form action="">
								<div class="control-group">
									<input class="search-field" placeholder="Search here..." /> <a
										class="search-button" href="#"></a>

								</div>
							</form>
						</div>
						<!-- /.search-area -->
						<!-- ============================================================= SEARCH AREA : END ============================================================= -->
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
									<li class="dropdown"><a href="index.jsp">Home</a></li>
									<li class="active dropdown yamm-fw"><a
										href="advanced-search.jsp" data-hover="dropdown"
										class="dropdown-toggle" data-toggle="dropdown">Advanced
											Search</a> <!--		</li>
			
		</ul><!-- /.navbar-nav -->
										<div class="clearfix"></div></li>
								</ul>
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
	<div class="breadcrumb">
		<div class="container">
			<div class="breadcrumb-inner">
				<ul class="list-inline list-unstyled">
					<li><a href="index.jsp">Home</a></li>
					<li class='active'>Advanced Search</li>
				</ul>
			</div>
			<!-- /.breadcrumb-inner -->
		</div>
		<!-- /.container -->
	</div>
	<!-- /.breadcrumb -->

	<div class="body-content outer-top-bd">
		<div class="container">
			<div class="sign-in-page inner-bottom-sm">
				<div class="row">
					<!-- Sign-in -->
					<div class="col-md-6 col-sm-6 sign-in">
						<h4 class="">Advanced Search</h4>
						<form class="register-form outer-top-xs" id="advanced-search-form"
							role="form" action="search" method="GET">
							<div class="form-group">
								<label class="info-title" for="title">Title</label> <input
									type="text"
									class="form-control unicase-form-control text-input" id="title"
									name="title">
							</div>
							<div class="form-group">
								<label class="info-title" for="year">Year</label> <input
									type="text"
									class="form-control unicase-form-control text-input" id="year"
									name="year">
							</div>
							<div class="form-group">
								<label class="info-title" for="director">Director</label> <input
									type="text"
									class="form-control unicase-form-control text-input"
									id="director" name="director">
							</div>
							<div class="form-group">
								<label class="info-title" for="starFirstName">Star's
									First Name</label> <input type="text"
									class="form-control unicase-form-control text-input"
									id="starFirstName" name="starFirstName">
							</div>
							<div class="form-group">
								<label class="info-title" for="starLastName">Star's Last
									Name</label> <input type="text"
									class="form-control unicase-form-control text-input"
									id="starLastName" name="starLastName">
							</div>
							<div class="radio outer-xs">
								<label> <input type="radio" name="fuzzySearch"
									id="fuzzySearch" value="selected">Fuzzy Search <span>
										*will match spelling errors to some extent </span>
								</label>
							</div>
							<div class="radio outer-xs">
								<label> <input type="radio" name="matchSubstring"
									id="matchSubstring" value="selected">Match Substring <span>
										*will match portions of a larger string </span>
								</label>
							</div>
							<input type="hidden" name="order" value="t_asc" />
    						<input type="hidden" name="page" value="1" />
    						<input type="hidden" name="lmt" value="6" />
							<button type="submit"
								class="btn-upper btn btn-primary checkout-page-button">Search</button>
						</form>
					</div>
					<!-- Sign-in -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.sigin-in-->
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
						Copyright Â© 2014 <a href="index.jsp">FabFlix. </a> - All rights
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

</body>
</html>