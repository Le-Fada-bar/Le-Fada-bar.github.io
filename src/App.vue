<script>
import { RouterLink, RouterView } from 'vue-router'
import Footer from './components/Footer.vue'
import Waiting from './components/Waiting.vue'

export default {
  components: {
    Footer, Waiting
  },
  data() {
    return {
      loaded: false,
      toggled: false,
      menu_height: "3em",
      menu_inside: "=",
      menu_background_color: "rgba(0, 0, 0, 0.4)",
      menu_color: "var(--theme-white)",
    }
  },
  methods: {
    toggle() {
      if (this.toggled) {
        this.close();
      } else {
        this.open();
      }
    },
    open() {
      this.toggled = true;
      this.menu_height = "100vh";
      this.menu_inside = "x";
      this.colored_menu();
    },
    close() {
      this.toggled = false;
      this.menu_height = "3em";
      this.menu_inside = "=";
      this.onScroll()
    },
    transparent_menu() {
      this.menu_background_color = "rgba(0, 0, 0, 0.4)";
      this.menu_color = "#ffffff";
    },
    colored_menu() {
      this.menu_background_color = "var(--theme-white)";
      this.menu_color = "var(--theme-black)";
    },
    onScroll() {
      if ((this.$route.name == "home" || this.$route.name == "book") && !this.toggled && window.scrollY < (.5 * window.innerHeight)) {
        this.transparent_menu();
      } else {
        this.colored_menu();
      }
    }
  },
  mounted() {
    setTimeout(() => { this.loaded = true; console.log(this.loaded) }, 2500);
    window.addEventListener('scroll', this.onScroll);
  },
  unmounted() {
    window.removeEventListener('scroll', this.onScroll);
  },
  watch: {
    $route(to, from) {
      this.onScroll();
    }
  }
}

</script>

<template>
  <Waiting :visible="!loaded" />
  <header
    :style="'height: ' + menu_height + '; background-color: ' + menu_background_color + '; color: ' + menu_color + ';'">
    <div class="burger-div bold"><button @click="toggle" class="burger-menu">{{ menu_inside }}</button></div>
    <nav>
      <div class="bold">
        <RouterLink to="/" @click="close">Fada</RouterLink>
      </div>
      <div>
        <RouterLink v-if="toggled" @click="close" to="/book">Réserver</RouterLink>
      </div>
      <div>
        <RouterLink v-if="toggled" @click="close" to="/menu">Carte</RouterLink>
      </div>
      <div>
        <RouterLink v-if="toggled" @click="close" to="/events">Evènements</RouterLink>
      </div>
      <div>
        <RouterLink v-if="toggled" @click="close" to="/contact">Nous contacter</RouterLink>
      </div>
      <div>
        <RouterLink v-if="toggled" @click="close" to="/information">Informations</RouterLink>
      </div>
    </nav>
    <Footer v-if="toggled" />
  </header>
  <div class="container">
    <RouterView />
    <Footer />
  </div>
</template>

<style scoped>
header {
  top: 0;
  position: fixed;
  z-index: 6;
  border-bottom: solid 2px;
  width: 100%;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

nav {
  display: flex;
  width: 100%;
  flex-direction: column;
  align-items: center;
  justify-content: space-between;
}

nav>div {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 2em;
  font-weight: 500;
  font-size: 1.5em;
}

.burger-div {
  top: 0;
  position: fixed;
}

.burger-menu {
  height: 2em;
  aspect-ratio: 1;
  font-family: "Archivo Black", sans-serif;
  font-size: 1.5em;
}

.container {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
}
</style>
