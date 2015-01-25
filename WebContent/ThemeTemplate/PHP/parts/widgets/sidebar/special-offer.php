<!-- ============================================== SPECIAL OFFER ============================================== -->

<?php
$miniProducts = array(
	array(
		array(
			'product_name' => 'Simple Product',
			'is_new' => false,
			'is_sale' =>false,
			'is_hot' =>true,
			'productMicroImage' => 'assets/images/products/sm1.jpg'


			),
		array(
			'product_name' => 'Canon EOS 60D',
			'is_new' => false,
			'is_sale' =>false,
			'is_hot' =>false,
			'productMicroImage' => 'assets/images/products/sm2.jpg'


			),
		array(
			'product_name' => 'Sony Camera X30',
			'is_new' => true,
			'is_sale' =>false,
			'is_hot' =>false,
			'productMicroImage' => 'assets/images/products/sm3.jpg'


			),


		),

	
	array(
		array(
			'product_name' => 'Simple Product',
			'is_new' => false,
			'is_sale' =>false,
			'is_hot' =>false,
			'productMicroImage' => 'assets/images/products/sm1.jpg'


			),
		array(
			'product_name' => 'Canon EOS 60D',
			'is_new' => false,
			'is_sale' =>true,
			'is_hot' =>false,
			'productMicroImage' => 'assets/images/products/sm2.jpg'


			),
		array(
			'product_name' => 'Sony Camera X30',
			'is_new' => false,
			'is_sale' =>false,
			'is_hot' =>false,
			'productMicroImage' => 'assets/images/products/sm3.jpg'


			),


		),

	
	array(
		array(
			'product_name' => 'Simple Product',
			'is_new' => true,
			'is_sale' =>false,
			'is_hot' =>false,
			'productMicroImage' => 'assets/images/products/sm1.jpg'


			),
		array(
			'product_name' => 'Canon EOS 60D',
			'is_new' => false,
			'is_sale' =>false,
			'is_hot' =>true,
			'productMicroImage' => 'assets/images/products/sm2.jpg'


			),
		array(
			'product_name' => 'Sony Camera X30',
			'is_new' => false,
			'is_sale' =>false,
			'is_hot' =>false,
			'productMicroImage' => 'assets/images/products/sm3.jpg'


			),


		),

	);

?>
<div class="sidebar-widget outer-bottom-small wow fadeInUp">
	<h3 class="section-title">Special Offer</h3>
	<div class="sidebar-widget-body outer-top-xs">
		<div class="owl-carousel sidebar-carousel special-offer custom-carousel owl-theme outer-top-xs">
	        <?php foreach ($miniProducts as $products):?>
	        <div class="item">
	        	<div class="products special-product">
		        	<?php foreach ($products as $product):?>
						<div class="product">
							<?php displayProductMicro($product['product_name'],$product['is_new'],$product['is_sale'],$product['is_hot'],$product['productMicroImage']);?>
						</div>
		        	<?php endforeach; ?>
	        	</div>
	        </div>
	    	<?php endforeach; ?>
	    </div>
	</div><!-- /.sidebar-widget-body -->
</div><!-- /.sidebar-widget -->
<!-- ============================================== SPECIAL OFFER : END ============================================== -->