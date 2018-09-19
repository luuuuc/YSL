<template>
  <div class="block header-c">
    <el-carousel trigger="click" height="535px">
      <el-carousel-item v-for="(item,i) in cImg" :key="i">
        <a :href="item.href"> <img :src="require('../assets/'+item.img)" :title="item.title"></a>
      </el-carousel-item>
    </el-carousel>
  </div>
</template>
<script>
import axios from 'axios'
    export default{
        data(){
            return {
              cImg:{},
            }
        },
        component: {},
        methods: {
          loadCoursel(){
            var url=`http://127.0.0.1/YSL/data/coursel/getCoursesById.php`;
            axios.get(url).then((res)=>{
              this.cImg=res.data;
            }).catch((err)=>{
              console.log(err);
            })
          }
        },
        computed: {},
        watch: {},
        mounted: function () {
          this.loadCoursel()
        }
    }
</script>
<style scope>
  .el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 150px;
    margin: 0;
  }

  .el-carousel__item:nth-child(2n) {
     background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
     background-color: #d3dce6;
  }
  .header-c .el-carousel__arrow--left {
    left: 310px !important;
 }
 .header-c .el-carousel__arrow--right {
    right: 310px !important;
 }
</style>
