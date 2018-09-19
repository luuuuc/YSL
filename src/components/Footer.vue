<template>
    <div class="footer">
        <div class="footer-container">
            <div class="footer-topcontent">
                <ul class="clearfix">
                    <li>
                        <div class="icon-i"><i class="icon icon-official"></i></div>
                        <span>100%官方正品保证</span>
                    </li>
                    <li>
                        <div class="icon-i"><i class="icon icon-payment"></i></div>
                        <span>支持多种支付方式</span>
                    </li>
                    <li>
                        <div class="icon-i"><i class="icon icon-gift-box"></i></div>
                        <span>专享官网特惠礼遇</span>
                    </li>
                    <li>
                        <div class="icon-i"><i class="icon icon-contact-us"></i></div>
                        <span>联系我们 电话400-820-6362</span>
                    </li>
                </ul>
            </div>
            <div class="clearfix footer-classify">
                <div class="footer-classify-content">
					<ul>
						<li><a href="/makeup">彩妆</a></li>
                        <li><a href="/makeup-lips-and-nails">唇部</a></li>
                        <li><a href="/makeup-complexion">面部</a></li>
                        <li><a href="/makeup-eyes">眼部</a></li>
                        <li><a href="/makeup-nails">甲油</a></li>
                        <li><a href="/makeup-brush-sets-and-tools">套装及工具</a></li>
                    </ul>
				</div>
                <div class="footer-classify-content">
					<ul>
						<li><a href="/">护肤</a></li>
                        <li><a href="/makeup-lips-and-nails">按产品分类</a></li>
                        <li><a href="/makeup-complexion">按功能分类</a></li>
                        <li><a href="/makeup-eyes">按系列分类</a></li>
                    </ul>
				</div>
                <div class="footer-classify-content">
					<ul>
						<li><a href="/makeup">香水</a></li>
                        <li><a href="/makeup-lips-and-nails">女士香水</a></li>
                        <li><a href="/makeup-complexion">男士香水</a></li>
                    </ul>
				</div>
                <div class="footer-classify-content">
					<ul>
						<li><a href="/makeup">尊享礼盒</a></li>
                    </ul>
				</div>
                <div class="footer-classify-content">
					<ul>
						<li><a href="/makeup">订阅电子杂志</a></li>
                    </ul>
                    <div class="footer-contact">
					    <div class="follow-us">
						    <p>关注我们</p>
						    <ul class="clearfix">
							    <li>
                                    <a target="_blank" href="#">
                                        <i class="icon icon-footer-weibo"></i>
                                    </a>
                                </li>
							    <li class="wechat-code" @mouseenter="show1=true" @mouseleave="show1=false">
                                    <a href="#" class="events-wechat-code">
                                     <i class="icon icon-footer-wacth"></i>
                                    </a>
                                    <transition name="erweima">
                                        <div class="qr-code-box" v-if="show1">
                                            <div class="code-box-sm"></div>
                                            <div>
                                                <img src="../assets/img/index/footer-qr-code.png">
                                            </div>
                                        </div>
                                    </transition>
                                </li>
						    </ul>
					    </div>
					    <div class="contact-us">
						    <p>联系我们</p>
						    <p>电话：400-820-6362</p>
					    </div>
				    </div>
				</div>
            </div>
            <h1 class="footer-logo">
                <a href="#"><img src="../assets/img/index/footer-logo.png"></a> 
            </h1>
            <div class="footer-bottom">
                <ul class="statement">
                    <li><span>© 欧莱雅（中国）有限公司 </span></li>
                    <li>
                        <i class="icon icon-footer-zggs"></i>
                        <a href="#"><span>中国工商 </span><span>&nbsp;&nbsp;</span> </a> 
                        <a href="#"><span>沪ICP备08100043号-28</span></a>
                    </li>
                    <li>
                        <i class="icon icon-footer-hgyab"></i>
                        <a href="#"><span>沪公网安备 31010602001529号</span></a>
                    </li>
                </ul>
                <ul class="con-content">
					<li><a target="_blank" href="#" rel="nofollow">Cookies政策</a></li>
					<li><a target="_blank" href="#" rel="nofollow">使用条款</a></li>
					<li><a target="_blank" href="#" rel="nofollow">隐私政策</a></li>
					<li class="none-sm"><a href="#">网站地图</a></li>
				</ul>
            </div>
        </div>
    </div>
</template>
<script>
    import axios from 'axios'
    import '../assets/css/footer.css'
    export default{
        data(){
            return {
                 show1:false
            }
        },
        component: {},
        methods: {
            
        },
        computed: {},
        watch: {},
        mounted: function () {
        }
    }
</script>
<style>
    .erweima-enter-active,.erweima-leave-active{
       transition: opacity .5s;
    }
    .erweima-enter,.erweima-leave-to{
        opacity:0;
    }
</style>