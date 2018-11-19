<template>
  <button @click="toggleLock">{{ btnMessage }}</button>
</template>

<script>
export default {
  props: {
    locked: Boolean,
    statusCreated: Function,
    orderLineId: Number
  },
  data() {
    return {
      btnMessage: this.locked ? 'Unlock' : 'Lock'
    }
  },
  methods: {
    toggleLock() {
      const { orderLineId } = this;

      fetch('/order_line_statuses.json', { method: 'POST' }).
        then(res => res.json()).
        then(status => {
          status.locked = Math.random() > 0.5;
          status.order_line_id = orderLineId;
          this.statusCreated(status)
        })
    }
  }
}
</script>
