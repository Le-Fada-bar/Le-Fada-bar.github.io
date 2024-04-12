<script>
import PictureText from '../components/PictureText.vue'

export default {
  components: { PictureText }
}
</script>

<template>
  <main>
    <PictureText>

      <div class="carousel">
        <h2>&lt;</h2>
        <h2>#EVENEMENT</h2>
        <h2>&gt;</h2>
      </div>
      <ul>
        <li>#DATE</li>
        <li>#DESCRIPTION</li>
      </ul>
    </PictureText>
  </main>
</template>

<style>
.carousel {
  width: 95%;
  display: flex;
  justify-content: space-between;
}
</style>
