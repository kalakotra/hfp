<header class="header sticky-top--">
	<div class="container">
		<div class="row justify-content-between">
			<div class="col-4 col-lg-3 col-xxl-3-">
				<a href="home/" class="py-"><img src="$ThemeDir/images/logo.jpg" alt="logo Hope for Paradise" /></a>
			</div>
			<div class="col-12 col-lg-9 d-none d-xl-block">
				<div class="row">
					<div class="col-12">
						<% include TopNavigation %>
					</div>
					<div class="col-12">
						<% include Navigation %>
					</div>
				</div>
			</div>
			<div class="col-4 col-lg-3 d-block d-xl-none text-right">
				<button class="hamburger hamburger--squeeze" type="button">
					<span class="hamburger-box">
						<span class="hamburger-inner"></span>
						<span class="d-none-special">menu</span>
					</span>
				</button>
			</div>
		</div>
	</div>
</header>
<div id="mobileMenu" class="animated shadow">
	<a href="home/" class="d-block"><img src="$ThemeDir/images/logo.jpg" alt="logo Henrich-Hair" /></a>
	<% include MobileNavigation %>
</div>
<div class="headerImage paralaxMe">
	<% if HeaderImage %>
		<div id="carouselHeader" class="carousel slide carousel-fade" data-ride="carousel">
			<div class="carousel-inner">
				<% loop HeaderImage.sort("SortOrder") %>
					<div class="carousel-item <% if First %>active<% end_if %>">
						<picture>
							<source media="(max-width: 425px)" srcset="$FocusFill(450,800).URL">
							<source media="(max-width: 576px)" srcset="$FocusFill(600,800).URL">
							<source media="(max-width: 768px)" srcset="$FocusFill(770,1200).URL">
							<source media="(max-width: 992px)" srcset="$FocusFill(1000,1200).URL">
							<source media="(max-width: 1200px)" srcset="$FocusFill(1200,800).URL">
							<source media="(min-width: 1201px)" srcset="$FocusFill(1920,1000).URL">

							<img src="$FocusFill(450,800).URL" alt="$Title" class="d-block w-100" />

						</picture>
					</div>
				<% end_loop %>
			</div>
		</div>
	<% else %>
		<img src="$ThemeDir/images/header.jpg" alt="header image" class="w-100" />
	<% end_if %>
</div>