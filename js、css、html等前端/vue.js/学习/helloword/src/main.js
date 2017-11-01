// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App.vue'

// 引入路由
import router from "./router/index.js"

Vue.config.productionTip = false
new Vue({
  el: '#app',
  router,  // 注入到根实例中
  render: h => h(App)
})