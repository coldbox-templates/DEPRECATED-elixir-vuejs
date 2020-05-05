<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<title>Welcome to Coldbox With VueJS!</title>

	<meta name="description" content="ColdBox Application Template">
    <meta name="author" content="Ortus Solutions, Corp">

	<!---Base URL --->
	<base href="#event.getHTMLBaseURL()#" />

	<!---css --->
	<link rel="stylesheet" type="text/css" href="#html.elixirPath( "css/app.css" )#" />

	<!--- If there are any extracted Vue styles, they will be in this file --->
	<cfscript>
        if ( getCache( "template" ).getOrSet( "vue-styles", function() {
            return fileExists( expandPath( html.elixirPath( "js/app.css" ) ) );
        } ) ) {
            writeOutput( '<link rel="stylesheet" type="text/css" href="#html.elixirPath( "js/app.css" )#" />' );
        }
    </cfscript>
</head>
<body data-spy="scroll">

	<!---Top NavBar --->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" role="navigation">
		<!---Brand --->
		<a class="navbar-brand mb-0" href="#event.buildLink('')#">
			<strong><i class="fa fa-home"></i> Home</strong>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="##navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<!---About --->
			<ul class="nav navbar-nav ml-auto">
				<li class="nav-item dropdown">
					<a href="##" class="nav-link dropdown-toggle" id="navbarDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fa fa-info-circle"></i> About <b class="caret"></b>
					</a>
					<div class="dropdown-menu dropdown-menu-right bg-dark" aria-labelledby="navbarDropdown">
							<a href="" class="dropdown-item text-light bg-dark">
								<strong>#getColdBoxSetting("codename")# (#getColdBoxSetting("suffix")#)</strong>
							</a>
							<a href="https://coldbox.ortusbooks.com" class="dropdown-item text-light bg-dark"><i class="fas fa-book"></i> Help Manual</a>
							<a href="https://ortussolutions.atlassian.net/browse/COLDBOX" class="dropdown-item text-light bg-dark"><i class="fa fa-fire"></i> Report a Bug</a>
							<a href="https://github.com/ColdBox/coldbox-platform/stargazers" class="dropdown-item text-light bg-dark"><i class="fa fa-star"></i> Star Us</a>
							<a href="https://www.ortussolutions.com/services/support" class="dropdown-item text-light bg-dark"><i class="fa fa-home"></i> Professional Support</a>
							<div class="dropdown-divider"></div>
							<img class="rounded mx-auto d-block" width="150" src="includes/images/ColdBoxLogo2015_300.png" alt="logo"/>
					</div>
				</li>
			</ul>
		</div>
	</nav> <!---end navbar --->

	<!---Container And Views --->
	<div class="container" id="app">
		#renderView()#
	</div>

	<footer class="footer">
		<p class="pull-right">
			<a href="##"><i class="glyphicon glyphicon-arrow-up"></i> Back to top</a>
		</p>
		<p>
			<a href="https://github.com/ColdBox/coldbox-platform/stargazers">ColdBox Platform</a> is a copyright-trademark software by
			<a href="https://www.ortussolutions.com">Ortus Solutions, Corp</a>
		</p>
		<p>
			Design thanks to
			<a href="https://getbootstrap.com/">Twitter Boostrap</a>
		</p>
	</footer>

	<script src="#html.elixirPath( "js/runtime.js" )#"></script>
    <script src="#html.elixirPath( "js/vendor.js" )#"></script>
	<script src="#html.elixirPath( "js/app.js" )#"></script>
</body>
</html>
</cfoutput>
