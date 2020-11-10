<%--Include SidebarMenu recursively --%>
<% if LinkOrSection = section %>
	<% if $Children %>
		<% loop $Children %>
			<li class="$LinkingMode">
				<a href="$Link" class="$LinkingMode" title="Go to the $Title.XML page">
					$MenuTitle.XML
				</a>

				<% if $Childrenxyz %>
					<ul>
						<% include SidebarMenu %>
					</ul>
				<% end_if %>

			</li>
		<% end_loop %>
	<% end_if %>
<% end_if %>
