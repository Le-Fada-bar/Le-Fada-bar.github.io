<script>
import PictureText from '../components/PictureText.vue'

export default {
  components: { PictureText },
  methods: {
    scrollTo() {
      var scrollDiv = document.getElementById("main").offsetTop - 50;
      window.scrollTo({ top: scrollDiv, behavior: 'smooth' });
    }
  }
}
</script>

<template>
  <video autoplay loop muted>
    <source src="/intro.mp4" />
  </video>
  <div class="discover">
    <button @click="scrollTo">Découvrir</button>
  </div>
  <main id="main">
    <PictureText>
      <h2>CAVE À COPAIN </h2>
      <h2> BAR À MANGER </h2>
      <p>This is a long text</p>
    </PictureText>
    <PictureText :is_left="false">
      <h2>CONCEPT</h2>
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

.discover {
  top: 92vh;
  position: absolute;
  color: var(--theme-white);
  width: 100%;
  display: flex;
  justify-content: center;
}
</style>
