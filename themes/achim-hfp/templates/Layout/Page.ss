<div class="bg-f1f1f1-special">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-lg-8 text-center">
				<h1 class="text-white pb-3"><% if MainTitle %>$MainTitle<% else %>$Title<% end_if %></h1>
				<% if SubTitle %><p class="text-white pb-3">$SubTitle</p><% end_if %>
				<% if Video %><p><iframe src="https://www.youtube-nocookie.com/embed/{$Video}" width="100%" height="315" frameborder="0"></iframe></p><% end_if %>
			</div>
		</div>
	</div>
</div>
<div class="bg-f1f1f1">
	<div class="container pb-3">
		<div class="row  justify-content-center">
			<div class="col-10 col-lg-8 py-3 text-center">
				$Content
				$Form
				$CommentsForm

				<% if URLSegment=impressum %>
					<script src="https://app.g-i-d-a.de/bot/getImpressumText/8d27e1ba2c853c8d2357ea89aa7facee/dbe7bc49a4080a613e4322b544e8ca23asdf?js"></script>
				<% end_if %>

				<% if URLSegment=datenschutz %>
					<script src="https://app.g-i-d-a.de/bot/getDatenschutzText/8d27e1ba2c853c8d2357ea89aa7facee/dbe7bc49a4080a613e4322b544e8ca23asdf?js"></script>
				<% end_if %>
			</div>
		</div>
	</div>
</div>
<% if ContentBox %>
	<section class="bg-white">
		<div class="container-fluid">
			<% loop ContentBox %>
				<div class="row">
					<div class="col-12 col-md-6 <% if Even %>order-1 order-md-2<% end_if %> contentBoxImage" style="background-image: url($Image.URL);">
					</div>
					<div class="col-12 col-md-6 <% if Even %>order-2 order-md-1<% end_if %>">
						<div class="p-3 p-lg-5" data-aos="fade-up" data-aos-duration="1000">
							<div class="font-weight-bold pb-3">$Title</div>
							<div class="font-weight-bold pb-3">$Subtitle</div>
							<div class="font-size-1">$Text</div>
							<% if PageLink %>
								<div class="text-right pt-4">
									<a href="$PageLink.Link" class="btn btn-primary font-size-1">WEITERE INFORMATIONEN</a>
								</div>
							<% end_if %>
						</div>
					</div>
				</div>
			<% end_loop %>
		</div>
	</section>
<% end_if %>