<template>
  <p>There are {{ orderLineStatuses.length }} statuses</p>
</template>

<script>
export default {
  props: {
    orderLineStatuses: Array
  }
}
</script>
