<script setup>
import PictureText from '../components/PictureText.vue'
import LogoLink from '../components/LogoLink.vue'
</script>

<template>
  <main>
    <PictureText picture="le_bar.jpg" alt="Le Bar">
      <h2>Nous contacter</h2>
      <LogoLink address="telto:+33756872078" logo="phone">+33 7 56 87 20 78</LogoLink>
      <LogoLink address="https://maps.app.goo.gl/eBKBerbVwWXnuEybA" logo="maps">64 Rue Jean-Jacques Rousseau</LogoLink>
      <LogoLink address="#" logo="mail">fada.bar@gmail.com</LogoLink>
    </PictureText>
  </main>
</template>

<style></style>
