<!-- ============================================== FEATURED PRODUCT ============================================== -->

<?php
$productImage = array(
	1 => array('product_image' => 'assets/images/fashion-products/s1.jpg'),
	2 => array('product_image' => 'assets/images/fashion-products/s2.jpg'),
	3 => array('product_image' => 'assets/images/fashion-products/s3.jpg'),
	4 => array('product_image' => 'assets/images/fashion-products/s2.jpg'),
	5 => array('product_image' => 'assets/images/fashion-products/s1.jpg'),
	6 => array('product_image' => 'assets/images/fashion-products/s1.jpg'),
	);
	?>
	<section class="section featured-product inner-xs wow fadeInUp">
		<h3 class="section-title">Featured products</h3>
		<div class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
			<?php for ($i=1; $i < 7; $i++) {

				?>

				<div class="item">
					<div class="products">
						<?php for ($j=1; $j < 3; $j++) { ?>
						<div class="product">
							<div class="product-micro">
								<div class="row product-micro-row">
									<div class="col col-xs-6">
										<div class="product-image">
											<div class="image">
												<a href="<?php echo $productImage[$i]['product_image'] ?>" data-lightbox="image-1" data-title="Nunc ullamcors">
													<img data-echo="<?php echo $productImage[$i]['product_image'] ?>" src="assets/images/blank.gif" alt="">
													<div class="zoom-overlay"></div>
												</a>					
											</div><!-- /.image -->

										</div><!-- /.product-image -->
									</div><!-- /.col -->
									<div class="col col-xs-6">
										<div class="product-info">
											<h3 class="name"><a href="#">Simple Product Demo</a></h3>
											<div class="rating rateit-small"></div>
											<div class="product-price">	
												<span class="price">
													$650.99
												</span>

											</div><!-- /.product-price -->
											<div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
										</div>
									</div><!-- /.col -->
								</div><!-- /.product-micro-row -->
							</div><!-- /.product-micro -->
						</div>
						<?php } ?>
					</div>
				</div>
				<?php } ?>
			</div>
		</section>
		<!-- ============================================== FEATURED PRODUCT : END ============================================== -->
