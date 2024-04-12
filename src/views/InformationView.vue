<script>
import PictureText from '../components/PictureText.vue'

export default {
  components: { PictureText }
}
</script>

<template>
  <main>
    <PictureText>
      <h2>HORAIRES</h2>
      <ul>
        <li>#DATE</li>
        <li>#DESCRIPTION</li>
      </ul>
    </PictureText>
    <PictureText maps="true">
      <h2>OÙ NOUS TROUVER</h2>
      <ul>
        <li>#Addresse</li>
      </ul>
    </PictureText>
  </main>
</template>

<style></style>
