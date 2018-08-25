/* eslint no-console: 0 */

import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'
import Vue from 'vue/dist/vue.esm.js'

Vue.use(VueResource);
Vue.use(TurbolinksAdapter);

document.addEventListener('turbolinks:load', () => {
  var app = new Vue({
    el: '#app',
    data: {
      pain_levels: []
    },
    ready: () => {
      var that;
      that = this;
      alert('starting!');
      $.ajax({url: 'index.json'})
        .done(res => {
          alert(res);
          that.pain_levels = res;
        })
        .error(m => {
          alert(m);
          that.pain_levels = m;
        });
      }
    });
  });
      


// The above code uses Vue without the compiler, which means you cannot
// use Vue to target elements in your existing html templates. You would
// need to always use single file components.
// To be able to target elements in your existing html/erb templates,
// comment out the above code and uncomment the below
// Add <%= javascript_pack_tag 'hello_vue' %> to your layout
// Then add this markup to your html template:
//
// <div id='hello'>
//   {{message}}
//   <app></app>
// </div>


// import Vue from 'vue/dist/vue.esm'
// import App from '../app.vue'
//
// document.addEventListener('DOMContentLoaded', () => {
//   const app = new Vue({
//     el: '#hello',
//     data: {
//       message: "Can you say hello?"
//     },
//     components: { App }
//   })
// })
//
//
//
// If the using turbolinks, install 'vue-turbolinks':
//
// yarn add 'vue-turbolinks'
//
// Then uncomment the code block below:
//
// import TurbolinksAdapter from 'vue-turbolinks'
// import Vue from 'vue/dist/vue.esm'
// import App from '../app.vue'
//
// Vue.use(TurbolinksAdapter)
//
// document.addEventListener('turbolinks:load', () => {
//   const app = new Vue({
//     el: '#hello',
//     data: {
//       message: "Can you say hello?"
//     },
//     components: { App }
//   })
// })
