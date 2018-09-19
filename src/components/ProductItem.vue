<template>
    <div>
        <div class="list-box">
            <div class="top-paging clearfix">
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{path: '/' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>彩妆</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
        </div>
        <div class="list-product">
            <div class="goods-tab-item clearfix">
                <img-box v-for="(pVal,i) in detList" :pVal="pVal" :key="i" :i="i"></img-box>
            </div>
        </div>
    </div>
</template>
<script>
    import axios from 'axios'
    import '../assets/css/productnav.css'
    import imgBox from './Imgbox'
    export default{
        data(){
            return {
            //  pid:1,
                detList:null,
            }
        },
        props:['pid'],
        components: {imgBox},
        methods: {
            loadIndex(){
                var url=`http://127.0.0.1/YSL/data/product/product.php`;
                axios.get(url+"?pid="+this.pid).then((res)=>{
                    // this.beautyList=res.data.beautyItems;
                    // this.inspirationList=res.data.inspirationItems;
                    // this.fidList=res.data.fidItems;
                   var resArr=res.data.deItems;
                   var newArr=[];
                    // console.log(resArr);
                    resArr.forEach((item,i) => {
                        if(i==0){
                            newArr.push(item)
                            newArr[0].listcolorArr=[]
                            newArr[0].listpicArr=[]
                            newArr[0].listcolorArr.push(item.listcolor)
                            newArr[0].listpicArr.push(item.listpic)
                        }else{
                            if(item.lid==newArr[newArr.length-1].lid){
                                var len=newArr[newArr.length-1].listcolorArr.length
                                newArr[newArr.length-1].listcolorArr[len]=item.listcolor
                                newArr[newArr.length-1].listpicArr[len]=item.listpic
                            }else{
                                 newArr.push(item)
                                  newArr[newArr.length-1].listcolorArr=[]
                                  newArr[newArr.length-1].listpicArr=[]
                                 newArr[newArr.length-1].listcolorArr.push(item.listcolor)
                                 newArr[newArr.length-1].listpicArr.push(item.listpic)
                            }
                        }
                    });
                    // console.log(newArr)
                    this.detList=newArr
                }).catch((err)=>{
                    console.log(err);
                })
            },
        },
        computed: {},
        watch: {
            $route(to,from){
                this.loadIndex()
            }
        },
        mounted: function () {
              this.loadIndex()
        }
    }
</script>
