<!-- ============================================== HEADER ============================================== -->
<header class="<?php echo $headerClass;?>">

	<?php require UC_ROOT.'/parts/navigation/top-bar.php';?>

	<div class="main-header">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-3 logo-holder">
					<?php require_once UC_ROOT.'/parts/widgets/header/logo.php'; ?>
				</div><!-- /.logo-holder -->

				<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
					<?php require_once UC_ROOT.'/parts/widgets/header/search-bar.php'; ?>
				</div><!-- /.top-search-holder -->

				<div class="col-xs-12 col-sm-12 col-md-3 animate-dropdown top-cart-row">
					<?php require_once UC_ROOT.'/parts/widgets/header/shopping-cart-dropdown.php'; ?>
				</div><!-- /.top-cart-row -->
			</div><!-- /.row -->

		</div><!-- /.container -->

	</div><!-- /.main-header -->

	<?php require UC_ROOT.'/parts/navigation/navbar.php';?>

</header>

<!-- ============================================== HEADER : END ============================================== -->