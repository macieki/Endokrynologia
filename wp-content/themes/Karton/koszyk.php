<?php
/**
 * Template name: oferta
 */
?>


<?php get_header(); ?>
<main class="koszyk">
	<div class="container">
		<div class="gora">
			<a href="">
			<h1>dr Barbara Iwaniszewska</h1>
			<p class="rola">Lekarz endokrynolog</p>
			</a>
		</div>
		
	</div>
	<div class="container">
		<?php
			if (have_posts()) :
				while (have_posts()) :
					the_post();
					the_content();
				endwhile;
			endif;
		?>
	</div>
	
</main>
<?php get_footer(); ?>