import Vue from 'vue'
import App from './App.vue'
import router from './router'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
import './assets/css/bootstrap.css'
import './assets/js/jquery-1.11.3'
import './assets/js/bootstrap.min'
import './assets/css/base.css'

Vue.config.productionTip = false;
Vue.use(ElementUI);

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
