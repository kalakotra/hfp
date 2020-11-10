<nav >
	<ul class="sideMain">
		<% if $Locales %>
			<li>
				<% loop $Locales %>
                    <a href="$Link.ATT" <% if $LinkingMode != 'invalid' %> rel="alternate" hreflang="$HrefLang" <% end_if %> class="nav-link"><img src="$ThemeDir/images/flags/4x3/{$URLSegment}.svg" alt="$Title.XML Flag" class="languageFlag" /></a>
            	<% end_loop %>
            </li>
		<% end_if %>
		<% loop $Menu(1) %>
			<li class="$LinkingMode">
				<a href="$Link" title="$Title.XML" class="animated">$MenuTitle.XML</a>
				<% if Children %>
					<span class="arrow animated"></span>
					<ul class="sideSub">
						<% loop Children %>
							<li class="$LinkingMode"><a href="$Link" title="$Title.XML" class="animated font-size-1">$MenuTitle.XML</a></li>
						<% end_loop %>
					</ul>
				<% end_if %>
			</li>
		<% end_loop %>
	</ul>
</nav>
