<template>
  <div>
    <button>{{ btnMessage }}</button>
  </div>
</template>

<script>
export default {
  props: {
    locked: Boolean
  },
  data() {
    return {
      btnMessage: this.locked ? 'Unlock' : 'Lock'
    }
  }
}
</script>
