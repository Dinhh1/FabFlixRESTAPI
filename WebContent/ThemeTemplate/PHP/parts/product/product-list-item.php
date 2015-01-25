<?php
function displayProduct($productName,$is_new,$is_sale,$is_hot,$productImageURL = 'http://placehold.it/100x120', $oldPrice = 800.00,$price = 650.99, $score = 4){
?>
<div class="product-list">
	<div class="row product-list-row">
		<div class="col col-xs-4">
			<div class="product-image">
				<div class="image">
					<img data-echo="<?php echo $productImage;?>" src="assets/images/blank.gif" alt="">
				</div>
				<?php if($is_new):?><div class="tag"><div class="tag-text new">new</div></div><?php endif;?>
                <?php if($is_sale):?><div class="tag"><div class="tag-text sale">sale</div></div><?php endif;?>
                <?php if($is_hot):?><div class="tag"><div class="tag-text hot">hot</div></div><?php endif;?>
			</div><!-- /.product-image -->
		</div><!-- /.col -->
		<div class="col col-xs-8">
			<h3 class="name"><a href="index.php?page=detail"><?php echo $productName;?></a></h3>
			<div class="star-rating">
				<?php for ($i=1; $i <=5 ; $i++): ?>
					<i class="fa fa-star <?php if($i <= $score) echo 'color'; ?>"></i>
				<?php endfor;?>
			</div><!-- /.star-rating -->
			<div class="description"></div>

			<div class="product-price">	
				<span class="price">
				$ <?php echo $price;?>
					<?php if($oldPrice):?>
					     <span class="price-before-discount">$ <?php echo $oldPrice;?></span>
					<?php endif;?>
				</span>
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
		</div><!-- /.col -->
	</div><!-- /.product-mini-row -->
</div><!-- /.product-mini -->