<script setup>
import PictureText from '../components/PictureText.vue'
import LogoLink from '../components/LogoLink.vue'
import { inject } from "vue";

const dashboard = inject("dashboard").value;

const eventImage = (image) => {
  if (!image) return '/fada.jpg';

  try {
    const url = new URL(image, window.location.origin);
    url.searchParams.set('s', '1500');
    url.searchParams.set('authuser', '0');
    return url.toString();
  } catch {
    return image;
  }
};
</script>

<template>
  <main>
    <PictureText v-if="dashboard" v-for="(event, index) in dashboard.events"
      :picture="eventImage(event.image)" :is_left="index % 2 == 0" :alt="event.title">
      <h2>{{ event.title }}</h2>
      <LogoLink logo="calendar">{{ event.date }} - {{ event.time }}</LogoLink>
      <p>{{ event.description }}</p>
    </PictureText>
  </main>
</template>

<style></style>
