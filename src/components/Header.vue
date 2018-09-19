<template>
    <div>
        <!--头部广告-->
        <div :class="isShow?'ad-top':'ad-hidden'">
            <div class="ad-container">
                <p>浏览该网站表示您接受并同意我们使用COOKIES为您提供个性化的浏览体验。点击
                <a target="_blank" href="http://policy.lorealchina.com/cookiespolicy" rel="nofollow">COOKIES政策</a>了解详情。</p>
                <i @click.prevent="clicklk" class='el-icon-close icon-close'></i>
            </div>
        </div>
        <div class="top-title">
            <div class="top-title-text">
                <p><a href="#">YSL圣罗兰官网专属定制礼遇，STEP1选择明星产品，STEP2定制专属卡片，STEP3选择个性包装，定制专属于你的YSL</a></p>
            </div>
        </div>
        <!--导航,第一部分-->
        <div class="navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <a href="#menu" data-toggle="collapse" class="navbar-toggle">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                </div>
                <div id="menu" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><i class="glyphicon glyphicon-map-marker"></i><a href="#">专柜查询</a></li>
                        <li><a href="#">客服中心</a></li>
                    </ul>
                </div>
                <div class="logo"><router-link :to="{path:'/'}"><img src="../assets/img/index/logo2x.png" alt=""></router-link></div>
            </div>
        </div>
        <div class="container">
            <div class="nav-header clearfix">
                <div class="left-header">
                    <ul class="nav-pills clearfix">
                        <li class="nav-list" @mouseenter="show1=true" @mouseleave="show1=false" >
                            <router-link to="/plist/makeup"><span>{{makeup.name}}</span><i class="sanjiao"></i></router-link>
                            <transition name="fade1">
                                <div v-if="show1" class="sub-menu sub-menu-2" >
                                    <ul class="dropdown-text">
                                        <!-- 彩妆 -->
                                        <li v-for="(val, i) in makeup.list" :key="i">
                                        <!-- 二级菜单 -->
                                            <a href="#" ><span>{{val.title}}</span><i class="icon icon-menu-switch"></i></a>  
                                        <!-- 三级菜单 -->
                                            <div class="sub-menu sub-menu-3" style="">
                                                <ul class="menu3" >
                                                    <li v-for="(vals, i) in val.subList" :key="i">
                                                        <a href="#"><span>{{vals}}</span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                    <!--下拉列表中的图片-->
                                    <div class="nav-sub-menu-bottom-content">
                                        <div class="nav-sub-menu-bottom-wrap">
                                            <div class="products-recommended">
                                            <div class="left">
                                                <a href="#">
                                                    <span class="tag">热卖</span>
                                                    <img src="../assets/img/index/img1.jpg">
                                                </a>
                                            </div>
                                            <div class="right">
                                                <h4><a href="#">圣罗兰纯口红 </a></h4>
                                                <p><a href="#">赋予双唇丝缎般细腻与浓郁的色泽质感</a> </p>
                                                <a class="learn-more" href="#"><span>了解详情</span></a>
                                            </div>
                                        </div>
                                        <div class="products-recommended">
                                            <div class="left">
                                                <a href="#">
                                                    <span class="tag">新品</span>
                                                    <img src="../assets/img/index/img2.jpg">
                                                </a>
                                            </div>
                                            <div class="right">
                                                <h4><a href="#">超模蕾丝气垫 </a></h4>
                                                <p> <a href="#">点亮立体透光肌</a></p>
                                                <a class="learn-more" href="#"><span>了解详情</span></a>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </transition>
                        </li>
                        <!-- 护肤 -->
                        <li class="nav-list" @mouseenter="show2=true" @mouseleave="show2=false">
                            <router-link to="/plist/skincare"><span>{{skincare.name}}</span><i class="sanjiao"></i> </router-link>
                            <transition name="fade2">
                                <div class="sub-menu sub-menu-2"  v-if="show2" >
                                    <ul class="dropdown-text">
                                        <li v-for="(val,i) in skincare.list" :key="i">
                                        <!-- 二级菜单 -->
                                            <a href="/makeup-lips-and-nails"><span>{{val.title}}</span><i class="icon icon-menu-switch"></i></a>
                                        <!-- 三级菜单 -->
                                            <div class="sub-menu sub-menu-3" style="">
                                                <ul class="menu3">
                                                    <li v-for="(vals,i) in val.subList" :key="i"><a href="#"><span>{{vals}}</span></a></li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                    <!--下拉列表中的图片-->
                                    <div class="nav-sub-menu-bottom-content">
                                        <div class="nav-sub-menu-bottom-wrap">
                                            <div class="products-recommended">
                                            <div class="left">
                                                <a href="#">
                                                    <span class="tag">人气</span>
                                                    <img src="../assets/img/index/img3.jpg">
                                                </a>
                                            </div>
                                            <div class="right">
                                                <h4>
                                                    <a href="#"> 超模绝密亮肌露 </a>
                                                </h4>
                                                <p>
                                                    <a href="#">平滑肌肤，长效水润，妆容持久无瑕</a>
                                                </p>
                                                <a class="learn-more" href="#">
                                                    <span>了解详情</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="products-recommended">
                                            <div class="left">
                                                <a href="#">
                                                    <span class="tag">新品</span>
                                                    <img src="../assets/img/index/img4.jpg">
                                                </a>
                                            </div>
                                            <div class="right">
                                                <h4>
                                                    <a href="#">亮颜眼霜 3合1明眸眼霜</a>
                                                </h4>
                                                <p>
                                                    <a href="#">集滋润，眼妆打底，睫毛滋养于一支黑金前卫精巧管身</a>
                                                </p>
                                                <a class="learn-more" href="#">
                                                    <span>了解详情</span>
                                                </a>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </transition>
                        </li>
                        <!-- 香水 -->
                        <li class="nav-list" @mouseenter="show3=true" @mouseleave="show3=false">  
                            <router-link to="/plist/fragrance"><span>{{fragrance.name}}</span><i class="sanjiao"></i></router-link>
                            <transition  name="fade3">
                                <div class="sub-menu sub-menu-2" v-if="show3">
                                    <ul class="dropdown-text">
                                        <li v-for="(val,i) in fragrance.list" :key="i">
                                        <!-- 二级菜单 -->
                                            <a href="/makeup-lips-and-nails"><span>{{val.title}}</span><i class="icon icon-menu-switch"></i></a>
                                        <!-- 三级菜单 -->
                                            <div class="sub-menu sub-menu-3" style="">
                                                <ul class="menu3">
                                                    <li v-for="(vals,i) in val.subList" :key=i><a href="#"><span>{{vals}}</span></a></li>
                                                </ul>
                                            </div>
                                        </li>
                                    </ul>
                                    <!--下拉列表中的图片-->
                                    <div class="nav-sub-menu-bottom-content">
                                        <div class="nav-sub-menu-bottom-wrap">
                                            <div class="products-recommended">
                                            <div class="left">
                                                <a href="#">
                                                    <span class="tag">热卖</span>
                                                    <img src="../assets/img/index/img5.jpg">
                                                </a>
                                            </div>
                                            <div class="right">
                                                <h4>
                                                    <a href="#">反转巴黎香水</a>
                                                </h4>
                                                <p>
                                                    <a href="#">爱就要天翻地覆</a>
                                                </p>
                                                <a class="learn-more" href="#">
                                                    <span>了解详情</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="products-recommended">
                                            <div class="left">
                                                <a href="#">
                                                    <span class="tag">人气</span>
                                                    <img src="../assets/img/index/img6.jpg">
                                                </a>
                                            </div>
                                            <div class="right">
                                                <h4>
                                                    <a href="#">黑鸦片经典香水</a>
                                                </h4>
                                                <p>
                                                    <a href="#">重新诠释大胆无畏的摇滚风格</a>
                                                </p>
                                                <a class="learn-more" href="#">
                                                    <span>了解详情</span>
                                                </a>
                                            </div>
                                        </div>
                                        </div>
                                    </div>
                                </div>
                            </transition>
                        </li>
                        <!-- 明星产品 -->
                        <li class="">
                            <router-link to="/plist/4">
                                <span>明星产品</span>
                                <i class="icon icon-menu-switch"></i>
                            </router-link>
                        </li>
                        <!-- 尊享礼盒 -->
                        <li class="">
                            <router-link to="/plist/5">
                                <span>尊享礼盒</span>
                                <i class="icon icon-menu-switch"></i>
                            </router-link>
                        </li>
                        <!-- 会员中心 -->
                        <li class="">
                            <router-link to="/plist/6">
                                <span>会员中心</span>
                                <i class="icon icon-menu-switch"></i>
                            </router-link>
                        </li>
                        <!-- 私人定制服务 -->
                        <li class="">
                            <router-link to="/plist/7">
                                <span>私人订制服务</span>
                                <i class="icon icon-menu-switch"></i>
                            </router-link>
                        </li>
                    </ul>
                </div>
                <div class="right-header col-md-3">
                    <div class="search-wrap">
                        <a href="#"><i></i></a>
                        <div class="form-input">
                            <input type="text" class="searchKeywords" placeholder="YSL气垫">
                            <a href="#"><i class="icon glyphicon glyphicon-search"></i></a>
                        </div>
                    </div>
                    <ul class="header-top-right">
                       <li><i class="glyphicon glyphicon-send"></i> <a href="#">订阅电子邮件</a></li>
                       <li><i class="glyphicon glyphicon-user"></i><a href="#">登录与注册</a></li>
                       <li><i class="glyphicon glyphicon-shopping-cart"></i><a href="#">购物袋0件商品</a></li>
                    </ul>
                </div>
            </div>
        </div>
    
    </div>
</template>
<script>
    import "../assets/css/header.css"
    var  myMakeup={
                    name:'彩妆',
                    list:[
                        {title:'唇部',subList:['唇膏','唇釉','唇釉','唇颊霜']},
                        {title:'面部',subList:['明彩笔','妆前隔离','粉底','粉饼','蜜粉','腮红']},
                        {title:'眼部',subList:['睫毛膏','眼线','眉笔','眼影']},
                        {title:'甲油',subList:['']},
                        {title:'套装及工具',subList:['']}
                    ]
                }
    var mySkin={
                    name:'护肤',
                    list:[
                        {title:'按产品分类',subList:['隔离防晒','卸妆清洁','爽肤','精华','面霜/乳液','眼唇护理']},
                        {title:'按功能分类',subList:['Y型轮廓','全效青春','提亮美白','淡斑美白','至臻奢护','基础亮颜']},
                        {title:'按系列分类',subList:['纯白系列','妍活青春','臻透亮白','藏金奢妍','超模绝密']},
                    ]
                }
    var myFrag={
                    name:'香水',
                    list:[
                        {title:'女士香水',subList:['反转巴黎香水','鸦片香水']},
                        {title:'男士香水',subList:['天之骄子男士香水','暗夜男士香水','Y男士香水']},
                    ]
                }
    export default{
        myDate:[myMakeup,mySkin,myFrag],
        myMakeup,
        mySkin,
        myFrag,
        data(){
            return{
                 isShow:true,
                 show1:false,
                 show2:false,
                 show3:false,
                makeup:myMakeup,
                skincare:mySkin,
                fragrance:myFrag,
                // myDate:[makeup,skincare,fragrance]
            }
        },
        component: {},
        methods: {
            clicklk(){
                if(this.isShow=true){
                    this.isShow=false;
                }
            },
        },
        computed: {},
        watch: {},
        mounted: function () {
        }
    }
</script>
