<template>
  <div id="pp">
    <img src="./assets/logo.png">
    <header>
    <!-- router-link 定义点击后导航到哪个路径下 -->
      <router-link to="/aaa">aaa</router-link>
      <router-link to="/HelloWorld">HolleWorld</router-link>
    </header>
    <!-- 对应的组件内容渲染到router-view中 -->
    <div>
    <router-view></router-view> 
    </div>
  </div>
</template>

<script>
export default {
  name: 'app'
}
</script>

<style>
#pp {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color:red;
  margin-top: 60px;
}
</style>
