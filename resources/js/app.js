

require('./bootstrap');

window.Vue = require('vue');

import VueMaterial from 'vue-material'
import 'vue-material/dist/vue-material.min.css'

Vue.use(VueMaterial)

Vue.component('comp-dashboard', require('./components/Dashboard.vue').default);
Vue.component('comp-admin', require('./components/Admin/Index.vue').default);

const app = new Vue({
    el: '#app',
});
