<template>
    <div>
        <h1>Hola, {{ name }}!</h1>

        <input type="text" v-model="name">
    </div>
</template>

<script>
    export default {
        data() {
            return {
                name: 'Mr ColdBox'
            };
        }
    };
</script>

<style>
    h1 {
        color: green;
    }
</style>