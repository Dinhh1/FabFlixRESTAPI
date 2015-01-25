<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="#">Home</a></li>
				<li class='active'>Smart Phone</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
	<div class='container'>
		<div class='row outer-bottom-sm'>
			<div class='col-md-3 sidebar'>
	            <?php require UC_ROOT.'/parts/navigation/sidemenu.php' ?>
	            <div class="sidebar-module-container">
	            	<h3 class="section-title">shop by</h3>
	            	<div class="sidebar-filter">
		            	<?php require UC_ROOT.'/parts/widgets/sidebar/sidebar-category.php' ?>
		            	<?php require UC_ROOT.'/parts/widgets/sidebar/sidebar-price-slider.php' ?>
		            	<?php require UC_ROOT.'/parts/widgets/sidebar/sidebar-manufactures.php' ?>
		            	<?php require UC_ROOT.'/parts/widgets/sidebar/sidebar-color.php' ?>
		            	<?php require UC_ROOT.'/parts/widgets/sidebar/sidebar-comparision.php' ?>
		            	<?php require UC_ROOT.'/parts/widgets/sidebar/product-tags.php' ?>
		            	<?php require UC_ROOT.'/parts/widgets/sidebar/sidebar-advertisement.php' ?>

	            	</div><!-- /.sidebar-filter -->
	            </div><!-- /.sidebar-module-container -->
            </div><!-- /.sidebar -->
			<div class='col-md-9'>
				<?php require UC_ROOT.'/parts/section/category-page-slider.php' ?>

				<?php require UC_ROOT.'/parts/section/filter-container.php' ?>

				<div class="search-result-container">
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane active " id="grid-container">
							<div class="category-product  inner-top-vs">
								<div class="row">									
									<?php 											
										require UC_ROOT.'/parts/section/category-grid.php'; 
									?>
								</div><!-- /.row -->
							</div><!-- /.category-product -->
						
						</div><!-- /.tab-pane -->
							
						<div class="tab-pane "  id="list-container">
							<div class="category-product  inner-top-vs">
							
								<?php 
									require UC_ROOT.'/parts/section/category-list.php'; 
								?>
								
							</div><!-- /.category-product -->
						</div><!-- /.tab-pane #list-container -->
					</div><!-- /.tab-content -->
					<div class="clearfix filters-container">
						
							<div class="text-right">
						         <?php require UC_ROOT.'/parts/section/pagination.php' ?>
						    </div><!-- /.text-right -->
						
					</div><!-- /.filters-container -->

				</div><!-- /.search-result-container -->

			</div><!-- /.col -->
		</div><!-- /.row -->
		<?php require UC_ROOT. '/parts/section/brands-carousel.php'; ?>
	</div><!-- /.container -->

</div><!-- /.body-content -->