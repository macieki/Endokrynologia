<?php get_header(); ?>

<main>
	<div class="container">
		<div class="gora">
			<figure class="face">
				<img src="
					<?php echo get_stylesheet_directory_uri() ?>/images/BarbaraIwaniszewska.jpg" alt="dr Barbara Iwaniszewska">
			</figure>
			<h1>dr Barbara Iwaniszewska</h1>
			<p class="rola">Lekarz endokrynolog</p>
			<p class="torun">Toruń</p>
		</div>
		<div class="umow">
			<a class="button umawianie">
				<figure class="krzyz1">
					<img src="<?php echo get_stylesheet_directory_uri() ?>/images/krzyz1.svg"">
				</figure>
				<figure class="krzyz2">
					<img src="<?php echo get_stylesheet_directory_uri() ?>/images/krzyz2.svg"">
				</figure>
				Umów konsultację zdalną
			</a>
		</div>
		<div class="terminy">
			<p class="najblizsze">Najbliższe wolne terminy:</p>
				<div class="">
				</div>
				<div class="daty-container">
					<?php if ( is_front_page() ) : ?>
						<?php
							function get_free_dates($calendar){
								$data = date("Y-m-d");
								$data_2tyg = date("Y-m-d", strtotime("+2 week"));
								$period = new DatePeriod(
									new DateTime($data),
									new DateInterval('P1D'),
									new DateTime($data_2tyg)
								);
								$day_total = 0;
								$html_all = "";
								foreach ($period as $key => $value) {
									$dates = date_parse($value->format('Y-m-d'));
									$html_day = calendar_day($value->format('Y-m-d'),$calendar);
									if ($html_day){
										$html_all = $html_all.$html_day;
										$day_total++;
										if ($day_total>=1){
											break;
										}
									}
								}
								return $html_all;
							};

						?>
						<div class="daty">
				             	<?php echo get_free_dates(16); ?>
				         </div>
			     	<?php endif; ?>
				</div>
			<a class="pokaz umawianie">Pokaż więcej terminów</a>
		</div>
	</div>
	<div class="container szara-strefa">
		<div class="kalendarz">
			<h2>Wybierz termin</h2>
		<?php echo do_shortcode('[booked-calendar calendar=16]'); ?>
		</div>
	</div>
	<div class="container">
		<div class="jak">
			<h2>Jak to działa</h2>
			<div class="columns">
				<div class="column">
					<div class="img-container">
						<figure>
							<img src="<?php echo get_stylesheet_directory_uri() ?>/images/jak1.svg" alt="Termin i godzina">
						</figure>
					</div>
					<h3>Wybór terminu i godziny</h3>
					<p><a class="kalendarz umawianie">Zarezerwuj</a> termin w kalendarzu</p>
				</div>
				<div class="column">
				</div>
				<div class="column">
					<div class="img-container">
						<figure>
							<img src="<?php echo get_stylesheet_directory_uri() ?>/images/jak2.svg" alt="Termin i godzina">
						</figure>
					</div>
					<h3>Rejestracja wirtualnej wizyty</h3>
					<p>Po opłaceniu konsultacji dostaniesz
		na maila link do rozmowy wideo</p>
					<p>Jeśli wybierzesz taką opcję możesz
		też się skonsultować telefoniecznie</p>
					
				</div>
				<div class="column">
				</div>
				<div class="column">
					<div class="img-container dwa">
						<figure>
							<img src="<?php echo get_stylesheet_directory_uri() ?>/images/wideo.svg" alt="Konsultacej wideo">
						</figure>
						<figure>
							<img src="<?php echo get_stylesheet_directory_uri() ?>/images/telefon.svg" alt="Konsultacje telefoniczne">
						</figure>
					</div>
					<h3>Konsultacja lekarska</h3>
					<p>W zadeklarowanym czasie klikasz
	na otrzymany link, który przekierowuje
	Cię do rozmowy wideo.</p>
					<p>Jeśli wolisz rozmawiać telefonicznie
	Pani Doktor dzwoni do Ciebie.</p>
					<p>W razie potrzeby otrzymasz kod do
	e-recepty, który zrealizujesz
	w dowolnej aptece za okazaniem peselu.</p>
				</div>
			</div>
		</div>
	</div>

	
</main>
<?php get_footer(); ?>

