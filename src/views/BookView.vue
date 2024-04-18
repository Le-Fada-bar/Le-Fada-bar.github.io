<script>
import Contact from '../components/Contact.vue'

export default {
  components: { Contact }
}
</script>

<template>
  <div class="button-picture"></div>
  <main>
    <a href="#"><button class="book-button bold">RÉSERVER</button></a>
    <Contact></Contact>
  </main>
</template>

<style>
.book-button {
  background-color: var(--theme-black);
  color: var(--theme-white);
  width: 100%;
  padding: var(--theme-small-spacing);
  margin-bottom: var(--theme-spacing);
}

.button-picture {
  width: 100%;
  aspect-ratio: 4/3;
  object-fit: cover;
  background-image: url('/bar.jpg');
}
</style>
