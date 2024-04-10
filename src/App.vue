<script>
import { RouterLink, RouterView } from 'vue-router'
import HelloWorld from './components/HelloWorld.vue'

export default {
  data() {
    return {
      toggled: false,
      menu_height: "2em",
      menu_inside: "=",
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
    },
    close() {
      this.toggled = false;
      this.menu_height = "2em";
      this.menu_inside = "=";
    }
  },
  mounted() {
  },
  unmounted() {
  },
}

</script>

<template>
  <header :style="'height: ' + menu_height">
    <nav>
      <div class="fada">
        <div>
          <RouterLink to="/" @click="close">Fada</RouterLink>
        </div>
        <div><button @click="toggle" class="burger-menu">{{ menu_inside }}</button></div>
      </div>
      <div>
        <a href="#" v-if="toggled" @click="close">Réservez</a>
      </div>
      <div>
        <RouterLink v-if="toggled" @click="close" to="/menu">Carte</RouterLink>
      </div>
      <div>
        <RouterLink v-if="toggled" @click="close" to="/events">Evènements</RouterLink>
      </div>
      <div>
      </div>
      <RouterLink v-if="toggled" @click="close" to="/contact">Contactez-nous</RouterLink>
      <div>
        <RouterLink v-if="toggled" @click="close" to="/information">Informations</RouterLink>
      </div>
    </nav>
  </header>

  <RouterView />
</template>

<style scoped>
header {
  top: 0;
  position: fixed;
  border-bottom: solid;
  width: 100%;
  background-color: var(--theme-white);
}

.fada {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.burger-menu {
  min-height: 1.5em;
  aspect-ratio: 1;
}
</style>
