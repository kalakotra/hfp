<nav class="primary">
	<ul class="nav justify-content-end">
		<% loop $Menu(1) %>
			<li class="$LinkingMode nav-item ">
				<a href="$Link" title="$Title.XML" class="nav-link">$MenuTitle.XML</a>
				<% if Children %>
					<ul class="submenu animated">
						<% loop Children %>
							<li>
								<a href="$Link" title="$Title.XML" class="animated">$MenuTitle.XML</a>
							</li>
						<% end_loop %>
					</ul>
				<% end_if %>
			</li>
		<% end_loop %>
		<% if $Locales %>
			<% loop $Locales %>
                <li class="$LinkingMode">
                    <a href="$Link.ATT" <% if $LinkingMode != 'invalid' %> rel="alternate" hreflang="$HrefLang" <% end_if %> class="nav-link"><img src="$ThemeDir/images/flags/4x3/{$URLSegment}.svg" alt="$Title.XML Flag" class="languageFlag" /></a>
                </li>
            <% end_loop %>
		<% end_if %>
	</ul>
</nav>