import vue from '../../util/vue';
import OrderLineStatusTable from './table/order-line-status-table.vue';

vue({
  el: '#root',
  components: {
    'order-line-status-table': OrderLineStatusTable
  }
});
