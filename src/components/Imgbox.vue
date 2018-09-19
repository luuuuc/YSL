<template>
    <div class="swiper-slide">
        <div class="thumbnail">
            <div class="img-box" v-for="(item,contentIndex) in pVal.listcolorArr" v-show="contentIndex==tabIndex" :key="contentIndex">
                <a class="e-index-topdp">
                    <img :src="require('../assets/'+item)"  class="swiper-lazy swiper-lazy-loaded">
                </a>
                <div class="tag">
                    <span class="tag-hot">新品</span>
                </div>
                <div class="goods-handle events-goods-handle none-sm">
                    <div class="btn-box">
                        <a class="btn btn-black btn-icon e-quickbuy">
                            <i class="glyphicon glyphicon-shopping-cart" style="margin-right:10px;"></i>
                            <span>立即购买</span>
                        </a>
                        <a class="btn btn-black-border e-index-topdp e-read-more">查看详情</a>
                    </div>
                </div>
            </div>
            <div class="goods-classify e-item-display-color">
                <div class="swiper-color-box clearfix">
                    <div class="e-swiper-color swiper-container-horizontal">
                        <div class="swiper-wrapper">
                            <div v-for="(val,index) in pVal.listpicArr" class="swiper-slide" :class="{biank:index==tabIndex}" :key="index" @click="biankClick(index)" >
                                <span class="color-item"><img :src="require('../assets/'+val)"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <h3 class="goods-tit e-index-topdp"><a>{{pVal.subtitle}}</a></h3>
            <p class="goods-title-cn e-index-topdp"><a>{{pVal.title}}</a></p>
            <p class="goods-introudce e-index-topdp"><a>{{pVal.spec}}</a></p>
            <div class="goods-price">
                <div class="goods-evaluate">
                    <div class="star-content" style="width: 100.0%;">
                        <i class="icon-star-black"></i>
                    </div>
                </div>
                <div class="price-m">|<span>¥{{pVal.price}}</span></div>
            </div>
        </div>
    </div>
</template>

<script>
// import  '../assets/css/body.css'
    export default{
        data(){
            return{
                 tabIndex:0,
            }
        },
        components: {},
        methods: {
            biankClick(index){
                this.tabIndex = index;
            },
        },
        props:['pVal','i'],
        computed: {},
        watch: {},
        mounted(){
            
        }
        
    }
</script>
<style>
.thumbnail .img-box {
    position: relative;
}
.thumbnail .img-box .tag {
    position: absolute;
    top: 0;
    left: 0;
    z-index: 2;
}
 .thumbnail .img-box .tag span {
    display: inline-block;
    width: auto;
    height: 24px;
    background: #000;
    padding: 0 12px;
    font-size: 12px;
    letter-spacing: .75px;
    color: #fff;
    line-height: 24px;
    text-align: center;
}
.thumbnail .img-box .goods-handle {
    display: none;
    position: absolute;
    top: 0;
    left: 0;
    z-index: 1;
    width: 100%;
    height: 100%;
    white-space: nowrap;
    text-align: center;
    background: rgba(255,255,255,.55);
}
.img-box:hover .goods-handle{
    display: block;
}
.goods-handle .btn-box {
    display: inline-block;
    vertical-align: middle;
}
.img-box .goods-handle .btn:first-child {
    margin-bottom: 10px;
}
.btn-black{
    color: #fff;
    background: #000;
    border-color: #000;
    position: relative;
}
.goods-handle .btn {
    display: block;
    width: 180px;
}
.thumbnail .img-box .goods-handle:after {
    display: inline-block;
    content: '';
    width: 0;
    height: 100%;
    vertical-align: middle;
}
.btn-black-border,  .btn-black:hover {
    color: #000;
    background: #fff;
}
 .btn:hover {
    text-decoration: none;
}
.btn-black-border:hover {
    background-color: #000;
    color: #fff;
}
.swiper-wrapper .swiper-slide{
    display: inline-block;
    width: 29.6px;
}
.biank{
    border: 1px solid #e6e6e6;
}
.color-item {
    position: relative;
    display: block;
    margin: 5px;
    width: 20px;
    height: 20px;
    border-radius: 0;
}
.color-item img {
    display: block;
    width: 20px;
    height: 20px;
    border-radius: 0;
}
.e-swiper-color{
    margin: 0 20px;
    width: 78%;
    float: right;
}
.swiper-container{
    position: relative; 
    overflow: hidden;
    z-index: 1;

}
.swiper-wrapper{
    display:flex;
    ransition-property: transform;

}
.swiper-color-box{
    position: relative;
}
.swiper-lazy-loaded{
    width:238px;
    height:265px;
}
.goods-classify{
    padding: 10px 22px 30px;
}
.goods-tit {
    text-align: center;
    font-size: 14px;
    line-height: 20px;
    height: 40px;
    font-weight: 700;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
.goods-title-cn {
    text-align: center;
    font-size: 14px;
    line-height: 20px;
    height: 20px;
    color: #000;
    white-space: nowrap;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
}
.goods-introudce {
    text-align: center;
    margin-bottom: 15px;
    font-size: 12px;
    line-height: 20px;
    height: 20px;
    white-space: nowrap;
    overflow: hidden;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
}
.goods-introudce>a {
    color: #999;
}
.goods-price{
    position: relative;
    text-align: center;
}
.goods-evaluate {
    position: relative;
    padding-right: 20px;
    text-align: right;
    vertical-align: middle;
    display: inline-block;
}
.icon-star-black{
    display: inline-block;
    width:65px;
    height:10px;
    background-position: -180px -160px;
    background-image: url(../assets/img/index/icon.png);
}
.price-m>span{
    margin-left:20px;
    font-size: 12px;
    font-weight: 700;
}
.price-m{
    display: inline-block;
}
</style>
