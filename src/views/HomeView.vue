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
  <div @click="scrollTo" class="discover">
    <button>Découvrir</button>
    <div>
      <svg width="100%" height="1em" viewBox="0 0 10 10" version="1.1" xmlns="http://www.w3.org/2000/svg">
        <path style="fill:none;stroke:var(--theme-white);stroke-opacity:1" d="M 0,7 5,10 10,7" />
      </svg>
    </div>
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
  flex-direction: column;
  justify-content: center;
}
</style>
