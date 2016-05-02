var elixir = require( 'coldbox-elixir' );

/*
 |--------------------------------------------------------------------------
 | Elixir Asset Management
 |--------------------------------------------------------------------------
 |
 | Elixir provides a clean, fluent API for defining some basic Gulp tasks
 | for your ColdBox application. By default, we are compiling the Sass
 | file for our application, as well as publishing vendor resources.
 |
 */

elixir( function( mix ){
	// Mix App styles
	mix.sass( "App.scss" )
		// Mix JS and VueJS components
		.browserify( "App.js" );
} );
