import Vue from 'vue';
import BootstrapVue from 'bootstrap-vue';
import axios from 'axios';
import App from './App.vue';

const http = axios.create({
  baseURL: `${process.env.VUE_APP_BACKEND_URL}/todos`,
});

Vue.prototype.$http = http;

Vue.use(BootstrapVue);

Vue.config.productionTip = false;

new Vue({
  render: (h) => h(App),
}).$mount('#app');
