import Vue from 'vue'
import Vuex from 'vuex'
/**
 * @desc 导入需要的store
 * @author wtniu
 */
import SelectStore from './SelectStore'
import PointStore from './PointStore'
import AuthorStore from './AuthorStore'
import MenuStore from './MenuStore'
import HeadStore from './HeadStore'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    slogan: '叩首为梦 码梦为生！',
    historyLength: 0
  },
  mutations: {
    /*
     * @desc 记录路由切换次数
     * @arg {object} state 状态
     */
    updateHistoryLength (state) {
      state.historyLength++
    }
  },
  actions: {
    /*updataHistoryLength(context){
        context.commit("'updataHistoryLength'")
    }*/
    updateHistoryLength ({commit}) {
      commit('updateHistoryLength')
    }
  },
  //由于使用了单一状态树，应用的所有状态都包含在一个大对象内
  //但是，随着我们应用规模的不断增长，这个store变得非常臃肿
  //为了解决这个问题，vuex允许我们把store分modules（模块）。
  //每一个模块包含各自的状态、mutation、action和getter，甚至是嵌套模块，
  //如下就是它的组织方式
  modules: {
    SelectStore,
    PointStore,
    AuthorStore,
    MenuStore,
    HeadStore
  }
})
