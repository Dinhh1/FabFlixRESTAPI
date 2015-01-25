	<?php 
require UC_ROOT.'/parts/product/product-list.php'; 
		$listProducts = array(
			array(
				'product_name' => 'Simple Products Demo Showcase',
				'is_new' => true,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/1.jpg'


				),
			array(
				'product_name' => 'Simple Products Demo Showcase',
				'is_new' => false,
				'is_sale' =>true,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/2.jpg'

				),
			array(
				'product_name' => 'Simple Products Demo Showcase',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>true,
				'productImageURL' => 'assets/images/fashion-products/3.jpg'


				),
			array(
				'product_name' => 'Simple Products Demo Showcase',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>true,
				'productImageURL' => 'assets/images/fashion-products/4.jpg'


				),
			array(
				'product_name' => 'Simple Products Demo Showcase',
				'is_new' => false,
				'is_sale' =>true,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/5.jpg'


				),
			array(
				'product_name' => 'Simple Products Demo Showcase',
				'is_new' => true,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/6.jpg'


				),
			array(
				'product_name' => 'Simple Products Demo Showcase',
				'is_new' => true,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/7.jpg'


				),
			array(
				'product_name' => 'Simple Products Demo Showcase',
				'is_new' => false,
				'is_sale' =>true,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/1.jpg'



				),
			array(
				'product_name' => 'Simple Products Demo Showcase',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>true,
				'productImageURL' => 'assets/images/fashion-products/3.jpg'


				),
			array(
				'product_name' => 'Simple Products Demo Showcase',
				'is_new' => true,
				'is_sale' =>false,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/5.jpg'


				),
			array(
				'product_name' => 'Simple Products Demo Showcase',
				'is_new' => false,
				'is_sale' =>true,
				'is_hot' =>false,
				'productImageURL' => 'assets/images/fashion-products/2.jpg'



				),
			array(
				'product_name' => 'Simple Products Demo Showcase',
				'is_new' => false,
				'is_sale' =>false,
				'is_hot' =>true,
				'productImageURL' => 'assets/images/fashion-products/6.jpg'


				)
			);
		foreach($listProducts as $product):
			?>

		<div class="category-product-inner">
			<div class="products">				
	            <?php displayListProduct($product['product_name'], $product['is_new'],$product['is_sale'],$product['is_hot'],$product['productImageURL'],'homepage-cart') ; ?>
			</div><!-- /.products -->
		</div><!-- /.category-product-inner -->
		
	<?php endforeach;?>
	