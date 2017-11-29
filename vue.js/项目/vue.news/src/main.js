// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'

import axios from 'axios' // 处理http请求
import store from './store' // 状态管理
import VueLazyload from 'vue-lazyload' // 懒加载

/**
 * @desc 懒加载配置
 * @author wtniu
 */
Vue.use(VueLazyload, {
  preLoad: 1.3,//预加载的宽高
  error: '../static/error.jpg',//img图片加载错误时的路径
  loading: '../static/loading.gif',//img加载中的显示的图片的路径
  attempt: 1//尝试加载的次数
})

/*如果在因为在其他组件中，无法使用axios命令，就把axios写进vue的原型属性中
，就可以解决这个问题*/
Vue.prototype.$axios = axios

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})
