<!-- ============================================== BEST SELLER ============================================== -->

<?php
$sellerProducts = array(
	array(
		array(
			'product_name' => 'Asus Zenphone 6',
			'is_new' => true,
			'is_sale' =>false,
			'is_hot' =>false,
			'productImageURL' => 'assets/images/products/s1.jpg'


			),
	
		array(
			'product_name' => 'Asus Zenphone 6',
			'is_new' => false,
			'is_sale' =>false,
			'is_hot' =>false,
			'productImageURL' => 'assets/images/products/s1.jpg'


			),


		),

	
	array(
		array(
			'product_name' => 'Apple Iphone 5s',
			'is_new' => false,
			'is_sale' =>false,
			'is_hot' =>false,
			'productImageURL' => 'assets/images/products/s2.jpg'


			),
		array(
			'product_name' => 'Apple Iphone 5s',
			'is_new' => false,
			'is_sale' =>true,
			'is_hot' =>false,
			'productImageURL' => 'assets/images/products/s2.jpg'


			),

		),

	
	array(
		array(
			'product_name' => 'Canon EOS 60D',
			'is_new' => false,
			'is_sale' =>false,
			'is_hot' =>true,
			'productImageURL' => 'assets/images/products/s3.jpg'


			),
	
		array(
			'product_name' => 'Canon EOS 60D',
			'is_new' => false,
			'is_sale' =>false,
			'is_hot' =>false,
			'productImageURL' => 'assets/images/products/s3.jpg'


			),


		),
	array(
		array(
			'product_name' => 'Sony Ericson Vaga',
			'is_new' => false,
			'is_sale' =>false,
			'is_hot' =>true,
			'productImageURL' => 'assets/images/products/s2.jpg'


			),
	
		array(
			'product_name' => 'Sony Ericson Vaga',
			'is_new' => false,
			'is_sale' =>false,
			'is_hot' =>false,
			'productImageURL' => 'assets/images/products/s2.jpg'


			),


		),

	);

?>
<div class="sidebar-widget wow fadeInUp outer-bottom-vs">
	<h3 class="section-title">Best seller</h3>
	<div class="sidebar-widget-body outer-top-xs">
		<div class="owl-carousel best-seller custom-carousel owl-theme outer-top-xs">
	        <?php foreach ($sellerProducts as $products):?>
	        <div class="item">
	        	<div class="products best-product">
		        	<?php foreach ($products as $product):?>
						<div class="product">
							<?php displayProductMicro($product['product_name'],$product['is_new'],$product['is_sale'],$product['is_hot'],$product['productImageURL']) ?>
						</div>
		        	<?php endforeach; ?>
	        	</div>
	        </div>
	    	<?php endforeach; ?>
	    </div>
	</div><!-- /.sidebar-widget-body -->
</div><!-- /.sidebar-widget -->
<!-- ============================================== BEST SELLER : END ============================================== -->