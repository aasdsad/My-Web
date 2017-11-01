// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#App',/*//绑定到index.html文件的AppID中，那是网页入口*/
  router,//导入一个路由管理者
  //引入以下的模板和组件后后，程序会自动在index.html中的Appid选择器添加他们，不信你注释掉他们，网页就会一片空白
  template: '<App/>',//引入模板
  components: { App }//引入组件
})
