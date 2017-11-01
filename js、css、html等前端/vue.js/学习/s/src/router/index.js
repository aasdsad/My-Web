import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'

Vue.use(Router)

export default new Router({//声明导出一个router的实例化对象
  routes: [
    {
      path: '/',
      /*name: 'Hello',*//*这狗日的也是为了调试用的，把他注释掉*/
      component: HelloWorld
    }
  ]
})
