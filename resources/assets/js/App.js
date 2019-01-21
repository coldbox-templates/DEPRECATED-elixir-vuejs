import Vue from "vue";
import Hola from "./components/Hola.vue";

new Vue({
    el: "#app",
    components: { Hola },
    mounted() {
        if (Vue.config.devtools && console.log) {
            console.log("ColdBox, Vue and Vueify all set to go!");
            console.log(`Vue Version ${Vue.version}`);
        }
    }
});
