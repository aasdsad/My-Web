<template>
  <div id="app">
    <div class="page">
      <app-head></app-head>
      <app-nav></app-nav>
      <keep-alive>
        <router-view class="fadeView"></router-view>
        <!--<router-view></router-view>-->
      </keep-alive>
      <app-foot></app-foot>
    </div>
    <!-- 右侧的列框，暂时是隐藏的 -->
    <app-menu></app-menu>
  </div>
</template>

<script>
//声明在此导入以下模板并且可以在本组件中使用它
import AppHead from '@/components/public/Head'
import AppMenu from '@/components/public/Menu'
import AppNav from '@/components/public/Nav'
import AppFoot from '@/components/public/Foot'
export default {
  name: 'app',
  components: {
    /*模板：组件名*/
    'app-head': AppHead,
    'app-menu': AppMenu,
    'app-nav': AppNav,
    'app-foot': AppFoot
  }
}
</script>

<style>
#app{
  overflow: hidden;
}
.page{
  position: relative;
  z-index: 99;
  transition: all 0.5s;
}
.toggle{
  transform: translateX(-120px);
}
</style>
