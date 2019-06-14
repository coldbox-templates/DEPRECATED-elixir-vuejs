const elixir 	= require( "coldbox-elixir" );
const webpack 	= require( "webpack" );


elixir.config.mergeConfig( {
    plugins : [
        // globally scoped items which need to be available in all templates
        new webpack.ProvidePlugin({
			$              	: "jquery",
			jQuery         	: "jquery",
			"window.jQuery"	: "jquery",
			"window.$"     	: "jquery",
			"bootstrap"		: "bootstrap",
            "Vue"          	: [ "vue/dist/vue.esm.js", "default" ],
            "window.Vue"   	: [ "vue/dist/vue.esm.js", "default" ]
        })
	]
} );
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

module.exports = elixir( mix => {
	// Mix App styles
	mix.sass( "App.scss" )
		// Mix JS and VueJS components
		.vue( "App.js" );
} );
