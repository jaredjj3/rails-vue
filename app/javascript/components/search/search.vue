<template>
  <a v-bind:href="`search?query=${externalId}`">{{ externalId }}</a>
</template>

<script>
export default {
  props: {
    externalId: [String, Number]
  }
}
</script>
