<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="#">Home</a></li>
				<li class='active'>Blog Details</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content outer-top-bd">
	<div class="container">
		<div class="row">
			<div class="blog-page">
				<div class="col-md-9">
					<?php require UC_ROOT.'/parts/section/blog-details.php' ?>
					<?php require UC_ROOT.'/parts/section/blog-review.php' ?>
					<?php require UC_ROOT.'/parts/section/blog-write-comment.php' ?>
				</div>
				<div class="col-md-3 sidebar">
					<div class="sidebar-module-container">
						<?php require UC_ROOT.'/parts/widgets/sidebar/search-area.php' ?>
						<?php require UC_ROOT.'/parts/widgets/sidebar/sidebar-detail-category.php' ?>
						<?php require UC_ROOT.'/parts/widgets/sidebar/tab-widgets.php' ?>
						<?php require UC_ROOT.'/parts/widgets/sidebar/product-tags.php' ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>