import Vue from 'vue'
import BootstrapVue from 'bootstrap-vue'
import axios from 'axios'
import VueAxios from 'vue-axios'
import PainTable from '@/components/PainTable.vue'
import App from './App.vue'
import router from './router'

Vue.use(BootstrapVue, axios, VueAxios)
Vue.config.productionTip = false

new Vue({
  router,
  render: h => h(App),
  components: { PainTable }
}).$mount('#app')