<script setup>
import PictureText from '../components/PictureText.vue'
</script>

<template>
  <video autoplay loop muted>
    <source src="/intro.mp4" />
    <div class="discover">
      <button>Découvrir</button>
    </div>
  </video>
  <main>
    <PictureText>
      <h2>Cave à ami </h2>
      <h2> Bar à copain </h2>
      <p>This is a long text</p>
    </PictureText>
    <PictureText>
      <h2>Concept</h2>
      <p>This is a long text</p>
      <p>This is a long text</p>
    </PictureText>
  </main>
</template>

<style scoped>
main {
  padding: 1em;
}

video {
  width: 100%;
  height: 100vh;
  object-fit: cover;
  pointer-events: none;
}
</style>
