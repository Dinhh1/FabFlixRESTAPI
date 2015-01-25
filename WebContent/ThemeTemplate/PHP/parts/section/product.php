<?php
function displayProduct($productName,$is_new,$is_sale,$is_hot,$productImageURL, $oldPrice = false,$price = 9.99, $score = 4){
?>

	<div class="product">		
		<div class="product-image">
			<div class="image">
				<img src="assets/images/blank.gif" data-echo="<?php echo $productImageURL;?>" width="195" height="243" alt="">
			</div><!-- /.image -->			

			<?php if($is_new):?><div class="tag"><div class="tag-text new">new</div></div><?php endif;?>
            <?php if($is_sale):?><div class="tag"><div class="tag-text sale">sale</div></div><?php endif;?>
            <?php if($is_hot):?><div class="tag"><div class="tag-text hot">hot</div></div><?php endif;?>
		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info">
			<h3 class="name"><a href="index.php?page=detail"><?php echo $productName;?></a></h3>
			<div class="star-rating">
				<?php for ($i=1; $i <=5 ; $i++): ?>
					<i class="fa fa-star <?php if($i <= $score) echo 'color'; ?>"></i>
				<?php endfor;?>
			</div><!-- /.star-rating -->

			<div class="product-price">	
				<span class="price">
				$ <?php echo $price;?>
					<?php if($oldPrice):?>
					     <span class="price-before-discount"><?php echo $oldPrice;?></span>
					<?php endif;?>
				</span>
			</div><!-- /.product-price -->
			
		</div><!-- /.book-details -->

		<div class="cart animate-effect">
			<div class="action">
				<ul class="list-unstyled">
					<li class="btn-group add-cart-button">
						<a class="btn btn-primary" href="#"><i class="fa fa-shopping-cart"></i></a>
						<a class="btn btn-primary" href="index.php?page-detail">
					    Add to cart</a>
					</li>

	                <li>
						<a class="add-to-cart" href="index.php?page=detail" title="Wishlist">
							 <i class="icon fa fa-heart"></i>
						</a>
					</li>

					<li>
						<a class="add-to-cart" href="#" title="Compare">
						    <i class="fa fa-exchange"></i>
						</a>
					</li>
				</ul>
			</div><!-- /.action -->
		</div><!-- /.cart -->
	</div><!-- /.book -->
      
<?php	
}

?>