<script>
import Contact from '../components/Contact.vue'

export default {
  components: { Contact }
}
</script>

<template>
  <div class="button-picture">
    <div>
      <a href="#"><button class="book-button">Réserver</button></a>
    </div>
  </div>
  <main>
    <Contact></Contact>
  </main>
</template>

<style>
.book-button {
  background-color: var(--theme-black);
  color: var(--theme-white);
  width: 100%;
  font-weight: 700;
  padding: var(--theme-small-spacing);
  margin-bottom: var(--theme-small-spacing);
}

.button-picture {
  width: 100%;
  aspect-ratio: 4/3;
  object-fit: cover;
  display: flex;
  justify-content: center;
  align-items: flex-end;
  background-image: url('/bar.jpg');
}

.button-picture>div {
  width: 70%;
}
</style>
