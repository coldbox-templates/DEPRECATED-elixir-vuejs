# Elixir + Vuejs Template

This advanced template leverages ColdBox and the (ColdBox Elixir)[https://github.com/ColdBox/elixir] project for asset management and compilations.  You can place all your static assets in the `resources/assets` folder and Elixir will combine, version, copy, and even babelify your code to their appropriate location in the `includes` folder.

Please check out the ColdBox Elixir documentation for further information: https://github.com/ColdBox/elixir/wiki

It also leverages [Vuejs](http://vuejs.org/) for your front end framework.

## License
Apache License, Version 2.0.

## Important Links

Source Code
- https://github.com/coldbox-templates/elixir-vuejs

## Quick Installation

Each application templates contains a `box.json` so it can leverage [CommandBox](http://www.ortussolutions.com/products/commandbox) for its dependencies.  
Just go into each template directory and type:

```
box install
```

This will setup all the needed dependencies for each application template.  You can then type:

```
box server start
```

And run the application.

## ColdBox Elixir Installation

You will find a `package.json` and a `Gulpfile.js` in the root of this template. You can install ColdBox elixir by typing

```
npm install
```

Just make sure that you have Gulp installed globally as well: `npm install -g gulp`.

Then a `node_modules` folder will be created will all the needed dependencies for ColdBox Elixir.  You can then just run `gulp` for asset combination and management.  Run `gulp --production` so it can do minification of assets as well. Run `gulp watch` for starting watchers in all ColdBox convetions for changes and asset recompilation.

## Vue.JS Components

The `resources/js` folder includes a `filters` and `components` directory where you can drop Vue.js filters and `.vue` components.  You can then run our elixir gulp task to broswerify them into the appropriate `includes` file.  Now get your Vue.js on!

---
 
###THE DAILY BREAD
 > "I am the way, and the truth, and the life; no one comes to the Father, but by me (JESUS)" Jn 14:1-12
