<template>
  <div class="carousels">
    <div class="carousel lcarousel">
      <div style="animation-delay: 0s">Organiser</div>
      <div style="animation-delay: 4s">Boire</div>
      <div style="animation-delay: 8s">Voir</div>
    </div>
    <div class="carousel rcarousel">
      <div style="animation-delay: 0s">un anniversaire</div>
      <div style="animation-delay: 2s">un afterwork</div>
      <div style="animation-delay: 4s">entre collègues</div>
      <div style="animation-delay: 6s">entre amis</div>
      <div style="animation-delay: 8s">du foot</div>
      <div style="animation-delay: 10s">du rugby</div>
    </div>
  </div>
</template>

<style scoped>
.carousels {
  display: flex;
  flex-direction: row;
  color: var(--theme-black);
}

.carousel {
  width: 50%;
  height: 6em;
  position: relative;
  font-size: 2em;
}

.carousel>div {
  top: 2em;
  height: 2em;
  position: absolute;
  animation-duration: 12s;
  animation-iteration-count: infinite;
  opacity: 0;
}

.lcarousel {
  font-family: "Jost", sans-serif;
  display: flex;
  justify-content: flex-end;
  padding-right: 0.5em;
}

.rcarousel {
  padding-left: 0.5em;
  font-family: "Dancing Script", cursive;
}

.lcarousel>div {
  animation-name: lanim;
}

.rcarousel>div {
  animation-name: ranim;
}

@keyframes lanim {
  0% {
    top: 4em;
    opacity: 0;
  }

  8%,
  34% {
    top: 2em;
    opacity: 1;
  }

  43%,
  100% {
    top: 0em;
    opacity: 0;
  }

}

@keyframes ranim {
  0% {
    top: 4em;
    opacity: 0;
  }

  8%,
  17% {
    top: 2em;
    opacity: 1;
  }

  25%,
  100% {
    top: 0em;
    opacity: 0;
  }

}
</style>
