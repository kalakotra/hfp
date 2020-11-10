<!DOCTYPE html>
<!--
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Silverstripe Theme By Brandfisher - www.brandfisher.de
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-->

<html lang="$ContentLocale">
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0">
	$MetaTags(false)

	<link rel="preload" href="$ThemeDir/webfonts/fa-solid-900.woff2" as="font" type="font/woff2" crossorigin="anonymous">
	<link rel="preload" href="$ThemeDir/webfonts/fa-brands-400.woff2" as="font" type="font/woff2" crossorigin="anonymous">

	<link rel="apple-touch-icon" sizes="60x60" href="/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
	<link rel="manifest" href="/site.webmanifest">
	<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
	<meta name="msapplication-TileColor" content="#96bc0b">
	<meta name="theme-color" content="#96bc0b">

	
	<% if PreviewImage %>
		<meta property="og:image" content="$PreviewImage.FocusFill(300,300).URL">
	<% else %>
		<% if Images %>
			<meta property="og:image" content="$Images.sort('SortOrder').First.FocusFill(300,300).URL">
		<% else %>
			<% if MenuLogo %>
				<meta property="og:image" content="$MenuLogo.FocusFill(300,300).URL">
			<% else %>
				<% if MenuLogo %>
					<meta property="og:image" content="$FeaturedImage.FocusFill(300,300).URL">
				<% else %>
					<meta property="og:image" content="/og-image.jpg">
				<% end_if %>
			<% end_if %>
		<% end_if %>
	<% end_if %>
	<meta property="og:type" content="website" />
	<meta property="og:image:width" content="279">
	<meta property="og:image:width" content="279">
	<meta property="og:image:height" content="279">
	<meta property="og:title" content="<% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title">
	<meta property="og:url" content="{$Link}">
	<meta property="og:description" content="$Content.limitWordCount(100)">
	
	
</head>
<body class="$ClassName.ShortName" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
<% include Header %>
$Layout
<% include Footer %>

</body>
</html>
