import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '../components/HelloWorld'
import aaa from '../components/aaa'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/HelloWorld',
      component: HelloWorld
    },
    {
      path: '/aaa',
      component: aaa
    },
        {
        path: '/', 
        redirect: '/HelloWorld' 
    }
  ]
})
