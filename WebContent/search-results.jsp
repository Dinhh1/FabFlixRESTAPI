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

		<!-- ============================================== SCROLL TABS ============================================== -->
		<div class='col-md-9'>
	<div class="clearfix filters-container m-t-10">
		<div class="row">
			<div class="col col-sm-12 col-md-6">
				<div class="col col-sm-3 col-md-6 no-padding">
					<div class="lbl-cnt">
						<span class="lbl">Sort by</span>
						<div class="fld inline">
							<div class="dropdown dropdown-small dropdown-med dropdown-white inline">
								<button data-toggle="dropdown" type="button" class="btn dropdown-toggle">
									Title: A to Z<span class="caret"></span>
								</button>
	
								<ul role="menu" class="dropdown-menu">
									<li role="presentation"><a href="#">Title: A to Z</a></li>
									<li role="presentation"><a href="#">Title: Z to A</a></li>
									<li role="presentation"><a href="#">Year: Earliest</a></li>
									<li role="presentation"><a href="#">Year: Latest</a></li>
								</ul>
							</div>
						</div><!-- /.fld -->
					</div><!-- /.lbl-cnt -->
				</div><!-- /.col -->
				<div class="col col-sm-3 col-md-6 no-padding">
					<div class="lbl-cnt">
						<span class="lbl">Results Per Page</span>
						<div class="fld inline">
							<div class="dropdown dropdown-small dropdown-med dropdown-white inline">
								<button data-toggle="dropdown" type="button" class="btn dropdown-toggle">
									6 <span class="caret"></span>
								</button>
	
								<ul role="menu" class="dropdown-menu">
									<li role="presentation"><a href="#">6</a></li>
									<li role="presentation"><a href="#">9</a></li>
									<li role="presentation"><a href="#">18</a></li>
									<li role="presentation"><a href="#">36</a></li>
									<li role="presentation"><a href="#">72</a></li>
								</ul>
							</div>
						</div><!-- /.fld -->
					</div><!-- /.lbl-cnt -->
				</div><!-- /.col -->
			</div><!-- /.col -->
			<div class="col col-sm-6 col-md-4 text-right">
				<div class="pagination-container">
					<ul class="list-inline list-unstyled">
						<li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
						<li><a href="#">1</a></li>	
						<li class="active"><a href="#">2</a></li>	
						<li><a href="#">3</a></li>	
						<li><a href="#">4</a></li>	
						<li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
					</ul><!-- /.list-inline -->
				</div><!-- /.pagination-container -->		
			</div><!-- /.col -->
		</div><!-- /.row -->
	</div><!-- /.clearfix filters-container -->
	<div class="search-result-container">
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane active " id="grid-container">
				<div class="category-product  inner-top-vs">
					<div class="row">
					
<% 
	ArrayList<Movie> movies = (ArrayList<Movie>)session.getAttribute("movie_query");
	if (movies != null) {
		String htmlSkeleton = "<div class='col-sm-6 col-md-4 wow fadeInUp'>";
		htmlSkeleton += "<div class='products'>";
		htmlSkeleton += "<div class='product'>";
		htmlSkeleton += "<div class='product-image'>";
		htmlSkeleton += "<div class='image'>";
		htmlSkeleton += "<a href='__URL__'><img src='__IMG__' alt=''></a>";
		htmlSkeleton += "</div><!-- /.image -->";
		htmlSkeleton += "</div><!-- /.product-image -->";
		htmlSkeleton += "<div class='product-info text-left'>";
		htmlSkeleton += "<h3 class='name'><a href='__URL__'>__TITLE__</a></h3>";
		htmlSkeleton += "<div class='description'></div>";
		htmlSkeleton += "<div class='product-price'>";	
		htmlSkeleton += "<span class='price'>$1.49</span>";	
		htmlSkeleton += "</div><!-- /.product-price -->";
		htmlSkeleton += "</div><!-- /.product-info -->";
		htmlSkeleton += "<div class='cart clearfix animate-effect'>";
		htmlSkeleton += "<div class='action'>";
		htmlSkeleton += "<ul class='list-unstyled'>";
		htmlSkeleton += "<li class='add-cart-button btn-group'>";
		htmlSkeleton += "<button class='btn btn-primary icon' data-toggle='dropdown' type='button'>";
		htmlSkeleton += "<i class='fa fa-shopping-cart'></i>";	
		htmlSkeleton += "</button>";
		htmlSkeleton += "<button class='btn btn-primary' type='button'>Add to cart</button>";
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
			htmlRow = htmlRow.replaceFirst("__TITLE__", m.getTitle());
			htmlRow = htmlRow.replaceFirst("__ADD_URL__", "cart?mid=" + m.getId() + "&action=add");
			out.println(htmlRow);
		}
	} else {
		System.out.println("error in movie query");
	}
	
%>									
																	
					</div><!-- /.row -->
				</div><!-- /.category-product -->		
			</div><!-- /.tab-pane -->
		</div><!-- /.tab-content -->
		<div class="clearfix filters-container">
			<div class="text-right">
		         <div class="pagination-container">
					<ul class="list-inline list-unstyled">
						<li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
						<li><a href="#">1</a></li>	
						<li class="active"><a href="#">2</a></li>	
						<li><a href="#">3</a></li>	
						<li><a href="#">4</a></li>	
						<li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
					</ul><!-- /.list-inline -->
				</div><!-- /.pagination-container -->						    
			</div><!-- /.text-right -->			
		</div><!-- /.filters-container -->
	</div><!-- /.search-result-container -->
</div><!-- /.col -->

</div><!-- /.row -->

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
	<!-- For demo purposes â can be removed on production : End -->

	

</body>
</html>
