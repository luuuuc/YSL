import Vue from 'vue'
import Router from 'vue-router'
import Main from './views/Main'
import Home from './views/Home.vue'
import ProductList from './views/ProductList.vue'
import ProductDetail from './views/ProductDetails.vue'
import NotFound from './views/NotFound.vue'
Vue.use(Router);

export default new Router({
  routes: [
    {path:'/',component:Main,children:[
        {path:'',component:Home},
        {path:'home',component:Home},
        {path:'psearch/:kw',component:ProductList},
        {path:'plist/:id',component:ProductList},
        {path:'pdetail',component:ProductDetail},
    ]},
    {path:'/*',component:NotFound},
  ]
})
