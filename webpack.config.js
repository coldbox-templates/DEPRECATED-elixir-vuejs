const elixir = require("coldbox-elixir");

module.exports = elixir(mix => {
    mix.sass("App.scss");
    mix.vue("App.js");
});
