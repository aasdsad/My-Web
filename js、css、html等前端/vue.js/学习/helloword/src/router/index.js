import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import home from "../components/home.vue";
import about from "../components/about.vue";

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/HelloWorld',
      component: HelloWorld
    },
    {
        path:"/home",
        component: home
    },
    {
        path: "/about",
        component: about
    },
    {
        path: '/', 
        redirect: '/home' 
    }
  ]
})
