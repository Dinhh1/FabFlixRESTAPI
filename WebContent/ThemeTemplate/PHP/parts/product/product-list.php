<?php
function displayListProduct($productName,$is_new,$is_sale,$is_hot,$productListImageURL, $classType = 'all',$oldPrice = 800.00,$price = 650.99, $score = 4){
?>
<div class="product-list product">
	<div class="row product-list-row">
		<div class="col col-sm-4 col-lg-4">
			<div class="product-image">
				<div class="image">
					<img data-echo="<?php echo $productListImageURL;?>" src="assets/images/blank.gif" alt="">
				</div>
			</div><!-- /.product-image -->
		</div><!-- /.col -->
		<div class="col col-sm-8 col-lg-8">
			<div class="product-info">
				<h3 class="name"><a href="index.php?page=detail"><?php echo $productName;?></a></h3>
				<div class="rating rateit-small"></div>
				<div class="product-price">	
					<span class="price">
						$<?php echo $price;?>
					</span>
						<?php if($oldPrice):?>
						     <span class="price-before-discount">$ <?php echo $oldPrice;?></span>
						<?php endif;?>
					
				</div><!-- /.product-price -->
				<div class="description m-t-10">Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget, lacinia id purus. Suspendisse posuere arcu diam, id accumsan eros pharetra ac. Nulla enim risus, facilisis bibendum gravida eget.</div>
                <?php if($classType == 'all'): ?>
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
				<?php elseif($classType == 'homepage-cart'): ?>
					<div class="cart clearfix animate-effect">
						<div class="action">
										
							<button class="btn btn-primary" type="button">Add to cart</button>
							<button class="left btn btn-primary" type="button"><i class="icon fa fa-heart"></i></button>
							<button class="left btn btn-primary" type="button"><i class="fa fa-retweet"></i></button>						

				                
							
						</div><!-- /.action -->
					</div><!-- /.cart -->
				<?php endif; ?>				
			</div><!-- /.product-info -->	
		</div><!-- /.col -->
	</div><!-- /.product-list-row -->
	<?php if($is_new):?><div class="tag new"><span>new</span></div><?php endif;?>
    <?php if($is_sale):?><div class="tag sale"><span>sale</span></div><?php endif;?>
    <?php if($is_hot):?><div class="tag hot"><span>hot</span></div><?php endif;?>
</div><!-- /.product-list -->
<?php } ?>