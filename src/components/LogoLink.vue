<script>
export default {
  props: {
    displayed: {
      type: String
    },
    address: {
      type: String
    },
    logo: {
      type: String,
      default: "maps"
    }
  },
}
</script>

<template>
  <div class="logo"><a :href="address"><img style="height: 1em; margin-right: 0.5em"
        :src="'/icons/' + logo + '_white.svg'" alt="">
      <slot></slot>
    </a></div>

</template>

<style scoped>
.logo {
  padding-top: 0.5em;
  padding-bottom: 0.5em;
}
</style>
