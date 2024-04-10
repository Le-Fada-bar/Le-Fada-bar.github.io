<script setup>
import { RouterLink, RouterView } from 'vue-router'
import HelloWorld from './components/HelloWorld.vue'
</script>

<template>
  <header>
    <nav>
      <RouterLink to="/">Fada</RouterLink>
      <RouterLink to="/contact">Contact</RouterLink>
      <RouterLink to="/events">Evènements</RouterLink>
      <RouterLink to="/menu">Ardoise</RouterLink>
      <RouterLink to="/information">Informations</RouterLink>
    </nav>
  </header>

  <RouterView />
</template>

<style scoped></style>
