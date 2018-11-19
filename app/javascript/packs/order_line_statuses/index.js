import vue from '../../util/vue';
import { StatusTable } from './status-table';

vue({
  el: '#root',
  components: {
    'status-table': StatusTable
  }
});
