<!--- All methods in this helper will be available in all handlers,views & layouts --->
<cfscript>
	public string function correctedElixirPath(  
        required string fileName,
        boolean useModuleRoot = false,
        boolean fileIsHref = false
    ) 
    output="false" 
    hint="finds the versioned path for an asset"
    {
		var templateCache       = getCache( "template" );
        var includesLocation    = "includes";
        var event               = getRequestContext();
        var mapping             = ( useModuleRoot && len( event.getCurrentModule() ) ) ?
                                        event.getModuleRoot() :
                                        controller.getSetting( "appMapping" );
        var filePath            = expandPath( "#mapping#/#includesLocation#/rev-manifest.json" );

        if( fileIsHref ){
        	var href = "/" & arguments.fileName;
        } else {
        	var href = "#mapping#/#includesLocation#/#arguments.fileName#";
            //remove preceeding slash to find the key
        }

        var key = right( href, len( href )-1 );

        if ( ! fileExists( filePath ) ) {
            return href;
        }

        var fileContents = templateCache.getOrSet( 
            "elixirManifest", 
            function(){ 
                return fileRead( filePath ); 
            } 
        );
        if ( ! isJSON( fileContents ) ) {
            return href;
        }

        var json = deserializeJSON( fileContents );

        if ( ! structKeyExists( json, key ) ) {
            return href;
        }

        return "#json[ key ]#";

	}
</cfscript>