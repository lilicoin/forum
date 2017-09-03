<!DOCTYPE html>
<html lang="en">
	<head>
		{%- set url = url(), theme = session.get('identity-theme') -%}
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<title>{{ get_title(false) ~ ' - ' ~ config.site.name }}</title>

		<meta content="{{ config.site.keywords }}" name="keyword">
		<meta content="{{ config.site.description }}" name="description">
		<meta name=generator content="Phalcon Framework {{ version() }}">

		{%- if canonical is defined -%}
		<link rel="canonical" href="{{ config.site.url }}/{{ canonical }}">
		{%- endif -%}

		{%- if post is defined -%}
		<link rel="author" href="https://github.com/{{ post.user.login }}">
		<link rel="author" href="https://github.com/{{ post.user.login }}">
		<link rel="publisher" href="{{ config.site.url }}/">
		{%- endif -%}

		{%- if canonical is defined -%}
		<meta property="og:url" content="{{ config.site.url }}/{{ canonical }}">
		<meta property="og:site_name" content="Phosphorum">
		{%- endif -%}

		{#- Embed this font here to avoid Cross-Site issues -#}
		<style type="text/css">
			@font-face {
				font-family: 'icomoon';
					src:url('{{ url }}fonts/icomoon.wofficomoon.eot');
					src:url('{{ url }}fonts/icomoon.eot?#iefix') format('embedded-opentype'),
					url('{{ url }}fonts/icomoon.woff') format('woff'),
					url('{{ url }}fonts/icomoon.ttf') format('truetype'),
					url('{{ url }}fonts/icomoon.svg#icomoon') format('svg');
				font-weight: normal;
				font-style: normal;
			}
		</style>

 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        {{ assets.outputCss() }}
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
  <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.7/summernote.css" rel="stylesheet">
  <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.7/summernote.js"></script>

		{#- CSS resources from jsdelivr cannot be combined due to Bootstrap icons -#}
		{{- stylesheet_link("//cdn.jsdelivr.net/bootstrap/3.3.7/css/bootstrap.min.css", false) -}}
		{{- stylesheet_link("//cdn.jsdelivr.net/prettify/0.1/prettify.css", false) -}}
		{%- if theme == 'L' -%}
		{{- stylesheet_link("css/theme-white.css?v=" ~ forum_version(), true) -}}
		{%- else -%}
		{{- stylesheet_link("css/theme.css?v=" ~ forum_version(), true) -}}
		{%- endif -%}
		{{- stylesheet_link("css/editor.css?v=" ~ forum_version(), true) -}}
		{{- stylesheet_link("css/fonts.css?v=" ~ forum_version(), true) -}}
		{{- stylesheet_link("css/diff.css?v=" ~ forum_version(), true) -}}
		{{- stylesheet_link("css/style.css?v=" ~ forum_version(), true) -}}
		{#- reCaptcha -#}
		{%- if recaptcha.isEnabled() -%}
			{{- recaptcha.getJs() -}}
		{%- endif -%}
	</head>
	<body class="with-top-navbar">
		{{ content() }}
  <script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
  </script>
		{{ javascript_include("js/editor.js?v=" ~ forum_version()) }}
		{{ javascript_include("js/forum.js?v=" ~ forum_version()) }}
		{{ javascript_include("js/gs.js?v=" ~ forum_version()) }}

		<script type="text/javascript">Forum.initializeView('{{ url() }}');</script>
	</body>
</html>
