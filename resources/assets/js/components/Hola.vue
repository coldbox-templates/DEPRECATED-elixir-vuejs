<template>
    <div class="col-md-4 offset-md-4">
        <h1>Hola, {{ name }}!</h1>
        <input class="form-control" type="text" v-model="name">
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