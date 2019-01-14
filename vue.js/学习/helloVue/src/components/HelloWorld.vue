<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <article>我是你忠诚的朋友！</article>
    <keyword></keyword>
  </div>
</template>

<script>
import keyword from './keyword'
export default {
  name: 'HelloWorld',
  data () {
    return {
      msg: 'hello，VUE'
    }
  },
  components:{
    'keyword':keyword
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
