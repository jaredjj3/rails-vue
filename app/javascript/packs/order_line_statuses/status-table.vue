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
    <tbody v-for="status in statuses" :key="status.id">
      <tr>
        <td><search v-bind:external-id="status.order_line.shipment.number" /></td>
        <td>{{ status.locked }}</td>
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

export default {
  props: {
    statuses: Array
  },
  components: {
    'search': Search
  }
}
</script>
