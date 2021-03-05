# Elixir + Vuejs Template

This template leverages ColdBox and the [ColdBox Elixir](https://github.com/Ortus-Solutions/coldbox-elixir) project for front end asset management and compilations.  You can place all your static assets in the `resources/assets` folder and Elixir will combine, version, copy, and even babelify your code to their appropriate location in the `includes` folder.

Please check out the ColdBox Elixir documentation for further information: https://coldbox-elixir.ortusbooks.com/v/v3/

It also leverages [Vuejs](http://vuejs.org/) for your front end framework.

## License

Apache License, Version 2.0.

## Important Links

Source Code

- https://github.com/coldbox-templates/elixir-vuejs

## Quick Installation

Each application templates contains a `box.json` so it can leverage [CommandBox](https://www.ortussolutions.com/products/commandbox) for its dependencies.  
Just go into each template directory and type:

```bash
box install
```

This will setup all the needed dependencies for each application template.  You can then type:

```bash
box server start
```

And run the application.

## ColdBox Elixir Installation

You will find a `package.json` and a `webpack.config.js` in the root of this template. You can install ColdBox elixir by typing:

```bash
npm install
```

Then a `node_modules` folder will be created will all the needed dependencies for ColdBox Elixir.  You can then just run `npm run dev` for asset combination and management for development environments.  Run `npm run prd` so it can do minification of assets as well for production environments. Run `npm run watch` for starting watchers in all ColdBox convetions for changes and asset recompilation.

## Vue.JS Components

The `resources/js` folder includes a `filters` and `components` directory where you can drop Vue.js filters and `.vue` components.  You can then run our elixir gulp task to broswerify them into the appropriate `includes` file.  Now get your Vue.js on!

---
 
### THE DAILY BREAD

 > "I am the way, and the truth, and the life; no one comes to the Father, but by me (JESUS)" Jn 14:1-12
