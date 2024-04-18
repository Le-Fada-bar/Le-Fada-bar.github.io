<script>
import PictureText from '../components/PictureText.vue'

export default {
  components: { PictureText }
}
</script>

<template>
  <main>
    <PictureText>
      <h2>#EVENEMENT</h2>
      <ul>
        <li>#DATE</li>
        <li>#DESCRIPTION</li>
      </ul>
    </PictureText>
    <PictureText :is_left="false">
      <h2>#EVENEMENT</h2>
      <ul>
        <li>#DATE</li>
        <li>#DESCRIPTION</li>
      </ul>
    </PictureText>
  </main>
</template>

<style></style>
