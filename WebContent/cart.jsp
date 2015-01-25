<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cs122b.DB.*, cs122b.Models.*, java.util.*"
 %>

<!DOCTYPE html>
<html lang="en">
	<head>
        <!-- Nick's Changes -->
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
<%
// java code here
%>
	<!-- ============================================== TOP MENU ============================================== -->
<div class="top-bar animate-dropdown">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled">
					<li><a href="cart.jsp"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
					<li><a href="#"><i class="icon fa fa-key"></i>Checkout</a></li>
					<li><a href="#"><i class="icon fa fa-sign-in"></i>Login</a></li>
				</ul>
			</div><!-- /.cnt-account -->
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
    <form>
        <div class="control-group">
            <input class="search-field" placeholder="Search here..." />

            <a class="search-button" href="#" ></a>    

        </div>
    </form>
</div><!-- /.search-area -->
<!-- ============================================================= SEARCH AREA : END ============================================================= -->				</div><!-- /.top-search-holder -->

					<!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->


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
				<a href="index.jsp" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Home</a>
			</li>
			<li class="dropdown navbar-right">
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
<!-- ============================================== NAVBAR : END ============================================== -->

</header>

<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="#">Home</a></li>
				<li class='active'>Shopping Cart</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content outer-top-xs">
	<div class="container">
		<div class="row inner-bottom-sm">
			<div class="shopping-cart">
				<div class="col-md-12 col-sm-12 shopping-cart-table ">
	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="cart-romove item">Remove</th>
					<th class="cart-description item">Image</th>
					<th class="cart-product-name item">Product Name</th>
					<th class="cart-edit item">Edit</th>
					<th class="cart-qty item">Quantity</th>
					<th class="cart-sub-total item">Subtotal</th>
					<th class="cart-total last-item">Grandtotal</th>
				</tr>
			</thead><!-- /thead -->
			<tfoot>
				<tr>
					<td colspan="7">
						<div class="shopping-cart-btn">
							<span class="">
								<a href="#" class="btn btn-upper btn-primary outer-left-xs">Continue Shopping</a>
								<a href="#" class="btn btn-upper btn-primary pull-right outer-right-xs">Update shopping cart</a>
							</span>
						</div><!-- /.shopping-cart-btn -->
					</td>
				</tr>
			</tfoot>
			<tbody>
				<tr>
					<td class="romove-item"><a href="#" title="cancel" class="icon"><i class="fa fa-trash-o"></i></a></td>
					<td class="cart-image">
						<a class="entry-thumbnail" href="detail.html">
						    <img src="assets/images/products/shopping_cart_01.jpg" alt="">
						</a>
					</td>
					<td class="cart-product-name-info">
						<h4 class='cart-product-description'><a href="detail.html">Simple Products Demo</a></h4>
						<div class="row">
							<div class="col-sm-4">
								<div class="rating rateit-small"></div>
							</div>
							<div class="col-sm-8">
								<div class="reviews">
									(06 Reviews)
								</div>
							</div>
						</div><!-- /.row -->
						<div class="cart-product-info">
							<span class="product-imel">IMEL:<span>084628312</span></span><br>
							<span class="product-color">COLOR:<span>White</span></span>
						</div>
					</td>
					<td class="cart-product-edit"><a href="#" class="product-edit">Edit</a></td>
					<td class="cart-product-quantity">
						<div class="quant-input">
				                <div class="arrows">
				                  <div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
				                  <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
				                </div>
				                <input type="text" value="1">
			              </div>
		            </td>
					<td class="cart-product-sub-total"><span class="cart-sub-total-price">$539.88</span></td>
					<td class="cart-product-grand-total"><span class="cart-grand-total-price">$539.88</span></td>
				</tr>
				<tr>
					<td class="romove-item"><a href="#" title="cancel" class="icon"><i class="fa fa-trash-o"></i></a></td>
					<td class="cart-image">
						<a class="entry-thumbnail" href="detail.html">
						    <img src="assets/images/products/shopping_cart_02.jpg" alt="">
						</a>
					</td>
					<td class="cart-product-name-info">
						<h4 class='cart-product-description'><a href="detail.html">Simple Products Demo</a></h4>
						<div class="row">
							<div class="col-sm-4">
								<div class="rating rateit-small"></div>
							</div>
							<div class="col-sm-8">
								<div class="reviews">
									(06 Reviews)
								</div>
							</div>
						</div><!-- /.row -->
						<div class="cart-product-info">
							<span class="product-imel">IMEL:<span>084628312</span></span><br>
							<span class="product-color">COLOR:<span>White</span></span>
						</div>
					</td>
					<td class="cart-product-edit"><a href="#" class="product-edit">Edit</a></td>
					<td class="cart-product-quantity">
						<div class="cart-quantity">
							<div class="quant-input">
				                <div class="arrows">
				                  <div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
				                  <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
				                </div>
				                <input type="text" value="1">
			              </div>
			            </div>
		            </td>
					<td class="cart-product-sub-total"><span class="cart-sub-total-price">$539.88</span></td>
					<td class="cart-product-grand-total"><span class="cart-grand-total-price">$539.88</span></td>
				</tr>
			</tbody><!-- /tbody -->
		</table><!-- /table -->
	</div>
</div><!-- /.shopping-cart-table -->				

<div class="col-md-4 col-sm-12 cart-shopping-total">
	<table class="table table-bordered">
		<thead>
			<tr>
				<th>
					<div class="cart-sub-total">
						Subtotal<span class="inner-left-md">$600.00</span>
					</div>
					<div class="cart-grand-total">
						Grand Total<span class="inner-left-md">$600.00</span>
					</div>
				</th>
			</tr>
		</thead><!-- /thead -->
		<tbody>
				<tr>
					<td>
						<div class="cart-checkout-btn pull-right">
							<button type="submit" class="btn btn-primary">PROCCED TO CHEKOUT</button>
							<span class="">Checkout with multiples address!</span>
						</div>
					</td>
				</tr>
		</tbody><!-- /tbody -->
	</table><!-- /table -->
</div><!-- /.cart-shopping-total -->			</div><!-- /.shopping-cart -->
		</div> <!-- /.row -->
</div><!-- /.container -->
</div><!-- /.body-content -->
<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="footer color-bg">
    <div class="copyright-bar">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-padding">
                <div class="copyright">
                   Copyright Â© 2014
                    <a href="home.html">FabFlix.</a>
                    - All rights Reserved
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- ============================================================= FOOTER : END============================================================= -->
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