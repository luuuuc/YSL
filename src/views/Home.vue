<template>
    <div>
    <!-- <my-header></my-header> -->
    <my-carousel></my-carousel>
    <my-body></my-body>
    <!-- <my-footer></my-footer> -->
    </div>
</template>

<script>

import myCarousel from '../components/Carousel.vue'
import myBody from '../components/Body.vue'

    export default{
        data(){
            return {}
        },
        components: {
            myCarousel,
            myBody
        },
        methods: {},
        computed: {},
        watch: {},
        mounted: function () {
        }
    }
</script>
