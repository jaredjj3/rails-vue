<template>
  <table>
    <thead>
      <tr>
        <th>foo</th>
        <th>bar</th>
        <th>baz</th>
      </tr>
    </thead>
    <tbody v-for="status in statuses" :key="status.id">
      <status-row v-bind:status="status" />
    </tbody>
  </table>
</template>

<script>
import StatusRow from './status-row.vue';

export default {
  props: {
    statuses: Array
  },
  components: {
    'status-row': StatusRow
  }
}
</script>
