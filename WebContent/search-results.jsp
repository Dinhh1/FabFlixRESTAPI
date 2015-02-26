<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="cs122b.DB.*, cs122b.Models.*, java.util.*, cs122b.Tables.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
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
	<header class="header-style-1 header-style-2">

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
 %></a></li>
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
									<li class="active dropdown yamm-fw"><a href="/FabFlixRestAPI/"
										data-hover="dropdown" class="dropdown-toggle"
										data-toggle="dropdown">Home</a></li>
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
	<%
		ArrayList<Movie> movies = (ArrayList<Movie>)session.getAttribute("movie_query");
	%>
	<!-- ============================================== HEADER : END ============================================== -->
	<div class="body-content outer-top-xs" id="top-banner-and-menu">
		<div class="container">
			<div class="furniture-container homepage-container">
				<div class="row">

					<div class="col-xs-12 col-sm-12 col-md-3 sidebar">
						<!-- ================================== TOP NAVIGATION ================================== -->
						<div class="side-menu side-menu2 animate-dropdown outer-bottom-xs">
							<div class="head">
								<i class="icon fa fa-align-justify fa-fw"></i> Browse
							</div>
							<nav class="yamm megamenu-horizontal" role="navigation">
								<ul class="nav">
									<li class="dropdown menu-item"><a href="#"
										class="dropdown-toggle" data-toggle="dropdown">Genre</a>
										<ul class="dropdown-menu mega-menu">
											<li class="yamm-content">
												<div class="row">
													<div class="col-sm-12 col-md-3">
														<ul class="links list-unstyled">
															<li><a href="#" onclick='categoryFunction(this)'>Action</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Adventure</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Animation</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Biography</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Comedy</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Crime</a></li>
														</ul>
													</div>
													<!-- /.col -->
													<div class="col-sm-12 col-md-3">
														<ul class="links list-unstyled">
															<li><a href="#" onclick='categoryFunction(this)'>Documentary</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Drama</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Family</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Fantasy</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Film-Noir</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>History</a></li>
														</ul>
													</div>
													<!-- /.col -->
													<div class="col-sm-12 col-md-3">
														<ul class="links list-unstyled">
															<li><a href="#" onclick='categoryFunction(this)'>Horror</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Music</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Musical</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Mystery</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Romance</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Sci-Fi</a></li>
														</ul>
													</div>
													<!-- /.col -->
													<div class="col-sm-12 col-md-3">
														<ul class="links list-unstyled">
															<li><a href="#" onclick='categoryFunction(this)'>Sport</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Thriller</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>War</a></li>
															<li><a href="#" onclick='categoryFunction(this)'>Western</a></li>
														</ul>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.row -->
											</li>
											<!-- /.yamm-content -->
										</ul>
										<!-- /.dropdown-menu --></li>
									<!-- /.menu-item -->

									<li class="dropdown menu-item"><a href="#"
										class="dropdown-toggle" data-toggle="dropdown">Title</a>
										<ul class="dropdown-menu mega-menu">
											<li class="yamm-content">
												<div class="row">
													<div class="col-sm-12 col-md-3">
														<ul class="links list-unstyled">
															<li><a href="#" onclick='titleQuery(this)'>0</a></li>
															<li><a href="#" onclick='titleQuery(this)'>1</a></li>
															<li><a href="#" onclick='titleQuery(this)'>2</a></li>
															<li><a href="#" onclick='titleQuery(this)'>3</a></li>
															<li><a href="#" onclick='titleQuery(this)'>4</a></li>
															<li><a href="#" onclick='titleQuery(this)'>5</a></li>
															<li><a href="#" onclick='titleQuery(this)'>6</a></li>
															<li><a href="#" onclick='titleQuery(this)'>7</a></li>
															<li><a href="#" onclick='titleQuery(this)'>8</a></li>
														</ul>
													</div>
													<!-- /.col -->
													<div class="col-sm-12 col-md-3">
														<ul class="links list-unstyled">
															<li><a href="#" onclick='titleQuery(this)'>9</a></li>
															<li><a href="#" onclick='titleQuery(this)'>A</a></li>
															<li><a href="#" onclick='titleQuery(this)'>B</a></li>
															<li><a href="#" onclick='titleQuery(this)'>C</a></li>
															<li><a href="#" onclick='titleQuery(this)'>D</a></li>
															<li><a href="#" onclick='titleQuery(this)'>E</a></li>
															<li><a href="#" onclick='titleQuery(this)'>F</a></li>
															<li><a href="#" onclick='titleQuery(this)'>G</a></li>
															<li><a href="#" onclick='titleQuery(this)'>H</a></li>
														</ul>
													</div>
													<!-- /.col -->
													<div class="col-sm-12 col-md-3">
														<ul class="links list-unstyled">
															<li><a href="#" onclick='titleQuery(this)'>I</a></li>
															<li><a href="#" onclick='titleQuery(this)'>J</a></li>
															<li><a href="#" onclick='titleQuery(this)'>K</a></li>
															<li><a href="#" onclick='titleQuery(this)'>L</a></li>
															<li><a href="#" onclick='titleQuery(this)'>M</a></li>
															<li><a href="#" onclick='titleQuery(this)'>N</a></li>
															<li><a href="#" onclick='titleQuery(this)'>O</a></li>
															<li><a href="#" onclick='titleQuery(this)'>P</a></li>
															<li><a href="#" onclick='titleQuery(this)'>Q</a></li>
														</ul>
													</div>
													<!-- /.col -->
													<div class="col-sm-12 col-md-3">
														<ul class="links list-unstyled">
															<li><a href="#" onclick='titleQuery(this)'>R</a></li>
															<li><a href="#" onclick='titleQuery(this)'>S</a></li>
															<li><a href="#" onclick='titleQuery(this)'>T</a></li>
															<li><a href="#" onclick='titleQuery(this)'>U</a></li>
															<li><a href="#" onclick='titleQuery(this)'>V</a></li>
															<li><a href="#" onclick='titleQuery(this)'>W</a></li>
															<li><a href="#" onclick='titleQuery(this)'>X</a></li>
															<li><a href="#" onclick='titleQuery(this)'>Y</a></li>
															<li><a href="#" onclick='titleQuery(this)'>Z</a></li>
														</ul>
													</div>
													<!-- /.col -->
												</div>
												<!-- /.row -->
											</li>
											<!-- /.yamm-content -->
										</ul>
										<!-- /.dropdown-menu --></li>
									<!-- /.menu-item -->


								</ul>
								<!-- /.nav -->
							</nav>
							<!-- /.megamenu-horizontal -->
						</div>
						<!-- /.side-menu -->
						<!-- ================================== TOP NAVIGATION : END ================================== -->
					</div>
					<!-- /.sidemenu-holder -->

					<!-- ============================================== SCROLL TABS ============================================== -->
					<div class='col-md-9'>
						<div class="clearfix filters-container m-t-10">
							<div class="row">
								<div class="col col-sm-12 col-md-6">
									<div class="col col-sm-3 col-md-6 no-padding">
										<div class="lbl-cnt">
											<span class="lbl">Sort by</span>
											<div class="fld inline">
												<div
													class="dropdown dropdown-small dropdown-med dropdown-white inline">
													<button id="sort_button" data-toggle="dropdown"
														type="button" class="btn dropdown-toggle">
														Title: A to Z<span class="caret"></span>
													</button>

													<ul role="menu" class="dropdown-menu">
														<li role="presentation"><a href="#"
															onclick='reorder(this)'>Title: A to Z</a></li>
														<li role="presentation"><a href="#"
															onclick='reorder(this)'>Title: Z to A</a></li>
														<li role="presentation"><a href="#"
															onclick='reorder(this)'>Year: Earliest</a></li>
														<li role="presentation"><a href="#"
															onclick='reorder(this)'>Year: Latest</a></li>
													</ul>
												</div>
											</div>
											<!-- /.fld -->
										</div>
										<!-- /.lbl-cnt -->
									</div>
									<!-- /.col -->
									<div class="col col-sm-3 col-md-6 no-padding">
										<div class="lbl-cnt">
											<span class="lbl">Results Per Page</span>
											<div class="fld inline">
												<div
													class="dropdown dropdown-small dropdown-med dropdown-white inline">
													<button id="size_limit" data-toggle="dropdown"
														type="button" class="btn dropdown-toggle">
														6 <span class="caret"></span>
													</button>

													<ul role="menu" class="dropdown-menu">
														<li role="presentation"><a href="#"
															onclick='resultsPerPageChange(this)'>6</a></li>
														<li role="presentation"><a href="#"
															onclick='resultsPerPageChange(this)'>9</a></li>
														<li role="presentation"><a href="#"
															onclick='resultsPerPageChange(this)'>18</a></li>
														<li role="presentation"><a href="#"
															onclick='resultsPerPageChange(this)'>36</a></li>
														<li role="presentation"><a href="#"
															onclick='resultsPerPageChange(this)'>72</a></li>
													</ul>
												</div>
											</div>
											<!-- /.fld -->
										</div>
										<!-- /.lbl-cnt -->
									</div>
									<!-- /.col -->
								</div>
								<!-- /.col -->
								<div class="col col-sm-6 col-md-4 text-right">
									<div class="pagination-container">
										<ul class="list-inline list-unstyled">
											<li class="prev"><a href="#" onclick="prevPressed(this)"><i
													class="fa fa-angle-left"></i></a></li>
											<li class="next"><a href="#"
												onclick='nextPressed(this)'><i
													class="fa fa-angle-right"></i></a></li>
										</ul>
										<!-- /.list-inline -->
									</div>
									<!-- /.pagination-container -->
								</div>
								<!-- /.col -->
							</div>
							<!-- /.row -->
						</div>
						<!-- /.clearfix filters-container -->
						<div class="search-result-container">
							<div id="myTabContent" class="tab-content">
								<div class="tab-pane active " id="grid-container">
									<div class="category-product  inner-top-vs">
										<div class="row">

											<%
												if (movies != null) {
													String htmlSkeleton = "<div class='col-sm-6 col-md-4 wow fadeInUp'>";
													htmlSkeleton += "<div class='products'>";
													htmlSkeleton += "<div class='product'>";
													htmlSkeleton += "<div class='product-image'>";
													htmlSkeleton += "<div class='image'>";
													htmlSkeleton += "<a href='__URL__'><img src='__IMG__' alt='' onerror=\"this.src='assets/images/no_image.png'\"></a>";
													htmlSkeleton += "</div><!-- /.image -->";
													htmlSkeleton += "</div><!-- /.product-image -->";
													htmlSkeleton += "<div class='product-info text-left'>";
													htmlSkeleton += "<div class='popup'>";
													htmlSkeleton += "<a href='__URL__'><img src='__IMG__' alt='' onerror=\"this.src='assets/images/no_image.png'\"></a>";
													htmlSkeleton += "<h6 class='name'>Stars: __STARS__</h6>";
													htmlSkeleton += "<h6 class='name'>Year: __RELEASE_YEAR__</h6>";
													htmlSkeleton += "</div><!-- /.popup -->";
													htmlSkeleton += "<h3 class='name'><a href='__URL__'>__TITLE__</a></h3>";
													htmlSkeleton += "<div class='product-price'>";	
													htmlSkeleton += "<span class='price'>$1.49</span>";	
													htmlSkeleton += "</div><!-- /.product-price -->";
													htmlSkeleton += "</div><!-- /.product-info -->";
													htmlSkeleton += "<div class='cart clearfix animate-effect'>";
													htmlSkeleton += "<div class='action'>";
													htmlSkeleton += "<ul class='list-unstyled'>";
													htmlSkeleton += "<li class='add-cart-button btn-group'>";
													htmlSkeleton += "<div class='action'><a href='__ADD_URL__' class='lnk btn btn-primary'>Add to Cart</a></div>";
													htmlSkeleton += "</li>";
													htmlSkeleton += "</ul>";
													htmlSkeleton += "</div><!-- /.action -->";
													htmlSkeleton += "</div><!-- /.cart -->";
													htmlSkeleton += "</div><!-- /.product -->";
													htmlSkeleton += "</div><!-- /.products -->";
													htmlSkeleton += "</div><!-- /.item -->";
													
													for (Movie m : movies) 
													{
												String htmlRow = htmlSkeleton;
												htmlRow = htmlRow.replaceFirst("__URL__", "movies?id=" + m.getId());
												htmlRow = htmlRow.replaceFirst("__IMG__", m.getBannerURL());
												htmlRow = htmlRow.replaceFirst("__URL__", "movies?id=" + m.getId());
												htmlRow = htmlRow.replaceFirst("__IMG__", m.getBannerURL());
												
												String starsString = "";
												ArrayList<Star> stars = m.getStarsOfMovie();
												
												for (Star star : stars)
												{
													starsString += star.getFirstName() + " " + star.getLastName() + ", ";
												}
												
												starsString = starsString.substring(0, starsString.length() - 2);
												
												htmlRow = htmlRow.replaceFirst("__STARS__", starsString);
												htmlRow = htmlRow.replaceFirst("__RELEASE_YEAR__", String.valueOf(m.getYear()));
												htmlRow = htmlRow.replaceFirst("__URL__", "movies?id=" + m.getId());
												htmlRow = htmlRow.replaceFirst("__TITLE__", m.getTitle());
												htmlRow = htmlRow.replaceFirst("__ADD_URL__", "cart?mid=" + m.getId() + "&action=add");
												out.println(htmlRow);
													}
												} else {
													System.out.println("error in movie query");
												}
											%>

										</div>
										<!-- /.row -->
									</div>
									<!-- /.category-product -->
								</div>
								<!-- /.tab-pane -->
							</div>
							<!-- /.tab-content -->
							<div class="clearfix filters-container">
								<div class="text-right">
									<div class="pagination-container">
										<ul class="list-inline list-unstyled">
											<li class="prev"><a href="#" onclick="prevPressed(this)"><i
													class="fa fa-angle-left"></i></a></li>
											<li class="next"><a href="#"
												onclick='nextPressed(this)'><i
													class="fa fa-angle-right"></i></a></li>
										</ul>
										<!-- /.list-inline -->
									</div>
									<!-- /.pagination-container -->
								</div>
								<!-- /.text-right -->
							</div>
							<!-- /.filters-container -->
						</div>
						<!-- /.search-result-container -->
					</div>
					<!-- /.col -->

				</div>
				<!-- /.row -->

				<!-- ============================================================= FOOTER ============================================================= -->
				<footer id="footer" class="footer color-bg">

					<div class="copyright-bar">
						<div class="container">
							<div class="col-xs-12 col-sm-6 no-padding">
								<div class="copyright">
									Copyright Â© 2014 <a href="home.html">FabFlix.</a> - All rights
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
				<script src="assets/js/jquery.easing-1.3.min.js"
					type="text/javascript"></script>
				<script src="assets/js/bootstrap-slider.min.js"
					type="text/javascript"></script>
				<script src="assets/js/jquery.rateit.min.js" type="text/javascript"></script>
				<script type="text/javascript" src="assets/js/lightbox.min.js"></script>
				<script src="assets/js/bootstrap-select.min.js"
					type="text/javascript"></script>
				<script src="assets/js/wow.min.js" type="text/javascript"></script>
				<script src="assets/js/scripts.js" type="text/javascript"></script>

				<!-- For demo purposes â can be removed on production -->

				<script
					src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"
					type="text/javascript"></script>
				<script type="text/javascript">
	    $(document).ready(function () {
	    	initValues();
	    });
	    
	    function initValues() {
	    	var orderString = getParameterFromURL(document.URL, "order=");
	    	switch (orderString) {
	    	  case "t_asc":
	    		  $("#sort_button").html("Title: A to Z");
	    	    break;
	    	  case "t_desc":
	    		  $("#sort_button").html("Title: Z to A");
	    		  break;
	    	  case "y_asc":
	    		  $("#sort_button").html("Year: Earliest");
	    	  	break;
	    	  default:
	    		  $("#sort_button").html("Year: Latest");
	    		  break;
	    	}
	    	var pageLimit = getParameterFromURL(document.URL, "lmt=");
	    	$("#size_limit").html(pageLimit.replace("#",""));
	    }
	    
		function reorder(tag) {
			var urlTag = tag.innerHTML;
			var url = document.URL;
			url = url.replace("#","");
			var indexOfName = url.search('/Fab');
			var urlString = url.slice(indexOfName, url.length);
			/* var stringToReplace = getSortingOrderFromURL(urlString); */
			var stringToReplace = getParameterFromURL(urlString, "order=");
			if (urlTag === "Title: A to Z") {
				urlString = urlString.replace(stringToReplace, "t_asc");
			} else if (urlTag === "Title: Z to A") {
				urlString = urlString.replace(stringToReplace, "t_desc");
			} else if (urlTag === "Year: Earliest") {
				urlString = urlString.replace(stringToReplace, "y_asc");
			} else if (urlTag === "Year: Latest") {
				urlString = urlString.replace(stringToReplace, "y_desc");
			}
			var pageNumber = getParameterFromURL(urlString, "page=");
			urlString = urlString.replace(pageNumber, "1");
			tag.href = urlString; 		}
		
		function resultsPerPageChange(tag) {
			var urlTag = tag.innerHTML;
			var url = document.URL;
			url = url.replace("#", "");
			var urlString = url.slice(url.search("/Fab"), url.length);
			var stringToReplace = getParameterFromURL(urlString, "lmt=");
			urlString = urlString.replace(stringToReplace, urlTag);
			var pageNumber = getParameterFromURL(urlString, "page=");
			urlString = urlString.replace(pageNumber, "1");
			tag.href = urlString;
		}
		
		function getParameterFromURL(url, param) {
			var stringToReplace = "";
			var indexOfParm = url.search(param);
			var offset = indexOfParm + param.length;
			for (var i = offset; i < url.length; i++) {
				if (url[i] === "&")
					break;
				stringToReplace += url[i];
			}
			return stringToReplace;
		}
		
		function nextPressed(tag) {
			var urlTag = tag.innerHTML;
			var url = document.URL;
			url = url.replace("#", "");
			var urlString = url.slice(url.search("/Fab"), url.length);
			var stringToReplace = getParameterFromURL(urlString, "page=");
			var nextPage = parseInt(stringToReplace);
			nextPage = nextPage + 1;
			urlString = urlString.replace(stringToReplace, nextPage);
			tag.href = urlString;
		}
		
		function prevPressed(tag) {
			var urlTag = tag.innerHTML;
			var url = document.URL;
			url = url.replace("#", "");
			var urlString = url.slice(url.search("/Fab"), url.length);
			var stringToReplace = getParameterFromURL(urlString, "page=");
			var nextPage = parseInt(stringToReplace);
			if (nextPage == 1)
				return;
			nextPage = nextPage - 1;
			urlString = urlString.replace(stringToReplace, nextPage);
			tag.href = urlString;
		}
		
		function getSortingOrderFromURL(urlString) {
			var indexOfOrder = urlString.search("order=");
			var offset = indexOfOrder + 6;
			var stringToReplace = "";
			for (var i = offset; i < urlString.length; i++) {
				if (urlString[i] === "&")
					break;
				stringToReplace += urlString[i];
			}
			return stringToReplace;
		}
		
		function checkLogin() {
			if ($('#login').text().trim() == "Login") {
				$('#login').attr('href','login');
			} else {
				// bring them to a logout a page 
				$('#login').attr('href','logout');
			}
		}
		
		function searchMovies(tag) {
			var query = $("#search_box").val();
			var query = query.replace(/\s/g, '%');
			urlString = "browse?by=search&arg=" + query + "&order=t_asc&page=1&lmt=6";
			tag.href = urlString;
		}
		
		function categoryFunction(cat) {
			cat.href = "browse?by=genre&arg=" + cat.innerHTML
					+ "&order=t_asc&page=1&lmt=6";
		}

		function titleQuery(title) {
			title.href = "browse?by=title&arg=" + title.innerHTML
					+ "&order=t_asc&page=1&lmt=6";
		}
		
		$(".product-info.text-left").mouseover(function() {
			$(this).children(".popup").show();
		}).mouseout(function() {
		    $(this).children(".popup").hide();
		});
	</script>
				<!-- For demo purposes â can be removed on production : End -->



			</div>
		</div>
	</div>
</body>
</html>
