
<div class="homepage-container">
	<?php require UC_ROOT.'/parts/section/home-page-slider2.php' ?>	
	<?php require UC_ROOT.'/parts/section/wide-banners-7.php' ?>	

	<!-- ============================================== SCROLL TABS ============================================== -->
	<div id="product-tabs-slider" class="scroll-tabs inner-bottom-vs  wow fadeInUp">
		<div class="more-info-tab clearfix ">
			<h3 class="new-product-title pull-left">New Products</h3>
			<ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
				<li class="active"><a href="#all" data-toggle="tab">All</a></li>
				<li><a href="#woman" data-toggle="tab">Woman</a></li>
				<li><a href="#man" data-toggle="tab">Man</a></li>
				<li><a href="#kids" data-toggle="tab">Kids</a></li>
			</ul><!-- /.nav-tabs -->
		</div>

		<div class="tab-content outer-top-xs">
			<div class="tab-pane in active" id="all">			
				<div class="product-slider">
					<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
						<?php require UC_ROOT.'/parts/home-furniture/homepage-product-item.php'; ?>
					</div><!-- /.home-owl-carousel -->
				</div><!-- /.product-slider -->
			</div><!-- /.tab-pane -->

			<div class="tab-pane" id="woman">
				<div class="product-slider">
					<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
						<?php require UC_ROOT.'/parts/home-furniture/homepage-product-item.php'; ?>
					</div><!-- /.home-owl-carousel -->
				</div><!-- /.product-slider -->
			</div><!-- /.tab-pane -->

			<div class="tab-pane" id="man">
				<div class="product-slider">
					<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
						<?php require UC_ROOT.'/parts/home-furniture/homepage-product-item.php'; ?>
					</div><!-- /.home-owl-carousel -->
				</div><!-- /.product-slider -->
			</div><!-- /.tab-pane -->

			<div class="tab-pane" id="kids">
				<div class="product-slider">
					<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
						<?php require UC_ROOT.'/parts/home-furniture/homepage-product-item.php'; ?>
					</div><!-- /.home-owl-carousel -->
				</div><!-- /.product-slider -->
			</div><!-- /.tab-pane -->

		</div><!-- /.tab-content -->
	</div><!-- /.scroll-tabs -->
	<!-- ============================================== SCROLL TABS : END ============================================== -->

	<!-- ============================================== WIDE BANNERS ============================================== -->
	<?php require UC_ROOT.'/parts/section/wide-banners-4.php' ?>
	<!-- ============================================== WIDE BANNERS : END ============================================== -->

	<!-- ============================================== TABS ============================================== -->
	<div class="sections prod-slider-small wow fadeInUp outer-top-small">
		<div class="row">
			<div class="col-md-6">
				<section class="section">
					<h3 class="section-title">new arrivals</h3>
					<div class="owl-carousel home-owl-carousel custom-carousel outer-top-xs owl-theme" data-item="2">
						<?php require UC_ROOT.'/parts/home-furniture/homepage-product-item.php'; ?>
					</div>
				</section>
			</div>
			<div class="col-md-6">
				<section class="section">
					<h3 class="section-title">special deals</h3>
					<div class="owl-carousel home-owl-carousel custom-carousel outer-top-xs owl-theme" data-item="2">
						<?php require UC_ROOT.'/parts/home-furniture/homepage-product-item.php'; ?>
					</div>
				</section>

			</div>
		</div>
	</div>
	<!-- ============================================== TABS : END ============================================== -->

	<!-- ============================================== BLOG ============================================== -->
	 <section class="section outer-top-small wow fadeInUp ">
			<h3 class="section-title">latest form blog</h3>
			<div class="blog-slider-container outer-top-xs">
				<div class="owl-carousel blog-slider custom-carousel">
					<?php $imageCount = 1; ?>
					<?php for ($i=1; $i <=6 ; $i++): ?>
						<?php if($imageCount > 7){
							$imageCount = 1;
					} ?>
						<div class="item">
							<div class="blog-post">
								<div class="blog-post-image">
									<div class="image">
										<img data-echo="assets/images/blog-post/f<?php echo $imageCount; ?>.jpg" src="assets/images/blank.gif" width="370" height="165" alt="">
									</div>
								</div><!-- /.blog-post-image -->
							
							
								<div class="blog-post-info text-left">
									<h3 class="name"><a href="#">Simple Blog demo from fashion web</a></h3>	
									<span class="info">By Jone Doe-22 april 2014 -03 comments</span>
									<p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
									<a href="#" class="lnk read-more-bottom btn btn-primary">Read more</a>
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


<!-- ============================================== BLOC : END ============================================== -->
<?php require UC_ROOT. '/parts/section/homepage-featured-product.php'; ?>
<?php require UC_ROOT. '/parts/section/brands-carousel2.php'; ?>

</div><!-- /.furniture-container -->





