<template>
    <div>   
        <my-header></my-header>
        <router-view/>
        <my-footer></my-footer>
     </div>
</template>
<script>
   import myHeader from '../components/Header.vue'
    import myFooter from '../components/Footer.vue'
     export default{
        data(){
            return {}
        },
        components: {
           myHeader,
            myFooter,
        },
        methods: {},
        computed: {},
        watch: {},
        mounted: function () {
        }
    }
        
</script>
