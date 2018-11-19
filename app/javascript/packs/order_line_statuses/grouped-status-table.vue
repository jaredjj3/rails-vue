<template>
  <div>
    <div v-for="(groupedStatuses, groupedBy) in grouped(statuses, groupBy)" :key="groupedBy">
      <status-table v-bind:statuses="groupedStatuses"></status-table>
    </div>
  </div>
</template>

<script>
import StatusTable from './status-table';

export default {
  props: {
    statuses: Array,
    groupBy: Function
  },
  methods: {
    grouped(collection, groupBy) {
     return collection.reduce((map, member) => {
        const key = groupBy(member);
        map[key] = map[key] || [];
        map[key].push(member);
        return map
      }, {})
    }
  },
  components: {
    'status-table': StatusTable
  }
}
</script>
