<script setup>
import LogoLink from '../components/LogoLink.vue'
</script>

<template>
  <div class="contact">
    <div>
      <h2>Appelez Paul</h2>
      <LogoLink address="telto:+33756872078" logo="phone" :is_white="false">+33 7 56 87 20 78</LogoLink>
    </div>
    <div class="round-picture">
      <img alt="Paul" src="/paul.jpg">
    </div>
  </div>
</template>

<style>
.contact {
  display: flex;
  width: 100%;
  justify-content: space-between;
  align-items: center;
}

.contact>div {
  width: 45%;
}

.round-picture>img {
  width: 100%;
  aspect-ratio: 1/1;
  border-radius: 100%;
  object-fit: cover;
}
</style>
