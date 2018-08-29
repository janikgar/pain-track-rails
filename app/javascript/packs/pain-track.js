/* eslint no-console: 0 */

import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'
import Vue from 'vue/dist/vue.esm.js'
import App from '../app.vue'

Vue.use(VueResource);
Vue.use(TurbolinksAdapter);

document.addEventListener('turbolinks:load', () => {
  const app = new Vue({
    el: '#app',
    template: "<App/>",
    components: {
      App
    }
  });
  // console.log(app);
});