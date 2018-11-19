<template>
  <a href="`/search?query=${externalId}`" />
</template>

<script>
export default {
  props: {
    externalId: [String, Number]
  }
}
</script>
