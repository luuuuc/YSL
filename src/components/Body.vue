<template>
    <div>
      <!--1.明星产品-->
      <div class="article article-favorites">
        <div class="common-header">
			<p class="header-title-en none-sm">YSL FAVORITES</p>
			<p class="header-title-cn">明星产品</p>
		</div>
        <div class='favorites-aside'>
            <el-tabs v-model="activeName" @tab-click="handleClick" >
            <el-tab-pane v-for="(v,fIndex) in fidList" :key="fIndex" :label="v.fname" :name="v.fid">
                <div class="goods-tab-item clearfix">
                  <div style="float: left;">
                        <a href="#"><img :src="require('../assets/'+v.fpic)"></a>
                  </div>
                  <div class="swiper-container">
                    <div class="swiper-wrapper" :class='{moved:isMoved}' v-if="detList!=null">
                        <!-- <div class="swiper-slide" style="width: 234px; margin-right: 20px;display: inline-block;" 
                        v-for="(pVal,i) in detList" :key="i">
                            <div class="thumbnail">
                                <div class="img-box" v-for="(item,contentIndex) in pVal.listcolorArr" v-show="contentIndex==tabIndex" :key="contentIndex">
                                    <a class="e-index-topdp">
                                        <img :src="require('../assets/'+item)" width="234" height="260" class="swiper-lazy swiper-lazy-loaded">
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
                        </div> -->
                        <img-box v-for="(pVal,i) in detList" :pVal="pVal" :key="i" :i="i"></img-box>
                    </div>
                  </div>
                  <div class="button-black el-icon-arrow-left" @click="prevClick"></div>
                  <div class="button-black el-icon-arrow-right" @click="nextClick"></div>
                </div>
            </el-tab-pane>
        </el-tabs>
        </div>
      </div>
      <!--2.搜索发现-->
      <div class="article article-beauty">
           <div class="common-header">
            <p class="header-title-en none-sm">YSL BEAUTY</p>
            <p class="header-title-cn">搜索发现</p>
           </div> 
           <div class="beauty-box"> 
            <ul class="beauty-list row" >
                <li class="col-lg-3" v-for="(item,i) in beautyList" :key="i">
                    <div class="img-box">
                        <a href="#"><img :src="require('../assets/'+item.pic_a)" ></a>
                    </div>
                    <div class="text-cap">
                        <p class="beauty-title"><a href="#">{{item.title}}</a></p>
                        <p class="beauty-details" :title="item.title">{{item.details}}</p>
                        <p class="beauty-link"><a href="#" title="了解详情">了解详情</a></p>
                    </div>
                </li>
            </ul>
           </div>
      </div>
      <!--3.BigImg-->
      <div class="article article-imgwrap">
        <div class="love-img-boxs">
            <a href="#">
                <img src="../assets/img/index/img-love.jpg" alt="反转巴黎女士香水" title="反转巴黎女士香水" style="width:100%;">
            </a>
        </div>
      </div>
      <!--4.寻找你的彩妆灵感-->
      <div class="article article-inspiration">
        <div class="common-header">
            <p class="header-title-en none-sm">FIND INSPIRATION</p>
            <p class="header-title-cn">寻找你的彩妆灵感</p>
        </div>
        <div class="inspiration-wrapper">
            <ul class="row inspiration-ul">
                <li class="col-lg-4" v-for="(val,i) in inspirationList" :key="i">
                    <div class="img-box">
                        <a href="#"><img :src="require('../assets/'+val.pic)"></a>
                    </div>
                    <div class="text-cap">
                        <p class="inspiration-small-title"><a href="#"  title="潮流杂志">潮流杂志</a></p>
                        <p class="inspiration-big-title"><a href="#" title="潮流杂志">{{val.title}}</a></p>
                        <p class="inspiration-details none-sm">{{val.details}}</p>
                        <p class="inspiration-link"><a href="#" title="潮流杂志">阅读全文</a></p>
                    </div>
                </li>
            </ul>
        </div>
      </div>
      <!--5.video-->
      <div class="article article-video">
        <div class="common-header">
            <p class="header-title-en none-sm">REVEAL YOUR YSL BEAUTY</p>
            <p class="header-title-cn">视频中心</p>
        </div>
        <div class="video-content-center">
            <div class="row float-clearfix">
                <div class="col-sm-12 video-left">
                    <img src="../assets/img/index/video111.jpg" alt="">
                </div>
                <div class="col-sm-12-12 video-right">
                    <p class="video-title"><a href="/landingpage/2018-dare-or-dare">EPISODE #1<span>：</span><br class="none-sm">@YSL美妆品牌挚友辛芷蕾</a></p>
                    <p class="video-details">个性又胆大的她与Celine挑战一分钟出门美妆，轻松成为舞台的焦点</p>
                    <p class="video-link none-sm"><a href="/landingpage/2018-dare-or-dare">了解详情</a></p>
                    <p class="video-product">辛芷蕾妆容单品</p>
                    <ul class="row product-list">
                        <li class="col-md-4"><a href="/item/00225YSL-003" title="限量气垫粉底液">限量气垫粉底液</a></li>
                        <li class="col-md-4"><a href="/item/00231YSL-001" title="圣罗兰哑光唇釉">圣罗兰哑光唇釉</a></li>
                        <li class="col-md-4"><a href="/item/00162YSL-001" title="反转巴黎香水">反转巴黎香水</a></li>
                        </ul>
                    <p class="video-pay-link"><a href="/landingpage/2018-dare-or-dare" title="点击即可购买妆容产品">点击即可购买妆容产品</a></p>
                </div>
            </div>
        </div>
      </div>
    </div>
</template>
<script>
import axios from 'axios'
import imgBox from './Imgbox'
import  '../assets/css/body.css'
    export default{
        data(){
            return {
                beautyList:{},
                inspirationList:{},
                fidList:{},
                detList:null,
                activeName:"1",
                isMoved:false,
                myfid:1,
            }
        },
        components: {imgBox},
        methods:{
            loadIndex(){
                var url=`http://127.0.0.1/YSL/data/product/index.php`;
                axios.get(url+"?pid="+this.myfid).then((res)=>{
                    this.beautyList=res.data.beautyItems;
                    this.inspirationList=res.data.inspirationItems;
                    this.fidList=res.data.fidItems;
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
             handleClick(tab, event) {
                this.myfid=parseInt(tab.index)+1;
                console.log(this.myfid);
                this.loadIndex()
            },
            
            prevClick(){
                this.isMoved=false;
            },
            nextClick(){
                this.isMoved=true;
            },
           
        },
        computed: {},
        watch: {},
        mounted: function () {
          this.loadIndex()
        }
    }
</script>