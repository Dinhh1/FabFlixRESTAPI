	<?php 
		$products = array(
			array(
				'product_name' => 'Simple Product Showcase',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>true,
				'productImageURL' => 'assets/images/fashion-products/1.jpg'


				),
			array(
				'product_name' => 'Simple Product Showcase',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/2.jpg'



				),
			array(
				'product_name' => 'Simple Product Showcase',
				'is_new' => false,
				'is_sale' =>true,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/3.jpg'


				),
			array(
				'product_name' => 'Simple Product Showcase',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/4.jpg'


				),
			array(
				'product_name' => 'Simple Product Showcase',
				'is_new' => false,
				'is_sale' =>true,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/5.jpg'



				),
			array(
				'product_name' => 'Simple Product Showcase',
				'is_new' => true,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/6.jpg'


				)
			);
	    shuffle($products);
		foreach($products as $product):
			?>

		<div class="item item-carousel">
			<div class="products">
				<?php displayProduct($product['product_name'], $product['is_new'],$product['is_sale'],$product['is_hot'],$product['productImageURL'],'cart') ; ?>
			</div><!-- /.products -->
		</div><!-- /.item -->
	<?php endforeach;?>
	