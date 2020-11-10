<nav class="topMenu">
	<ul class="nav justify-content-end">
		<% loop $AllMenu(1).filter("TopMenu", "1") %>
			<li class="nav-item $LinkingMode"><a href="$Link" title="$Title.XML" class="nav-link text-black font-size-1">$MenuTitle.XML</a></li>
		<% end_loop %>
	</ul>
</nav>
