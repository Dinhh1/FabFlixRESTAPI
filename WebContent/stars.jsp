<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cs122b.DB.*, cs122b.Models.*, java.util.ArrayList, cs122b.Tables.*"
 %>
 
<!DOCTYPE html>
<html lang="en">
	<head>
	<%
	Star star = null;
	if (request.getParameter("id") != null) {
		int starId = Integer.parseInt(request.getParameter("id"));
		MovieDB db = new MovieDB();
		star = db.Stars.get(starId);
		if (star == null) {
			response.sendRedirect("404.html");
		}
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

	    <title>FabFlix</title>

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
					<li><a href="#"><i class="icon fa fa-user"></i>My Account</a></li>
					<li><a href="#"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
					<li><a href="#"><i class="icon fa fa-key"></i>Checkout</a></li>
					<li><a href="#"><i class="icon fa fa-sign-in"></i>Login</a></li>
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
	<a href="home.html">
		<img src="assets/images/logo.png" alt="">
	</a>
</div><!-- /.logo -->
<!-- ============================================================= LOGO : END ============================================================= -->				</div><!-- /.logo-holder -->
				<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
					<div class="contact-row">
</div><!-- /.contact-row -->
<!-- ============================================================= SEARCH AREA ============================================================= -->
<div class="search-area">
    <form>
        <div class="control-group">


            <input class="search-field" placeholder="Search here..." />

            <a class="search-button" href="#" ></a>    

        </div>
    </form>
</div><!-- /.search-area -->
<!-- ============================================================= SEARCH AREA : END ============================================================= -->				</div><!-- /.top-search-holder -->

				<div class="col-xs-12 col-sm-12 col-md-3 animate-dropdown top-cart-row">
					<!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

	<div class="dropdown dropdown-cart">
		<a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
			<div class="items-cart-inner">
				<div class="total-price-basket">
					<span class="lbl">cart -</span>
					<span class="total-price">
						<span class="sign">$</span>
						<span class="value">600.00</span>
					</span>
				</div>
				<div class="basket">
					<i class="glyphicon glyphicon-shopping-cart"></i>
				</div>
				<div class="basket-item-count"><span class="count">2</span></div>
			
		    </div>
		</a>
		<ul class="dropdown-menu">
			<li>
				<div class="cart-item product-summary">
					<div class="row">
						<div class="col-xs-4">
							<div class="image">
								<a href="detail.html"><img src="assets/images/cart.jpg" alt=""></a>
							</div>
						</div>
						<div class="col-xs-7">
							
							<h3 class="name"><a href="index.php?page-detail">Simple Product</a></h3>
							<div class="price">$600.00</div>
						</div>
						<div class="col-xs-1 action">
							<a href="#"><i class="fa fa-trash"></i></a>
						</div>
					</div>
				</div><!-- /.cart-item -->
				<div class="clearfix"></div>
			<hr>
		
			<div class="clearfix cart-total">
				<div class="pull-right">
					
						<span class="text">Sub Total :</span><span class='price'>$600.00</span>
						
				</div>
				<div class="clearfix"></div>
					
				<a href="checkout.html" class="btn btn-upper btn-primary btn-block m-t-20">Checkout</a>	
			</div><!-- /.cart-total-->
					
				
		</li>
		</ul><!-- /.dropdown-menu-->
	</div><!-- /.dropdown-cart -->

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
				<a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Home</a>
				<ul class="dropdown-menu">
					<li>
						<div class="yamm-content">
    <div class="row">
        <div class="col-md-8 col-sm-8">
            <div class="row">
                <div class='col-md-12'>
                
                   <div class="col-xs-12 col-sm-6 col-md-3">
                        <h2 class="title">Computer</h2>
                        <ul class="links">
                            <li><a href="#">Lenovo</a></li>
                            <li><a href="#">Microsoft </a></li>
                            <li><a href="#">Fuhlen</a></li>
                            <li><a href="#">Longsleeves</a></li>
                        </ul>
                    </div><!-- /.col -->

                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <h2 class="title">Camera</h2>
                        <ul class="links">
                            <li><a href="#">Fuhlen</a></li>
                            <li><a href="#">Lenovo</a></li>
                            <li><a href="#">Microsoft </a></li>                   
                            <li><a href="#">Longsleeves</a></li>
                        </ul>
                    </div><!-- /.col -->

                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <h2 class="title">Apple Store</h2>
                        <ul class="links">
                            <li><a href="#">Longsleeves</a></li>
                            <li><a href="#">Fuhlen</a></li>
                            <li><a href="#">Lenovo</a></li>
                            <li><a href="#">Microsoft </a></li>                                       
                        </ul>
                    </div><!-- /.col -->

                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <h2 class="title">Smart Phone</h2>
                        <ul class="links">
                            <li><a href="#">Microsoft </a></li> 
                            <li><a href="#">Longsleeves</a></li>
                            <li><a href="#">Fuhlen</a></li>
                            <li><a href="#">Lenovo</a></li>
                                   
                        </ul>
                    </div><!-- /.col -->

                    </div>
                
            </div>
        </div>
        <div class="col-sm-4">
        </div>
    </div><!-- /.row -->
   
        <!-- ============================================== WIDE PRODUCTS ============================================== -->
       

<!-- ============================================== WIDE PRODUCTS : END ============================================== -->
 

<!-- ============================================== NAVBAR : END ============================================== -->

</header>

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
                <a data-lightbox="image-1" data-title="Gallery" href=<%if (star != null) {out.print(star.getPhotoUrl());} %>>
                    <img class="img-responsive" alt="" src=<%if (star != null) {out.print(star.getPhotoUrl());} %> height="100%" width="100%" onerror="this.src='assets/images/blank.gif'" />
                </a>
            </div><!-- /.single-product-gallery-item -->

        </div><!-- /.single-product-slider -->


        <div class="single-product-gallery-thumbs gallery-thumbs">

          
            

        </div><!-- /.gallery-thumbs -->

    </div><!-- /.single-product-gallery -->
</div><!-- /.gallery-holder -->        			
					<div class='col-sm-6 col-md-7 product-info-block'>
						<div class="product-info">
							<h1 class="name"><% if (star != null) {out.print(star.getFullName());} %></h1>
							<div class="description-container m-t-20">
							Name: 
							<% if (star != null) {
								out.print(star.getFullName());
							}
							%>
							</div>
							<div class="description-container m-t-20">
							Date of Birth: 
							<% if (star != null) {
								out.print(star.getDateOfBirth());
							}
							%>
							</div>

							<div class="price-container info-container m-t-20">
								<div class="row">
									

									

								</div><!-- /.row -->
							</div><!-- /.price-container -->
						
						</div><!-- /.product-info -->
					</div><!-- /.col-sm-7 -->
				</div><!-- /.row -->
				<!-- ============================================== UPSELL PRODUCTS ============================================== -->

<!-- ============================================== UPSELL PRODUCTS : END ============================================== -->
			
			</div><!-- /.col -->
			<div class="clearfix"></div>
		</div><!-- /.row -->
		<!-- ============================================== BRANDS CAROUSEL ============================================== -->

<!-- ============================================== BRANDS CAROUSEL : END ============================================== -->	</div><!-- /.container -->
</div><!-- /.body-content -->

<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="footer color-bg">
	 
    <div class="copyright-bar">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-padding">
                <div class="copyright">
                   Copyright Â© 2014
                    <a href="home.html">FabFlix</a>
                    - All rights Reserved
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- ============================================================= FOOTER : END============================================================= -->


	
	<!-- For demo purposes â can be removed on production : End -->

	<!-- JavaScripts placed at the end of the document so the pages load faster -->
	<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	
	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>

	<!-- For demo purposes â can be removed on production -->
	
	<script src="switchstylesheet/switchstylesheet.js"></script>
	
	<script>
		$(document).ready(function(){ 
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			$('.show-theme-options').click(function(){
				$(this).parent().toggleClass('open');
				return false;
			});
		});

		$(window).bind("load", function() {
		   $('.show-theme-options').delay(2000).trigger('click');
		});
	</script>
	<!-- For demo purposes â can be removed on production : End -->

	

</body>
</html>