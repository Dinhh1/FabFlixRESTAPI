	<?php 
		$products = array(
			array(
				'product_name' => 'Simple Product Demo',
				'is_new' => true,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/1.jpg'


				),
			array(
				'product_name' => 'Simple Product Demo',
				'is_new' => false,
				'is_sale' =>true,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/2.jpg'



				),
			array(
				'product_name' => 'Simple Product Demo',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>true,
				'productImageURL' => 'assets/images/fashion-products/3.jpg'


				),
			array(
				'product_name' => 'Simple Product Demo',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>true,
				'productImageURL' => 'assets/images/fashion-products/4.jpg'


				),
			array(
				'product_name' => 'Simple Product Demo',
				'is_new' => false,
				'is_sale' =>true,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/5.jpg'


				),
			array(
				'product_name' => 'Simple Product Demo',
				'is_new' => true,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/6.jpg'


				),
			array(
				'product_name' => 'Simple Product Demo',
				'is_new' => true,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/7.jpg'


				),
			array(
				'product_name' => 'Simple Product Demo',
				'is_new' => false,
				'is_sale' =>true,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/8.jpg'



				),
			array(
				'product_name' => 'Simple Product Demo',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>true,
				'productImageURL' => 'assets/images/fashion-products/2.jpg'


				),
			array(
				'product_name' => 'Simple Product Demo',
				'is_new' => true,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/1.jpg'


				),
			array(
				'product_name' => 'Simple Product Demo',
				'is_new' => false,
				'is_sale' =>true,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/6.jpg'



				),
			array(
				'product_name' => 'Simple Product Demo',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>true,
				'productImageURL' => 'assets/images/fashion-products/3.jpg'



				)
			);
		foreach($products as $product):
			?>

		<div class="col-sm-6 col-md-4">
			<div class="products">
				<?php displayProduct($product['product_name'], $product['is_new'],$product['is_sale'],$product['is_hot'],$product['productImageURL'],'homepage-cart') ; ?>
			</div><!-- /.products -->
		</div><!-- /.item -->
	<?php endforeach;?>
	