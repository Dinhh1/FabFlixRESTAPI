	<?php 
		$products = array(
			array(
				'product_name' => 'Sony Ericson Vaga',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>true,
				'productImageURL' => 'assets/images/products/h2-1.jpg'


				),
			array(
				'product_name' => 'Samsung Galaxy S4',
				'is_new' => true,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/products/h2-2.jpg'



				),
			array(
				'product_name' => 'Samsung Galaxy S4',
				'is_new' => false,
				'is_sale' =>true,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/products/h2-3.jpg'


				),
			array(
				'product_name' => 'Apple Iphone 5s 32GB',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>true,
				'productImageURL' => 'assets/images/products/h2-4.jpg'


				),
			array(
				'product_name' => 'Sony Ericson Vaga',
				'is_new' => false,
				'is_sale' =>true,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/products/h2-5.jpg'



				),
			array(
				'product_name' => 'Apple Iphone 5s 32GB',
				'is_new' => true,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/products/h2-6.jpg'


				),
			array(
				'product_name' => 'Apple Iphone 5s 32GB',
				'is_new' => true,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/products/h2-6.jpg'


				),

			);
	shuffle($products);
		foreach($products as $product):
			?>

		<div class="item item-carousel">
			<div class="products">
				<?php displayProduct($product['product_name'], $product['is_new'],$product['is_sale'],$product['is_hot'],$product['productImageURL']) ; ?>
			</div><!-- /.products -->
		</div><!-- /.item -->
	<?php endforeach;?>
	