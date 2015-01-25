<!-- ============================================== SCROLL TABS ============================================== -->
<div id="product-tabs-slider" class="scroll-tabs outer-top-vs wow fadeInUp">
	<div class="more-info-tab clearfix ">
	   <h3 class="new-product-title pull-left">New Products</h3>
		<ul class="nav nav-tabs nav-tab-line pull-right" id="new-products-1">
			<li class="active"><a data-transition-type="backSlide" href="#all" data-toggle="tab">All</a></li>
			<li><a data-transition-type="backSlide" href="#smartphone" data-toggle="tab">smartphone</a></li>
			<li><a data-transition-type="backSlide" href="#laptop" data-toggle="tab">laptop</a></li>
			<li><a data-transition-type="backSlide" href="#apple" data-toggle="tab">apple</a></li>
		</ul><!-- /.nav-tabs -->
	</div>

	<div class="tab-content outer-top-xs">
		<div class="tab-pane in active" id="all">			
			<div class="product-slider">
				<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
				    <?php require UC_ROOT.'/parts/product/product-item.php'; ?>
				</div><!-- /.home-owl-carousel -->
			</div><!-- /.product-slider -->
		</div><!-- /.tab-pane -->

		<div class="tab-pane" id="smartphone">
			<div class="product-slider">
				<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
				    <?php require UC_ROOT.'/parts/product/product-item.php'; ?>
				</div><!-- /.home-owl-carousel -->
			</div><!-- /.product-slider -->
		</div><!-- /.tab-pane -->

		<div class="tab-pane" id="laptop">
			<div class="product-slider">
				<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
				    <?php require UC_ROOT.'/parts/product/product-item.php'; ?>
				</div><!-- /.home-owl-carousel -->
			</div><!-- /.product-slider -->
		</div><!-- /.tab-pane -->

		<div class="tab-pane" id="apple">
			<div class="product-slider">
				<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
				    <?php require UC_ROOT.'/parts/product/product-item.php'; ?>
				</div><!-- /.home-owl-carousel -->
			</div><!-- /.product-slider -->
		</div><!-- /.tab-pane -->

	</div><!-- /.tab-content -->
</div><!-- /.scroll-tabs -->
<!-- ============================================== SCROLL TABS : END ============================================== -->