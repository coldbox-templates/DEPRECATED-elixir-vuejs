<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to Coldbox!</title>
	<meta name="description" content="ColdBox Application Template">
    <meta name="author" content="Ortus Solutions, Corp">
	<!---Base URL --->
	<base href="#event.getHTMLBaseURL()#" />
	<!---css --->
    <link rel="stylesheet" type="text/css" href="#html.elixirPath( "css/App.css" )#" />
</head>
<body>

	<!---Container And Views --->
	<div class="container" id="app">
		#renderView()#
	</div>

	<footer class="footer container">
		<p class="pull-right">
			<a href="##"><i class="glyphicon glyphicon-arrow-up"></i> Back to top</a>
		</p>
		<p>
			<a href="https://www.coldbox.org">ColdBox Platform</a> is a copyright-trademark software by
			<a href="https://www.ortussolutions.com">Ortus Solutions, Corp</a>
		</p>
		<p>
			Design thanks to
			<a href="https://getbootstrap.com/">Twitter Bootstrap</a>
		</p>
	</footer>

	<script src="#html.elixirPath( "js/runtime.js" )#"></script>
    <script src="#html.elixirPath( "js/vendor.js" )#"></script>
    <script src="#html.elixirPath( "js/App.js" )#"></script>
</body>
</html>
</cfoutput>
