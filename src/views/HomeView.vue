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
      <h2>Cave à copain <br> Bar à manger</h2>
      <p>À l’affût d’un nouveau cadre pour partager de bons moments avec vos invités dans le 1 er arrondissement de
        Paris ? Faites un détour au FADA. Auprès de cet établissement atypique, tout a été pensé pour vous accueillir
        dans une atmosphère conviviale. Installé rue Jean-Jacques Rousseau, ce bar vous fera plonger dans une ambiance
        méditerranéenne au cœur de la capitale.
      </p>
    </PictureText>
    <PictureText :is_left="false">
      <h2>Concept</h2>
      <p>Le Fada est bel et bien un bar de copains ! Les anciens élèves de l'École des Mines de Saint-Étienne se sont
        associés pour créer un lieu d'accueil chaleureux ouvert à tous. Central et accessible, l'objectif est de réunir
        les anciens élèves de l'École et, bien sûr, tous les bons vivants autour d'un verre. À très bientôt au Fada !
      </p>
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
  top: 85svh;
  position: absolute;
  color: var(--theme-white);
  width: 100%;
  height: 15svh;
  display: flex;
  flex-direction: column;
  justify-content: center;
  cursor: pointer;
}
</style>
