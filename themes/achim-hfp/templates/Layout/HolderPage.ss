<div class="bg-f1f1f1-special- mt-n5">
	<div class="container py-5">
		<div class="row justify-content-center">
			<div class="col-12 col-lg-8 text-center">
				<h1 class="text-white pb-3"><% if MainTitle %>$MainTitle<% else %>$Title<% end_if %></h1>
				<% if SubTitle %><p class="text-white pb-3">$SubTitle</p><% end_if %>
				<% if Video %><p><iframe src="https://www.youtube-nocookie.com/embed/{$Video}" width="100%" height="315" frameborder="0"></iframe></p><% end_if %>
			</div>
		</div>
	</div>
</div>
<% if $Content %>
<div class="bg-f1f1f1">
	<div class="container py-3">
		<div class="row  justify-content-center">
			<div class="col-10 col-lg-8 py-3 text-center">
				$Content
			</div>
		</div>
	</div>
</div>
<% end_if %>
<% if Children %>
	<section class="bg-white">
		<div class="container-fluid">
			<% loop Children %>
				<div class="row">
					<div class="col-12 col-md-6 <% if Even %>order-1 order-md-2<% end_if %> contentBoxImage" style="background-image: url($PreviewImage.FocusFill(600,500).URL);">
						<img src="$PreviewImage.FocusFill(600,500).URL" alt="$PreviewImage.Title" class="opacity-0" />
					</div>
					<div class="col-12 col-md-6 <% if Even %>order-2 order-md-1<% end_if %> align-self-center">
						<div class="p-3 p-lg-5" data-aos="fade-up" data-aos-duration="1000">
							<div class="font-weight-bold pb-3"><% if PreviewTitle %>$PreviewTitle<% else %>$Title<% end_if %></div>
							<div class="font-size-1">$PreviewText</div>
							<div class="text-right pt-4">
								<a href="$Link" class="btn btn-primary font-size-1">WEITERE INFORMATIONEN</a>
							</div>
						</div>
					</div>
				</div>
			<% end_loop %>
		</div>
	</section>
<% end_if %>