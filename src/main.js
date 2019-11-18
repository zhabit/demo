import Vue from 'vue'
import App from './App.vue'

Vue.config.productionTip = false

import "bootstrap/dist/css/bootstrap.min.css";
import "font-awesome/css/font-awesome.min.css"

import store from "./store/index";
import router from "./router";

Vue.filter("currency", (value) => new Intl.NumberFormat("zh-CN",
  { style: "currency", currency: "CNY" }).format(value));

new Vue({
  render: h => h(App),
  store,
  router
}).$mount('#app')
