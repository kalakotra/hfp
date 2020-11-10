<aside>
	<% if $Menu(2) %>
		<nav class="secondary">
			<% with $Level(1) %>
				<a href="$Link" class="font-size-1-25 pb-3 d-inline-block">$MenuTitle</a>
				<ul>
					<% include SidebarMenu %>
				</ul>
			<% end_with %>
		</nav>
	<% end_if %>
	<div class="mt-5">
		<% if MenuLogoID>0 %>
			$MenuLogo.FitMax(490,160)
		<% else %>
			<% if $Level(1).MenuLogoID>0 %>$Level(1).MenuLogo.FitMax(490,160)<% end_if %>
		<% end_if %>
	</div>
</aside>
