<template>
  <tr>
    <td>{{ status.id }}</td>
    <td>{{ status.order_line_id }}</td>
    <td>{{ status.name }}</td>
  </tr>
</template>

<script>
export default {
  props: {
    status: Object
  }
}
</script>
