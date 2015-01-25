<!-- ============================================== BLOG SLIDER ============================================== -->
<section class="section outer-bottom-vs wow fadeInUp">
	<h3 class="section-title">latest form blog</h3>
	<div class="blog-slider-container outer-top-xs">
		<div class="owl-carousel blog-slider custom-carousel">
			<?php $imageCount = 1; ?>
			<?php for ($i=1; $i <=6 ; $i++): ?>
				<?php if($imageCount > 7){
					$imageCount = 1;
			} ?>
			
				<div class="item">
					<div class="blog-post">
						<div class="blog-post-image">
							<div class="image">
								<a href="index.php?page=blog"><img data-echo="assets/images/blog-post/<?php echo $imageCount; ?>.jpg" width="270" height="135" src="assets/images/blank.gif" alt=""></a>
							</div>
						</div><!-- /.blog-post-image -->
					
					
						<div class="blog-post-info text-left">
							<h3 class="name"><a href="#">Simple Blog demo from fashion web</a></h3>	
							<span class="info">By Jone Doe-22 april 2014 -03 comments</span>
							<p class="text">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium</p>
							<a href="#" class="lnk btn btn-primary">Read more</a>
						</div><!-- /.blog-post-info -->
						
						
					</div><!-- /.blog-post -->
				</div><!-- /.item -->
			
			<?php 
		$imageCount++;
		?>
		<?php endfor;?>	
		</div><!-- /.owl-carousel -->
	</div><!-- /.blog-slider-container -->
</section><!-- /.section -->
<!-- ============================================== BLOG SLIDER : END ============================================== -->