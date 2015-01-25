<!-- ============================================== RELATED PRODUCTS ============================================== -->
<div class="sidebar-widget hot-deals wow fadeInUp">
	<h3 class="section-title">hot deals</h3>
	<div class="owl-carousel related-product sidebar-carousel custom-carousel owl-theme outer-top-xs">
		
			<?php $imageCount = 1; ?>
			<?php for ($i=1; $i <=3 ; $i++): ?>
				<?php if($imageCount > 4){
					$imageCount = 1;
			} ?>
				<div class="item">
					<div class="products">
						<div class="hot-deal-wrapper">
							<div class="image">
								<img src="assets/images/hot-deals/<?php echo $imageCount; ?>.jpg" alt="">
							</div>
							<div class="tag hot"><span>hot</span></div>
							
						</div><!-- /.hot-deal-wrapper -->

						<div class="product-info text-left m-t-20">
							<h3 class="name"><a href="index.php?page=detail">Apple Iphone 5s 32GB Gold</a></h3>
							<div class="rating rateit-small"></div>

							<div class="product-price">	
								<span class="price">
									$600.00
								</span>
									
							    <span class="price-before-discount">$800.00</span>					
							
							</div><!-- /.product-price -->
							
						</div><!-- /.product-info -->

						<div class="action"><a class="lnk btn btn-primary" href="#">Add to Cart</a></div>
					</div>	
					</div>		        
			<?php 
		$imageCount++;
		?>
		<?php endfor;?>	
	    
    </div><!-- /.sidebar-widget -->
</div>
<!-- ============================================== RELATED PRODUCTS: END ============================================== -->