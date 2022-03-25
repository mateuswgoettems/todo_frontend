import Vue from 'vue';
import BootstrapVue from 'bootstrap-vue';
// import axios from 'axios';
import App from './App.vue';

const axios = require('axios');

const http = axios.create({
  baseURL: `${process.env.BACKEND_URL}/todos`,
});

console.log(http);

Vue.prototype.$http = http;

Vue.use(BootstrapVue);

Vue.config.productionTip = false;

new Vue({
  render: (h) => h(App),
}).$mount('#app');
