<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cs122b.DB.*, cs122b.Models.*, java.util.ArrayList, cs122b.Tables.*"
 %>
<!DOCTYPE html>
<html lang="en">
	<head>
	<%
	Movie m = (Movie)request.getSession().getAttribute("movie");
	if (m == null) {
		response.sendRedirect("404.html");
	}
	%> 
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>FabFlix: <% if (m != null) {out.print(m.getTitle());}%></title>

	    <!-- Bootstrap Core CSS -->
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    
	    <!-- Customizable CSS -->
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/green.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		<!-- Demo Purpose Only. Should be removed in production -->
		<link rel="stylesheet" href="assets/css/config.css">

		<link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
		<link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
		<link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link href="assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
		<!-- Demo Purpose Only. Should be removed in production : END -->

		<!-- Icons/Glyphs -->
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Fonts --> 
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		
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
					<li><a href="cart.jsp"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
					<li><a href="#"><i class="icon fa fa-key"></i>Checkout</a></li>
					<li><a id='login' href="#" onclick="checkLogin()"><i class="icon fa fa-sign-in" ></i>
					 <%
					 if (session.getAttribute("user") == null) {
						 out.print("Login");
					 } else {
						 out.print("Logout");
					 }
					%></a></li>
				</ul>
			<div class="clearfix"></div>
		</div><!-- /.header-top-inner -->
	</div><!-- /.container -->
</div><!-- /.header-top -->
<!-- ============================================== TOP MENU : END ============================================== -->
	<div class="main-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
					<!-- ============================================================= LOGO ============================================================= -->
<div class="logo">
	<a href="index.jsp">
		<img src="assets/images/logo.png" alt="">
	</a>
</div><!-- /.logo -->
<!-- ============================================================= LOGO : END ============================================================= -->				</div><!-- /.logo-holder -->
				<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
				
					<div class="contact-row">
</div><!-- /.contact-row -->
<!-- ============================================================= SEARCH AREA ============================================================= -->
<div class="search-area">
    <form action="browse" method="GET">
        <div class="control-group">
            <input type="hidden" name="by" value="search" />
            <input id="search_box" type="text" class="search-field" placeholder="Search here..." name="arg"/>
    		<input type="hidden" name="order" value="t_asc" />
    		<input type="hidden" name="page" value="1" />
    		<input type="hidden" name="lmt" value="6" />
            <a class="search-button" href="#" onclick="searchMovies(this)"></a>    
        </div>
    </form>
</div><!-- /.search-area -->
<!-- ============================================================= SEARCH AREA : END ============================================================= -->				</div><!-- /.top-search-holder -->


<!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->				</div><!-- /.top-cart-row -->
			</div><!-- /.row -->

		</div><!-- /.container -->

	</div><!-- /.main-header -->

	<!-- ============================================== NAVBAR ============================================== -->
<div class="header-nav animate-dropdown">
    <div class="container">
        <div class="yamm navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="nav-bg-class">
                <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
	<div class="nav-outer">
		<ul class="nav navbar-nav">
			<li class="active dropdown yamm-fw">
				<a href="/FabFlixRESTAPI/" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Home</a>
			</li>

			<li class="dropdown">
				
				<a href="category.html">Advanced Search</a>
			</li>

			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">Pages</a>
				<ul class="dropdown-menu pages">
					<li>
						<div class="yamm-content">
							<div class="row">
								
									<div class='col-xs-12 col-sm-4 col-md-4'>
	                                  <ul class='links'>
		                                  	<li><a href="home.html">Home I</a></li>
											<li><a href="home2.html">Home II</a></li>
											<li><a href="category.html">Category</a></li>
											<li><a href="category-2.html">Category II</a></li>
											<li><a href="detail.html">Detail</a></li>
											<li><a href="detail2.html">Detail II</a></li>
											<li><a href="shopping-cart.html">Shopping Cart Summary</a></li>
											
	                                  </ul>
									</div>
									<div class='col-xs-12 col-sm-4 col-md-4'>
	                                  <ul class='links'>
		                                  	<li><a href="checkout.html">Checkout</a></li>
											<li><a href="blog.html">Blog</a></li>
											<li><a href="blog-details.html">Blog Detail</a></li>
											<li><a href="contact.html">Contact</a></li>
											<li><a href="homepage1.html">Homepage 1</a></li>
											<li><a href="homepage2.html">Homepage 2</a></li>
											<li><a href="home-furniture.html">Home Furniture</a></li>
	                                  </ul>
									</div>
									<div class='col-xs-12 col-sm-4 col-md-4'>
										<ul class='links'>
											<li><a href="sign-in.html">Sign In</a></li>
											<li><a href="my-wishlist.html">Wishlist</a></li>
											<li><a href="terms-conditions.html">Terms and Condition</a></li>
											<li><a href="track-orders.html">Track Orders</a></li>
											<li><a href="product-comparison.html">Product-Comparison</a></li>
		                                  	<li><a href="faq.html">FAQ</a></li>
											<li><a href="404.html">404</a></li>
	                                  </ul>

									</div>
								
							</div>
						</div>
					</li>
					
					
				</ul>
			</li>

			
		</ul><!-- /.navbar-nav -->
		<div class="clearfix"></div>				
	</div><!-- /.nav-outer -->
</div><!-- /.navbar-collapse -->


            </div><!-- /.nav-bg-class -->
        </div><!-- /.navbar-default -->
    </div><!-- /.container-class -->

</div><!-- /.header-nav -->

<!-- ============================================== HEADER : END ============================================== -->
<div class="body-content outer-top-xs">
	<div class='container'>
		<div class='row single-product outer-bottom-sm '>
			<div class='col-md-3 sidebar'>
				<div class="sidebar-module-container">
					<!-- ==============================================CATEGORY============================================== -->
	<!-- ============================================== CATEGORY : END ============================================== -->					<!-- ============================================== HOT DEALS ============================================== -->

<!-- ============================================== HOT DEALS: END ============================================== -->					<!-- ============================================== COLOR============================================== -->

    
<!-- ============================================== COLOR: END ============================================== -->
				</div>
			</div><!-- /.sidebar -->
			<div class='col-md-9'>
				<div class="row  wow fadeInUp">
					     <div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
    <div class="product-item-holder size-big single-product-gallery small-gallery">
        <div id="owl-single-product">
            <div class="single-product-gallery-item" id="slide1">
                <a data-lightbox="image-1" data-title="Gallery" href=<%if (m != null) {out.print(m.getBannerURL());} %>>
                    <img alt="" src=<% if (m != null) {out.print(m.getBannerURL());}%> height="100%" width="100%" onerror="this.src='assets/images/no_image.png'" />
                </a>
            </div><!-- /.single-product-gallery-item -->
        </div><!-- /.single-product-slider -->
        <div class="single-product-gallery-thumbs gallery-thumbs">
        </div><!-- /.gallery-thumbs -->

    </div><!-- /.single-product-gallery -->
</div><!-- /.gallery-holder -->        			
					<div class='col-sm-6 col-md-7 product-info-block'>
						<div class="product-info">
							<h1 class="name"><%if (m != null) {out.print(m.getTitle());}%></h1>
							<div class="description-container m-t-20">
							Year: <%if (m != null) {out.print(m.getYear());} %>
							</div><!-- /.description-container -->
							<div class="description-container m-t-20">
							Director : <% if (m != null) {out.print(m.getDirector());} %>
							</div>
							<div class="description-container m-t-20">
							Genre: 
							<%
							if (m != null) {
								String comma = "";
								if (m.getGenresOfMovie() != null && m.getGenresOfMovie().size() > 0) {
									for (Genre g: m.getGenresOfMovie()) {
										out.print(comma + g.getName());
										comma = ", ";
									}
								} else {
									out.print("N/A");
								}
							}	
							%>
							</div>
							<div class="description-container m-t-20">
							Stars: 
							<% 
							if (m != null)  {
								if (m.getStarsOfMovie() != null && m.getStarsOfMovie().size() > 0) {
									String comma = "";
									for (Star s : m.getStarsOfMovie()) {
										out.print(comma + "<a href='stars?id=" + s.getId()+ "'>" + s.getFullName() + "</a>");
										comma = ", ";
									}
								} else {
									out.print("N/A");
								}
							}
							%>
							</div>
							<div class="description-container m-t-20">
							Trailer: 
							<%
							if (m != null) {
								if (m.getTrailerURL() != null && m.getTrailerURL().length() > 0) {
									out.print("<a href='" + m.getTrailerURL() + "'>" + "Click Here for Trailer</a>");
								} else {
									out.print("N/A");
								}
							}
							%>
							</div>
							<div class="price-container info-container m-t-20">
								<div class="row">
									<div class="col-sm-6">
										<div class="price-box">
											<span class="price">$1.49</span>
											</div>
									</div>
								</div><!-- /.row -->
							</div><!-- /.price-container -->
							<div class="quantity-container info-container">
								<div class="row">
									<div class="col-sm-7">
									<% if (m != null) {
									out.print("<a href='cart?mid=" + m.getId() + "&action=add' class='btn btn-primary'><i class='fa fa-shopping-cart inner-right-vs'></i> ADD TO CART</a>"); }
									%>
									</div>									
								</div><!-- /.row -->
							</div><!-- /.quantity-container -->							
						</div><!-- /.product-info -->
					</div><!-- /.col-sm-7 -->
				</div><!-- /.row -->
			</div><!-- /.col -->
			<div class="clearfix"></div>
		</div><!-- /.row -->
	</div><!-- /.container -->
</div><!-- /.body-content -->

<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="footer color-bg">
    <div class="copyright-bar">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-padding">
                <div class="copyright">
                   Copyright © 2014
                    <a href="home.html">FabFlix</a>
                    - All rights Reserved
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- ============================================================= FOOTER : END============================================================= -->


	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script>
	    $(document).ready(function () {		
	    	checkLogin();
	    });
	    
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
	</script>

	

</body>
</html>