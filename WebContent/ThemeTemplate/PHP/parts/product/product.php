<?php
function displayProduct($productName,$is_new,$is_sale,$is_hot,$productImageURL,$actionType = 'all', $oldPrice = 800.00,$price = 650.99, $score = 4){
?>

	<div class="product">		
		<div class="product-image">
			<div class="image">
				<a href="index.php?page=detail"><img  src="assets/images/blank.gif" data-echo="<?php echo $productImageURL;?>" alt=""></a>
			</div><!-- /.image -->			

			<?php if($is_new):?><div class="tag new"><span>new</span></div><?php endif;?>
            <?php if($is_sale):?><div class="tag sale"><span>sale</span></div><?php endif;?>
            <?php if($is_hot):?><div class="tag hot"><span>hot</span></div><?php endif;?>
		   
		</div><!-- /.product-image -->
			
		
		<div class="product-info text-left">
			<h3 class="name"><a href="index.php?page=detail"><?php echo $productName;?></a></h3>
			<div class="rating rateit-small"></div>
			<div class="description"></div>

			<div class="product-price">	
				<span class="price">
					$<?php echo $price;?>
				</span>
					<?php if($oldPrice):?>
					     <span class="price-before-discount">$ <?php echo $oldPrice;?></span>
					<?php endif;?>
				
			</div><!-- /.product-price -->
			
		</div><!-- /.product-info -->
		<?php if($actionType == 'all'): ?>
			<div class="cart clearfix animate-effect">
				<div class="action">
					<ul class="list-unstyled">
						<li class="add-cart-button btn-group">
							<button class="btn btn-primary icon" data-toggle="dropdown" type="button">
								<i class="fa fa-shopping-cart"></i>													
							</button>
							<button class="btn btn-primary" type="button">Add to cart</button>
													
						</li>
	                   
		                <li class="lnk wishlist">
							<a class="add-to-cart" href="index.php?page=detail" title="Wishlist">
								 <i class="icon fa fa-heart"></i>
							</a>
						</li>

						<li class="lnk">
							<a class="add-to-cart" href="index.php?page=detail" title="Compare">
							    <i class="fa fa-retweet"></i>
							</a>
						</li>
					</ul>
				</div><!-- /.action -->
			</div><!-- /.cart -->
		<?php elseif($actionType == 'cart'): ?>
			<div class="action"><a href="#" class="lnk btn btn-primary">Add to Cart</a></div>
		<?php elseif($actionType == 'homepage-cart'): ?>
			<div class="cart clearfix animate-effect">
				<div class="action">
								
					<button class="btn btn-primary" type="button">Add to cart</button>
					<button class="left btn btn-primary" type="button"><i class="icon fa fa-heart"></i></button>
					<button class="left btn btn-primary" type="button"><i class="fa fa-retweet"></i></button>						

		                
					
				</div><!-- /.action -->
			</div><!-- /.cart -->
		<?php endif; ?>
	</div><!-- /.product -->
      
<?php	
}

?>