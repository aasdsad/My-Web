var apiURL = 'https://api.github.com/repos/vuejs/vue/commits?per_page=3&sha='/*服务器地址*/

/**
 * Actual demo
 */

var demo = new Vue({

  el: '#demo',

  data: {
    branches: ['master', 'dev'],
    currentBranch: 'master',
    commits: null
  },

/*created是它的一个生命周期钩子函数，就是一个vue实例被生成后调用这个函数。一个vue实例被生成后还要绑定到某个html元素上，之后还要进行编译，然后再插入到document中。每一个阶段都会有一个钩子函数，方便开发者在不同阶段处理不同逻辑。
一般可以在created函数中调用ajax获取页面初始化所需的数据。*/
  created: function()  {
    this.fetchData()
  },
/*说白了$watch这货就是观察一个值的变化，观察的这个值一变化的话，那么就执行function里面的语句。*/
  watch: {
    currentBranch: 'fetchData'
  },

  filters: {
    truncate: function (v) {
      var newline = v.indexOf('\n')
      return newline > 0 ? v.slice(0, newline) : v
    },
    formatDate: function (v) {
      return v.replace(/T|Z/g, ' ')
    }
  },

  methods: {
    fetchData: function () {
      var xhr = new XMLHttpRequest()
      var self = this
      xhr.open('GET', apiURL + self.currentBranch)
      xhr.onload = function () {
        self.commits = JSON.parse(xhr.responseText)
        console.log(self.commits[0].html_url)
      }
      xhr.send()
    }
  }
})
