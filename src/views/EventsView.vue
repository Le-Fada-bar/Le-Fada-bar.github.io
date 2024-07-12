<script setup>
import PictureText from '../components/PictureText.vue'
import LogoLink from '../components/LogoLink.vue'
</script>

<template>
  <main>
    <PictureText v-if="this.$root.dashboard" v-for="(event, index) in this.$root.dashboard.events"
      :picture="event.image + '?s=1500?authuser=0'" :is_left="index % 2 == 0" :alt="event.title">
      <h2>{{ event.title }}</h2>
      <LogoLink address="#" logo="calendar">{{ event.date }} - {{ event.time }}</LogoLink>
      <p>{{ event.description }}</p>
    </PictureText>
  </main>
</template>

<style></style>
