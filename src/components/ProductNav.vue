<template>
    <div class='container'>
        <div class="article article-width">
            <div class="list-content-all clearfix">
                <div class='list-left-nav'>
                    <div class="filter-title none-sm">
				        <p v-if="myDate[index]">{{myDate[index].name}}</p>
			        </div>
                    <div>
                        <el-collapse>
                            <template>
                                <el-collapse-item  v-for="(val,i) in myDate[index].list" :key=i :title="val.title" :name="i">
                                <div v-for="(vals,i) in val.subList" :key=i><a href="#">{{vals}}</a></div>
                            </el-collapse-item>
                            </template>
                        </el-collapse>
                    </div>
                </div>
                <div class="list-right-content">
                    <product-item :pid="pid"></product-item>
                </div> 
            </div>
            <div class="page-list">
                        <!-- <span class="demonstration">页数较少时的效果</span> -->
                <el-pagination
                    layout="prev, pager, next"
                    :total="50">
                </el-pagination>
            </div>
        </div>
    </div>
</template>
<script>
    import '../assets/css/productnav.css'
    import productItem from'./ProductItem'
    import header from './Header'

    export default{
        
        data(){
            return {
                // makeup:{},
                // skincare:{},
                // fragrance:{},
                myDate:[],
                index:"",
                name:"",
                pid:""
            }
        },
        components: {productItem},
        methods: {
            fn(){
                var pname=this.$route.params.id
            //  console.log(pname);
             if(pname=="makeup"){
                this.index=0
             }else if(pname=="skincare"){
                 this.index=1
             }else if(pname=="fragrance"){
                 this.index=2
             }
             this.myDate=header.myDate;
             this.pid=this.index+1;
            // console.log(this.pid);
            }
        },
        computed: {},
        watch: {
            $route(to,from){
                this.fn()
            }
        },
        mounted: function () {
             this.fn()
        },
       
        
        
    }
</script>