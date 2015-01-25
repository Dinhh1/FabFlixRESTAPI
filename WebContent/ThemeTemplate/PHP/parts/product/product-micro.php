<?php
function displayProductMicro($productName,$is_new,$is_sale,$is_hot,$productMicroImage, $oldPrice = 800.00,$price = 650.99, $score = 4){
?>
<div class="product-micro">
	<div class="row product-micro-row">
		<div class="col col-xs-5">
			<div class="product-image">
				<div class="image">
					<a href="<?php echo $productMicroImage;?>" data-lightbox="image-1" data-title="Nunc ullamcors">
						<img data-echo="<?php echo $productMicroImage;?>" src="assets/images/blank.gif" alt="">
						<div class="zoom-overlay"></div>
					</a>					
				</div><!-- /.image -->
					<?php if($is_hot): ?>
						<div class="tag tag-micro hot">
							<span>hot</span>
						</div>
					<?php endif; ?>

					<?php if($is_new): ?>
						<div class="tag tag-micro new">
							<span>new</span>
						</div>
					<?php endif; ?>

					<?php if($is_sale): ?>
						<div class="tag tag-micro sale">
							<span>sale</span>
						</div>
					<?php endif; ?>
			</div><!-- /.product-image -->
		</div><!-- /.col -->
		<div class="col col-xs-7">
			<div class="product-info">
				<h3 class="name"><a href="#"><?php echo $productName; ?></a></h3>
				<div class="rating rateit-small"></div>
				<div class="product-price">	
				<span class="price">
					$<?php echo $price; ?>
				</span>
				
			</div><!-- /.product-price -->
				<div class="action"><a href="#" class="lnk btn btn-primary">Add To Cart</a></div>
			</div>
		</div><!-- /.col -->
	</div><!-- /.product-micro-row -->
</div><!-- /.product-micro -->
      
<?php	
}

?>