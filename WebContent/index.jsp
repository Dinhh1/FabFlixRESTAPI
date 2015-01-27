<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="cs122b.DB.*, cs122b.Models.*, java.util.*, cs122b.Tables.*"
 %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>Unicase</title>

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
<header class="header-style-1 header-style-2">

	<!-- ============================================== TOP MENU ============================================== -->
<div class="top-bar animate-dropdown">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled">
					<li><a href="cart"><i class="icon fa fa-shopping-cart"></i>My Cart</a></li>
					<li><a href="#"><i class="icon fa fa-key"></i>Checkout</a></li>
					<li><a id='login' href="#" onclick="checkLogin()"><i class="icon fa fa-sign-in" ></i>
					 <%
					 if (session.getAttribute("user") == null) {
						 out.print("Login");
					 } else {
						 out.print("Logout");
					 }
					%></a></li>				</ul>
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
	<a href="home.html">
		
		<img src="assets/images/logo.png" alt="">

	</a>
</div><!-- /.logo -->
<!-- ============================================================= LOGO : END ============================================================= -->				</div><!-- /.logo-holder -->

				<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
<!-- ============================================================= SEARCH AREA ============================================================= -->
<div class="search-area">
    <form>
        <div class="control-group">

            <input class="search-field" placeholder="Search movies here..." />

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
<!-- ============================================== NAVBAR : END ============================================== -->

</header>

<!-- ============================================== HEADER : END ============================================== -->
<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
		<div class="furniture-container homepage-container">
		<div class="row">
		
			<div class="col-xs-12 col-sm-12 col-md-3 sidebar">
				<!-- ================================== TOP NAVIGATION ================================== -->
<div class="side-menu side-menu2 animate-dropdown outer-bottom-xs">
    <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Browse</div>        
    <nav class="yamm megamenu-horizontal" role="navigation">
        <ul class="nav">
            <li class="dropdown menu-item">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Genre</a>
                 <ul class="dropdown-menu mega-menu">
    <li class="yamm-content">
        <div class="row">
            <div class="col-sm-12 col-md-3">
                <ul class="links list-unstyled">  
                    <li><a href="category.html">Action</a></li>
                    <li><a href="category.html">Adventure</a></li>    
                    <li><a href="category.html">Animation</a></li>                                        
                    <li><a href="category.html">Biography</a></li> 
                    <li><a href="category.html">Comedy</a></li>
                    <li><a href="category.html">Crime</a></li>   
                </ul>
            </div><!-- /.col -->
            <div class="col-sm-12 col-md-3">
                <ul class="links list-unstyled">
                    <li><a href="category.html">Documentary</a></li>                                        
                    <li><a href="category.html">Drama</a></li>
                    <li><a href="category.html">Family</a></li>
                    <li><a href="category.html">Fantasy</a></li>    
                    <li><a href="category.html">Film-Noir</a></li>                                        
                    <li><a href="category.html">History</a></li>   
                </ul>
            </div><!-- /.col -->
            <div class="col-sm-12 col-md-3">
                <ul class="links list-unstyled">
                	<li><a href="category.html">Horror</a></li>
                    <li><a href="category.html">Music</a></li>    
                    <li><a href="category.html">Musical</a></li>                                        
                    <li><a href="category.html">Mystery</a></li>
                    <li><a href="category.html">Romance</a></li>
                    <li><a href="category.html">Sci-Fi</a></li>   
                </ul>
            </div><!-- /.col -->
            <div class="col-sm-12 col-md-3">
                <ul class="links list-unstyled">
                    <li><a href="category.html">Sport</a></li>                                        
                    <li><a href="category.html">Thriller</a></li>
                    <li><a href="category.html">War</a></li>
                    <li><a href="category.html">Western</a></li> 
                </ul>
            </div><!-- /.col -->           
        </div><!-- /.row -->
    </li><!-- /.yamm-content -->                    
</ul><!-- /.dropdown-menu -->            </li><!-- /.menu-item -->

            <li class="dropdown menu-item">
                 <a href="#" class="dropdown-toggle" data-toggle="dropdown">Title</a>
                 <ul class="dropdown-menu mega-menu">
    <li class="yamm-content">
        <div class="row">
            <div class="col-sm-12 col-md-3">
                <ul class="links list-unstyled">  
                    <li><a href="category.html">0</a></li>
                    <li><a href="category.html">1</a></li>    
                    <li><a href="category.html">2</a></li>                                        
                    <li><a href="category.html">3</a></li> 
                    <li><a href="category.html">4</a></li>                                        
                    <li><a href="category.html">5</a></li> 
                    <li><a href="category.html">6</a></li>                                        
                    <li><a href="category.html">7</a></li> 
                    <li><a href="category.html">8</a></li>                                                               
                </ul>
            </div><!-- /.col -->
            <div class="col-sm-12 col-md-3">
                <ul class="links list-unstyled">
                	<li><a href="category.html">9</a></li>
                    <li><a href="category.html">A</a></li>
                    <li><a href="category.html">B</a></li>    
                    <li><a href="category.html">C</a></li>                                        
                    <li><a href="category.html">D</a></li>  
                    <li><a href="category.html">E</a></li>                                        
                    <li><a href="category.html">F</a></li> 
                    <li><a href="category.html">G</a></li>                                        
                    <li><a href="category.html">H</a></li>                                                            
                </ul>
            </div><!-- /.col -->
            <div class="col-sm-12 col-md-3">
                <ul class="links list-unstyled">
                	<li><a href="category.html">I</a></li>
                    <li><a href="category.html">J</a></li>
                    <li><a href="category.html">K</a></li>    
                    <li><a href="category.html">L</a></li>                                        
                    <li><a href="category.html">M</a></li> 
                    <li><a href="category.html">N</a></li>
                    <li><a href="category.html">O</a></li>    
                    <li><a href="category.html">P</a></li>                                        
                    <li><a href="category.html">Q</a></li>                       
                </ul>
            </div><!-- /.col -->
            <div class="col-sm-12 col-md-3">
                <ul class="links list-unstyled">
                	<li><a href="category.html">R</a></li>
                    <li><a href="category.html">S</a></li>
                    <li><a href="category.html">T</a></li>    
                    <li><a href="category.html">U</a></li>                                        
                    <li><a href="category.html">V</a></li>
                    <li><a href="category.html">W</a></li> 
                    <li><a href="category.html">X</a></li> 
                    <li><a href="category.html">Y</a></li>
                    <li><a href="category.html">Z</a></li>    
                </ul>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </li><!-- /.yamm-content -->                    
</ul><!-- /.dropdown-menu -->            </li><!-- /.menu-item -->
        
          
        </ul><!-- /.nav -->
    </nav><!-- /.megamenu-horizontal -->
</div><!-- /.side-menu -->
<!-- ================================== TOP NAVIGATION : END ================================== -->
			</div><!-- /.sidemenu-holder -->	
			
			<div class="col-xs-12 col-sm-12 col-md-9 homebanner-holder">
				<!-- ========================================== SECTION – HERO ========================================= -->
			
<div id="hero" class="homepage-slider3">
	<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
		<div class="full-width-slider">	
			<div class="item" style="background-image: url(assets/images/sliders/movie_theaters.png);">
				<div class="container-fluid">
					<div class="caption vertical-center text-center">
						<div class="big-text fadeInDown-1">
							Welcome to
						</div>

						<div class="big-text fadeInDown-1">
							FabFlix
						</div>
					
					</div><!-- /.caption -->
				</div><!-- /.container-fluid -->
			</div><!-- /.item -->
		</div><!-- /.full-width-slider -->

	</div><!-- /.owl-carousel -->
</div>
				
			</div><!-- /.homebanner-holder -->
			
		</div><!-- /.row -->

		<!-- ============================================== SCROLL TABS ============================================== -->
		<div id="product-tabs-slider" class="scroll-tabs inner-bottom-vs  wow fadeInUp">
			<div class="more-info-tab clearfix ">
			   <h3 class="new-product-title pull-left">Popular Movies</h3>
			</div>

			<div class="tab-content outer-top-xs">
				<div class="tab-pane in active" id="all">			
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">

<%
	ArrayList<Movie> movies = (ArrayList<Movie>)session.getAttribute("latest_movies");
	if (movies == null) {
		response.sendRedirect("404.html");
	} else {
		out.println("<h1>The number of movies returned is: " + movies.size() + "</h1>");
		String htmlSkeleton = "<div class='item item-carousel'>";
		htmlSkeleton += "<div class='products'>";
		htmlSkeleton += "<div class='product'>";
		htmlSkeleton += "<div class='product-image'>";
		htmlSkeleton += "<div class='image'>";
		htmlSkeleton += "<a href='__URL__'><img  src='__IMG__' data-echo='assets/images/furniture-products/2.jpg' alt=''></a>";
		htmlSkeleton += "</div><!-- /.image -->";
		htmlSkeleton += "</div><!-- /.product-image -->";
		htmlSkeleton += "<div class='product-info text-left'>";
		htmlSkeleton += "<h3 class='name'><a href='detail.html'>__TITLE__</a></h3>";
		htmlSkeleton += "<div class='description'></div>";
		htmlSkeleton += "<div class='product-price'>";	
		htmlSkeleton += "<span class='price'>";
		htmlSkeleton +=	"$1.49";				
		htmlSkeleton += "</span>";
		htmlSkeleton += "</div><!-- /.product-price -->";
		htmlSkeleton += "</div><!-- /.product-info -->";
		htmlSkeleton += "<div class='action'><a href='__ADD_URL__' class='lnk btn btn-primary'>Add to Cart</a></div>";
		htmlSkeleton += "</div><!-- /.product -->";
		htmlSkeleton += "</div><!-- /.products -->";
		htmlSkeleton += "</div><!-- /.item -->";
		
		for (Movie m : movies) 
		{
			String htmlRow = htmlSkeleton;
			if (m != null)
			{
				htmlRow = htmlRow.replaceFirst("__URL__", "movies?id=" + m.getId());
				htmlRow = htmlRow.replaceFirst("__IMG__", m.getBannerURL());
				htmlRow = htmlRow.replaceFirst("__TITLE__", m.getTitle());
				htmlRow = htmlRow.replaceFirst("__ADD_URL__", "cart?mid=" + m.getId() + "&action=add");
			}
			else
			{
				// Make URL 404
				htmlRow = htmlRow.replaceFirst("__URL__", "404.html");
				htmlRow = htmlRow.replaceFirst("__IMG__", "assets/images/no_image.png");
				htmlRow = htmlRow.replaceFirst("__TITLE__", "NULL PRODUCT");
				htmlRow = htmlRow.replaceFirst("__ADD_URL__", "cart?mid=" + m.getId() + "&action=add");
			}
			out.println(htmlRow);
		}
	}
%> 
						    	
							<div class="item item-carousel">
								<div class="products">
				
									<div class="product">		
										<div class="product-image">
											<div class="image">
												<a href="detail.html"><img  src="assets/images/blank.gif" data-echo="assets/images/furniture-products/2.jpg" alt=""></a>
											</div><!-- /.image -->			

			                        		   
										</div><!-- /.product-image -->
			
		
										<div class="product-info text-left">
											<h3 class="name"><a href="detail.html">Simple Product Showcase</a></h3>
											<div class="description"></div>

											<div class="product-price">	
												<span class="price">
													$650.99				
												</span>
									
											</div><!-- /.product-price -->
			
										</div><!-- /.product-info -->
										<div class="action"><a href="#" class="lnk btn btn-primary">Add to Cart</a></div>
									</div><!-- /.product -->
      
								</div><!-- /.products -->
							</div><!-- /.item -->
	
		<div class="item item-carousel">
			<div class="products">
				
	<div class="product">		
		<div class="product-image">
			<div class="image">
				<a href="detail.html"><img  src="assets/images/blank.gif" data-echo="assets/images/furniture-products/1.jpg" alt=""></a>
			</div><!-- /.image -->			

			                        <div class="tag hot"><span>hot</span></div>		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h3 class="name"><a href="detail.html">Simple Product Showcase</a></h3>
			<div class="rating rateit-small"></div>
			<div class="description"></div>

			<div class="product-price">	
				<span class="price">
					$650.99				</span>
										     <span class="price-before-discount">$ 800</span>
									
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="action"><a href="#" class="lnk btn btn-primary">Add to Cart</a></div>
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	
		<div class="item item-carousel">
			<div class="products">
				
	<div class="product">		
		<div class="product-image">
			<div class="image">
				<a href="detail.html"><img  src="assets/images/blank.gif" data-echo="assets/images/furniture-products/4.jpg" alt=""></a>
			</div><!-- /.image -->			

			                        		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h3 class="name"><a href="detail.html">Simple Product Showcase</a></h3>
			<div class="rating rateit-small"></div>
			<div class="description"></div>

			<div class="product-price">	
				<span class="price">
					$650.99				</span>
										     <span class="price-before-discount">$ 800</span>
									
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="action"><a href="#" class="lnk btn btn-primary">Add to Cart</a></div>
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	
		<div class="item item-carousel">
			<div class="products">
				
	<div class="product">		
		<div class="product-image">
			<div class="image">
				<a href="detail.html"><img  src="assets/images/blank.gif" data-echo="assets/images/furniture-products/3.jpg" alt=""></a>
			</div><!-- /.image -->			

			            <div class="tag sale"><span>sale</span></div>            		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h3 class="name"><a href="detail.html">Simple Product Showcase</a></h3>
			<div class="rating rateit-small"></div>
			<div class="description"></div>

			<div class="product-price">	
				<span class="price">
					$650.99				</span>
										     <span class="price-before-discount">$ 800</span>
									
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
					<div class="action"><a href="#" class="lnk btn btn-primary">Add to Cart</a></div>
			</div><!-- /.product -->
      
			</div><!-- /.products -->
		</div><!-- /.item -->
	
								</div><!-- /.home-owl-carousel -->
					</div><!-- /.product-slider -->
				</div><!-- /.tab-pane -->

			</div><!-- /.tab-content -->
		</div><!-- /.scroll-tabs -->
	    <!-- ============================================== SCROLL TABS : END ============================================== -->

<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="footer color-bg">
	    
    <div class="copyright-bar">
        <div class="container">
            <div class="col-xs-12 col-sm-6 no-padding">
                <div class="copyright">
                   Copyright © 2014
                    <a href="home.html">FabFlix.</a>
                    - All rights Reserved
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- ============================================================= FOOTER : END============================================================= -->

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

	<!-- For demo purposes – can be removed on production -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script>
		function checkLogin() {
			if ($('#login').text().trim() == "Login") {
				$('#login').attr('href','login');
			} else {
				// bring them to a logout a page 
				$('#login').attr('href','logout');
			}
		}
	</script>
	<!-- For demo purposes – can be removed on production : End -->

	

</body>
</html>
