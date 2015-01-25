<?php if($headerStyle == 1):?>
<div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
	<div class="nav-outer">
		<ul class="nav navbar-nav">
			<li class="active dropdown yamm-fw">
				<a href="index.php?page=home" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Home</a>
				<ul class="dropdown-menu">
					<li>
						<?php require UC_ROOT.'/parts/navigation/megamenu.php';?>
					</li>
				</ul>
			</li>
			<li class="dropdown yamm">
				<a href="index.php?page=home" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Desktop</a>
				<ul class="dropdown-menu">
					<li>
						<?php require UC_ROOT.'/parts/navigation/megamenu-fullwidth.php';?>
					</li>
				</ul>
			</li>

			<li class="dropdown">
				
				<a href="index.php?page=category">Electronics
				   <span class="menu-label hot-menu hidden-xs">hot</span>
				</a>
			</li>
			<li class="dropdown hidden-sm">
				
				<a href="index.php?page=category">Television
				    <span class="menu-label new-menu hidden-xs">new</span>
				</a>
			</li>

			<li class="dropdown hidden-sm">
				<a href="index.php?page=category">Smart Phone</a>
			</li>

			<li class="dropdown">
				<a href="index.php?page=contact">Contact</a>
			</li>
			
			<li class="dropdown navbar-right">
				<a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">Pages</a>
				<ul class="dropdown-menu pages">
					<li>
						<div class="yamm-content">
							<div class="row">
								
									<div class='col-xs-12 col-sm-4 col-md-4'>
	                                  <ul class='links'>
		                                  	<li><a href="index.php?page=home">Home I</a></li>
											<li><a href="index.php?page=home2">Home II</a></li>
											<li><a href="index.php?page=category">Category</a></li>
											<li><a href="index.php?page=category-2">Category II</a></li>
											<li><a href="index.php?page=detail">Detail</a></li>
											<li><a href="index.php?page=detail2">Detail II</a></li>
											<li><a href="index.php?page=shopping-cart">Shopping Cart Summary</a></li>
											
	                                  </ul>
									</div>
									<div class='col-xs-12 col-sm-4 col-md-4'>
	                                  <ul class='links'>
		                                  	<li><a href="index.php?page=checkout">Checkout</a></li>
											<li><a href="index.php?page=blog">Blog</a></li>
											<li><a href="index.php?page=blog-details">Blog Detail</a></li>
											<li><a href="index.php?page=contact">Contact</a></li>
											<li><a href="index.php?page=homepage1">Homepage 1</a></li>
											<li><a href="index.php?page=homepage2">Homepage 2</a></li>
											<li><a href="index.php?page=home-furniture">Home Furniture</a></li>
	                                  </ul>
									</div>
									<div class='col-xs-12 col-sm-4 col-md-4'>
										<ul class='links'>
											<li><a href="index.php?page=sign-in">Sign In</a></li>
											<li><a href="index.php?page=my-wishlist">Wishlist</a></li>
											<li><a href="index.php?page=terms-conditions">Terms and Condition</a></li>
											<li><a href="index.php?page=track-orders">Track Orders</a></li>
											<li><a href="index.php?page=product-comparison">Product-Comparison</a></li>
		                                  	<li><a href="index.php?page=faq">FAQ</a></li>
											<li><a href="index.php?page=404">404</a></li>
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
<?php else : ?>
<div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
	<div class="nav-outer">
		<ul class="nav navbar-nav">
			<li class="active dropdown yamm-fw">
				<a href="index.php?page=home" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Home</a>
				<ul class="dropdown-menu">
					<li>
						<?php require UC_ROOT.'/parts/navigation/megamenu.php';?>
					</li>
				</ul>
			</li>

			<li class="dropdown">
				
				<a href="index.php?page=category">Men
				   <span class="menu-label hot-menu hidden-xs">hot</span>
				</a>
			</li>

			<li class="dropdown">
				
				<a href="index.php?page=category">Women
				  
				</a>
			</li>
			<li class="dropdown hidden-sm">
				
				<a href="index.php?page=category">New Arrivals
				    <span class="menu-label new-menu hidden-xs">new</span>
				</a>
			</li>

			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">Pages</a>
				<ul class="dropdown-menu pages">
					<li>
						<div class="yamm-content">
							<div class="row">
								
									<div class='col-xs-12 col-sm-4 col-md-4'>
	                                  <ul class='links'>
		                                  	<li><a href="index.php?page=home">Home I</a></li>
											<li><a href="index.php?page=home2">Home II</a></li>
											<li><a href="index.php?page=category">Category</a></li>
											<li><a href="index.php?page=category-2">Category II</a></li>
											<li><a href="index.php?page=detail">Detail</a></li>
											<li><a href="index.php?page=detail2">Detail II</a></li>
											<li><a href="index.php?page=shopping-cart">Shopping Cart Summary</a></li>
											
	                                  </ul>
									</div>
									<div class='col-xs-12 col-sm-4 col-md-4'>
	                                  <ul class='links'>
		                                  	<li><a href="index.php?page=checkout">Checkout</a></li>
											<li><a href="index.php?page=blog">Blog</a></li>
											<li><a href="index.php?page=blog-details">Blog Detail</a></li>
											<li><a href="index.php?page=contact">Contact</a></li>
											<li><a href="index.php?page=homepage1">Homepage 1</a></li>
											<li><a href="index.php?page=homepage2">Homepage 2</a></li>
											<li><a href="index.php?page=home-furniture">Home Furniture</a></li>
	                                  </ul>
									</div>
									<div class='col-xs-12 col-sm-4 col-md-4'>
										<ul class='links'>
											<li><a href="index.php?page=sign-in">Sign In</a></li>
											<li><a href="index.php?page=my-wishlist">Wishlist</a></li>
											<li><a href="index.php?page=terms-conditions">Terms and Condition</a></li>
											<li><a href="index.php?page=track-orders">Track Orders</a></li>
											<li><a href="index.php?page=product-comparison">Product-Comparison</a></li>
		                                  	<li><a href="index.php?page=faq">FAQ</a></li>
											<li><a href="index.php?page=404">404</a></li>
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
<?php endif;?>


