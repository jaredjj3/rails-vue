import Vue from 'vue/dist/vue.esm';

export default (...args) => document.addEventListener('DOMContentLoaded', () => new Vue(...args));
