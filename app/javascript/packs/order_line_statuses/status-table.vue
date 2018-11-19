<template>
  <table>
    <thead>
      <tr>
        <th>shipment_number</th>
        <th>locked</th>
        <th>quantity</th>
        <th>sku_id</th>
        <th>created_at</th>
        <th>created_by_user</th>
        <th>department</th>
      </tr>
    </thead>
    <tbody v-for="status in copiedStatuses" :key="status.order_line_id">
      <tr>
        <td><search v-bind:external-id="status.order_line.shipment.number" /></td>
        <td>
          <toggle-lock-btn
            v-bind:locked="status.locked"
            v-bind:status-created="statusCreated"
            v-bind:order-line-id="status.order_line_id"
          ></toggle-lock-btn>
        </td>
        <td>{{ status.order_line.quantity }}</td>
        <td><search v-bind:external-id="status.order_line.sku_id" /></td>
        <td>{{ new Date(status.created_at).toLocaleString() }}</td>
        <td>{{ `${status.user.first_name} ${status.user.last_name}` }}</td>
        <td>{{ status.name }}</td>
      </tr>
    </tbody>
  </table>
</template>

<script>
import Search from '../../components/search';
import ToggleLockBtn from './toggle-lock-btn';

export default {
  props: {
    statuses: Array
  },
  components: {
    'search': Search,
    'toggle-lock-btn': ToggleLockBtn
  },
  data() {
    return {
      copiedStatuses: this.statuses.map(status => status)
    }
  },
  methods: {
    statusCreated(newStatus) {
      this.copiedStatuses = this.copiedStatuses.filter(status => (
        status.order_line_id !== newStatus.order_line_id
      ));

      this.copiedStatuses.push(newStatus);
    }
  }
}
</script>
