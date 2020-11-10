<section class="paralaxMe">
	<div id="headerSlider" class="carousel slide carousel-fade" data-ride="carousel">
		<ol class="carousel-indicators">
			<% loop Slide %>
				<li data-target="#headerSlider" data-slide-to="$Pos(0)" class="<% if First %>active<% end_if %> rounded-circle-"></li>
			<% end_loop %>
		</ol>
		<div class="carousel-inner">
			<% loop Slide %>
				<div class="carousel-item <% if First %>active<% end_if %>">
					<picture>
						<source media="(max-width: 425px)" srcset="$FocusFill(425,500).URL">
						<source media="(max-width: 576px)" srcset="$FocusFill(576,700).URL">
						<source media="(max-width: 768px)" srcset="$FocusFill(768,600).URL">
						<source media="(max-width: 992px)" srcset="$FocusFill(992,600).URL">
						<source media="(max-width: 1200px)" srcset="$FocusFill(1440,800).URL">
						<source media="(min-width: 1201px)" srcset="$FocusFill(1920,900).URL">

						<img <% if First %><% else %>data-<% end_if %>src="$FocusFill(576,700).URL" alt="$Title" class="d-block w-100" />

					</picture>
				</div>
			<% end_loop %>
		</div>
	</div>
</section>
<section class="bg-white position-relative">
	<div class="container">
		<div class="row justify-content-between">
			<div class="col-12 pt-5">
				<h1 class="text-center text-success">$MainTitle</h1>
			</div>
			<div class="col-4 col-md-4 py-5">
				<% if SiteConfig.KennstDuEinen %>
					<div class="row align-items-center">
						<div class="col-12 col-md-auto">
							<a href="$SiteConfig.KennstDuEinen" target="_blank" rel="noreferrer" class="animated"><img src="$ThemeDir/images/kennst-du-einen.png" alt="kennst-du-einen shield" /></a>
						</div>
						<div class="col-12 col-md-auto">
							<a href="$SiteConfig.KennstDuEinen" target="_blank" rel="noreferrer" class="animated kennstdueinen-color font-size-1-25 font-weight-bold">Schreib uns hier <br />eine Empfehlung</a>
						</div>
					</div>
				<% end_if %>
			</div>
			<div class="col-4 col-md-4 py-5">
				<% if SiteConfig.Facebook %>
					<div class="row align-items-center">
						<div class="col-12 col-md-auto">
							<a href="$SiteConfig.Facebook" target="_blank" rel="noreferrer" class="animated"><img src="$ThemeDir/images/facebook.png" alt="facebook logo" /></a>
						</div>
						<div class="col-12 col-md-auto">
							<a href="$SiteConfig.Facebook" target="_blank" rel="noreferrer" class="animated fb-color font-size-1-25 font-weight-bold">Erzähle deinen Freunden <br/>bei Facbook von uns</a>
						</div>
					</div>
				<% end_if %>
			</div>
			<div class="col-4 col-md-4 py-5">
				<% if SiteConfig.Instagram %>
					<div class="row align-items-center">
						<div class="col-12 col-md-auto">
							<a href="$SiteConfig.Instagram" target="_blank" rel="noreferrer" class="animated"><img src="$ThemeDir/images/instagram.png" alt="instagram logo" /></a>
						</div>
						<div class="col-12 col-md-auto">
							<a href="$SiteConfig.Instagram" target="_blank" rel="noreferrer" class="animated instagram-color font-size-1-25 font-weight-bold">Poste deinen Style und <br />uns auf Instagram</a>
						</div>
					</div>
				<% end_if %>
			</div>
		</div>
	</div>
	<div class="container-fluid" id="contact">
		<div class="row border-bg">
			<% loop InfoBox %>
				<% if $Pos=2 %><% else %>
				<div class="col-12 <% if $Pos=3 %>col-lg-8<% else %>col-lg-4<% end_if %> pb-5" data-aos="fade-up" data-aos-delay="{$Pos(1)}00">
					<div class="h-100 bg-light <% if Paddings %>p-5<% else %>p-3<% end_if %>">
						<div class="row align-items-center h-100">
							<div class="col-12">
								$Text
							</div>
						</div>
					</div>
				</div>
				<% end_if %>
			<% end_loop %>
		</div>
	</div>
	<div class="container" id="salon">
		<div class="row">
			<div class="col-12 col-md-6 col-lg-4 pb-5"  data-aos="fade-right">
				<h2 class="font-weight-bold pb-4 text-info">$AboutSalonTitle</h2>
				<div class="font-size-1-25">$AboutSalonText</div>
				<a href="#team" class="btn btn-block btn-success text-white btn-lg mt-5 py-3 scrollToLink">DAS SALON TEAM</a>
			</div>

			<div class="col-12 col-md-6 col-lg-8 pb-5" data-aos="fade-left" data-aos-delay="200">
				<div class="row no-gutters">
					<% loop AboutSalonImage.sort("SortOrder") %>
						<div class="col-6 col-md-4">
							<div class="ml-3 mb-3"><a data-fancybox="salon-gallery" href="$URL">$FocusFill(350,350)</a></div>
						</div>
					<% end_loop %>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="position-relative videoHolder">
	<div class="v100">&nbsp;</div>
	<div class="videoPositioner pt-5 mt-5 pt-lg-0">
		<video onloadeddata="this.play();" playsinline loop muted>
			<source src="$Video.URL" type="video/mp4" />
		</video>
	</div>
</section>

<section id="pricelist">
	<div class="container">
		<div class="row pt-5">
			<div class="col-12 text-center">
				<h2 class="text-warning pb-5">$PriceListTitle</h2>
				<div class="font-size-1-25 pb-5">
					$PriceListText
				</div>
			</div>
			<% loop PriceBox %>
				<div class="col-12 col-md-6 col-lg-4 text-center pb-5" data-aos="fade-up">
					<div class="px-3">
						<div class="p-3 text-white font-size-1-5 rounded" style="background-color: {$Color}">$Title</div>
						$Text
					</div>
				</div>
			<% end_loop %>
		</div>
	</div>
</section>



<section>
	<div class="container-fluid">
		<div class="row no-gutters">
			<% if LogoMainImage %>
				<div class="col-12"  data-aos="fade-up">
					<img src="$LogoMainImage.URL" alt="$LogoMainImage.Title" class="w-100" />
				</div>
			<% end_if %>
		</div>
	</div>
	<div class="container">
		<div class="row pt-5 justify-content-center">
			<% loop Logo.sort("SortOrder") %>
				<div class="col-auto pb-5" data-aos="fade-up" data-aos-delay="{$Pos(1)}00">
					<div class="px-3">$Pad(250,150)</div>
				</div>
			<% end_loop %>

			<div class="col-12 pb-5 text-center" id="team">
				<h2 class="text-warning pb-3">$TeamTitle</h2>
				<div class="pb-5 text-warning font-size-1-25">
					$TeamSubtitle
				</div>
				<div class="font-size-1-25 pb-5">
					$TeamText
				</div>
			</div>
		</div>
		<div class="row">
			<% loop TeamMember %>
				<div class="col-12 col-lg-6 pb-5" data-aos="fade-up" data-aos-delay="{$Pos(1)}00">
					<div class="row">
						<div class="col-12 col-md-6">
							$Image1
						</div>
						<div class="col-12 col-md-6">
							<h3 class="text-warning pb-3">$Title</h3>
							$Text
						</div>
					</div>
				</div>
			<% end_loop %>
		</div>
	</div>
</section>

<section class="bg-black"  id="socialmedia">
	<div class="container ">
		<div class="row pt-5">
			<div class="col-12 text-center pb-5">
				<h2 class="text-white">$InstagramBlockTitle</h2>
			</div>
			<% if SiteConfig.Instagram %>
				<div class="col-12 text-center pb-5">
					<a href="$SiteConfig.Instagram" target="_blank" rel="noreferrer" class="btn btn-warning text-white">Abonieren</a>
				</div>
			<% end_if %>
			<div class="col-12 text-center pb-5">
				<div class="row">
					<% loop InstagramImage.sort("SortOrder") %>
						<div class="col-12 col-md-6 col-lg-3 pb-4" data-aos="fade-up" data-aos-delay="{$Pos(1)}00">
							<a data-fancybox="instagram-gallery" href="$URL">$FocusFill(350,350)</a>
						</div>
					<% end_loop %>
				</div>
			</div>
		</div>
	</div>
</section>
</div>