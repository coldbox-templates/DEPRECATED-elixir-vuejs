var Vue = require( 'vue' );

import Hola from './components/Hola.vue';

new Vue( {
    el : '#app',

    components : { Hola },

    ready() {
        alert( 'ColdBox, Vue and Vueify all set to go!' );
    }
} );