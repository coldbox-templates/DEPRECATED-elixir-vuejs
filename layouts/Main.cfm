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
    <link rel="stylesheet" type="text/css" href="#correctedElixirPath( "css/app.css" )#" />
    <!--- If there are any extracted Vue styles, they will be in this file --->
    <cfscript>
        if ( getCache( "template" ).getOrSet( "vue-styles", function() {
            return fileExists( correctedElixirPath( "js/app.css" ) );
        } ) ) {
            writeOutput( '<link rel="stylesheet" type="text/css" href="#correctedElixirPath( "js/app.css" )#" />' );
        }
    </cfscript>
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
	
	<script type="application/javascript" src="#correctedElixirPath( "js/runtime.js" )#"></script>
    <script type="application/javascript" src="#correctedElixirPath( "js/vendor.js" )#"></script>
    <cfloop array="#prc.assetBag.getFooterContent()#" index="assetPath">
        <cfif right( assetPath, 2 ) EQ "js">
            <script type="application/javascript" src="#assetPath#"></script>
        </cfif>
    </cfloop>
    <script type="application/javascript" src="#correctedElixirPath( "js/app.js" )#"></script>
</body>
</html>
</cfoutput>
