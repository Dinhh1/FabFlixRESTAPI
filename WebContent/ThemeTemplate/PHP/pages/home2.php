<?php require('./parts/product/product-micro.php');?>
<div class="body-content" id="top-banner-and-menu">
	<?php require UC_ROOT. '/parts/section/home-page-slider4.php'; ?>
	<div class="container">
	
		<?php require UC_ROOT. '/parts/section/wide-banners-5.php'; ?>

		<!-- ============================================== SCROLL TABS ============================================== -->
		<div id="product-tabs-slider" class="scroll-tabs outer-top-vs wow fadeInUp">
			<div class="more-info-tab clearfix ">
			   <h3 class="new-product-title pull-left">New Products</h3>
				<ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
					<li class="active"><a href="#all" data-toggle="tab">All</a></li>
					<li><a href="#smartphone" data-toggle="tab">smartphone</a></li>
					<li><a href="#laptop" data-toggle="tab">laptop</a></li>
					<li><a href="#apple" data-toggle="tab">apple</a></li>
				</ul><!-- /.nav-tabs -->
			</div>

			<div class="tab-content outer-top-xs">
				<div class="tab-pane in active" id="all">			
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="5">
						    <?php require UC_ROOT.'/parts/product/product-item2.php'; ?>
						</div><!-- /.home-owl-carousel -->
					</div><!-- /.product-slider -->
				</div><!-- /.tab-pane -->

				<div class="tab-pane" id="smartphone">
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="5">
						    <?php require UC_ROOT.'/parts/product/product-item2.php'; ?>
						</div><!-- /.home-owl-carousel -->
					</div><!-- /.product-slider -->
				</div><!-- /.tab-pane -->

				<div class="tab-pane" id="laptop">
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="5">
						    <?php require UC_ROOT.'/parts/product/product-item2.php'; ?>
						</div><!-- /.home-owl-carousel -->
					</div><!-- /.product-slider -->
				</div><!-- /.tab-pane -->

				<div class="tab-pane" id="apple">
					<div class="product-slider">
						<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="5">
						    <?php require UC_ROOT.'/parts/product/product-item2.php'; ?>
						</div><!-- /.home-owl-carousel -->
					</div><!-- /.product-slider -->
				</div><!-- /.tab-pane -->

			</div><!-- /.tab-content -->
		</div><!-- /.scroll-tabs -->
       <!-- ============================================== SCROLL TABS : END ============================================== -->
       <?php require UC_ROOT. '/parts/section/wide-banners-6.php'; ?>
       <!-- ============================================== FEATURED PRODUCTS ============================================== -->
		<section class="section featured-product wow fadeInUp">
			<h3 class="section-title">Featured products</h3>
			<div class="owl-carousel home-owl-carousel custom-carousel owl-theme outer-top-xs" data-item="5">
			    <?php require UC_ROOT.'/parts/product/product-item2.php'; ?>
			</div><!-- /.home-owl-carousel -->
		</section><!-- /.section -->
     <!-- ============================================== FEATURED PRODUCTS : END ============================================== -->
     <!-- ============================================== WIDE PRODUCTS ============================================== -->
	<div class="wide-banners wow fadeInUp outer-bottom-vs">
		<div class="row">

			<div class="col-md-12">
				<div class="wide-banner cnt-strip">
					<div class="image">
						<img data-echo="assets/images/banners/11.jpg" src="assets/images/blank.gif" alt="">
					</div>	
					<div class="strip">
						<div class="strip-inner text-right">
							<h1>one stop place for</h1>
							<p class="normal-shopping-needs">ALL YOUR SHOPPING NEEDS</p>
						</div>	
					</div>
					<div class="new-label">
					    <div class="text">NEW</div>
					</div><!-- /.new-label -->
				</div><!-- /.wide-banner -->
			</div><!-- /.col -->

		</div><!-- /.row -->
	</div><!-- /.wide-banners -->
    <!-- ============================================== WIDE PRODUCTS : END ============================================== -->
    <?php require UC_ROOT. '/parts/section/best-seller-without-carousel.php'; ?>

     <!-- ============================================== BLOG SLIDER ============================================== -->
	<section class="section wow fadeInUp outer-bottom-vs">
		<h3 class="section-title">latest form blog</h3>
		<div class="blog-slider-container wow fadeInUp  outer-top-xs">
			<div class="owl-carousel blog-slider custom-carousel">
				<?php $imageCount = 7; ?>
					<?php for ($i=1; $i <=6 ; $i++): ?>
						<?php if($imageCount > 13){
							$imageCount = 1;
					} ?>
					<div class="item">
						<div class="blog-post">
							<div class="blog-post-image">
								<div class="image">
									<a href="index.php?page=blog"><img data-echo="assets/images/blog-post/<?php echo $imageCount; ?>.jpg" src="assets/images/blank.gif" width="370" height="165" alt=""></a>
								</div>
							</div><!-- /.blog-post-image -->
						
						
							<div class="blog-post-info text-left">
								<h3 class="name"><a href="index.php?page=blog">Simple Blog demo from fashion web</a></h3>	
								<span class="info">By Jone Doe-22 april 2014 -03 comments</span>
								<p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
								<a href="#" class="lnk btn btn-primary">Read more</a>
							</div><!-- /.blog-post-info -->
							
							
						</div><!-- /.blog-post -->
					</div><!-- /.item -->
				<?php 
				$imageCount++;
				?>
		        <?php endfor;?>	
			</div><!-- /.owl-carousel -->
		</div><!-- /.blog-slider-container -->
	</section><!-- /.section -->
<!-- ============================================== BLOG SLIDER : END ============================================== -->

      <?php require UC_ROOT. '/parts/section/brands-carousel.php'; ?>
	
	

	</div><!-- /.container -->
</div><!-- /#top-banner-and-menu -->



