import vue from '../../util/vue';
import StatusTable from './status-table';
import GroupedStatusTable from './grouped-status-table';

vue({
  el: '#root',
  components: {
    'status-table': StatusTable,
    'grouped-status-table': GroupedStatusTable
  }
});
