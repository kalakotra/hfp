<section class="abstract-bg pageHeader">
	<div class="container-fluid">
		<div class="row py-5 align-items-center">
			<div class="col-12 col-lg text-center text-white">
				<h1>$HeaderTitle</h1>
				<p>$HeaderSubtitle</p>
			</div>
			<% if HeaderBox %>
				<% loop HeaderBox.sort("RAND()").limit(1) %>
					<div class="col-12 col-lg-4 text-center bg-white py-4 shadow" data-aos="fade-left">
						<% if Icon %>
							$Icon.FitMax(250,60)<br />
						<% end_if %>
						<div class="font-weight-bold font-size-1-25 py-2">
							$Title
						</div>
						<div class="font-size-0-75 pb-3">
							$Text
						</div>
						<% if LinkPage %>
							<a href="$LinkPage.Link" class="btn bf-btn rounded-0 animated"><% if LinkTitle %>$LinkTitle<% else %>$LinkPage.Title<% end_if %></a>
						<% end_if %>
					</div>
				<% end_loop %>
			<% else %>
				<% loop getMyClass("HeaderBox").sort("RAND()").limit(1) %>
					<div class="col-12 col-lg-4 text-center bg-white py-4 shadow" data-aos="fade-left">
						<% if Icon %>
							$Icon.FitMax(250,60)<br />
						<% end_if %>
						<div class="font-weight-bold font-size-1-25 py-2">
							$Title
						</div>
						<div class="font-size-0-75 pb-3">
							$Text
						</div>
						<% if LinkPage %>
							<a href="$LinkPage.Link" class="btn bf-btn rounded-0 animated"><% if LinkTitle %>$LinkTitle<% else %>$LinkPage.Title<% end_if %></a>
						<% end_if %>
					</div>
				<% end_loop %>
			<% end_if %>
		</div>
	</div>
</section>