<script setup>
import PictureText from '../components/PictureText.vue'
import LogoLink from '../components/LogoLink.vue'
import { inject } from "vue";

const dashboard = inject("dashboard").value;
</script>

<template>
  <main>
    <PictureText v-if="dashboard" v-for="(event, index) in dashboard.events"
      :picture="event.image + '?s=1500?authuser=0'" :is_left="index % 2 == 0" :alt="event.title">
      <h2>{{ event.title }}</h2>
      <LogoLink address="#" logo="calendar">{{ event.date }} - {{ event.time }}</LogoLink>
      <p>{{ event.description }}</p>
    </PictureText>
  </main>
</template>

<style></style>
