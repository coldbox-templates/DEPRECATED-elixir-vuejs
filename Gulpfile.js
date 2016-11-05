var elixir = require( "coldbox-elixir" );

require( "coldbox-elixir-vue-2" );

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
		.webpack( "App.js" );
} );
