<script>
import { RouterLink, RouterView } from 'vue-router'
import HelloWorld from './components/HelloWorld.vue'

export default {
  data() {
    return {
      toggled: false,
    }
  },
  methods: {
    toggle() {
      this.toggled = !this.toggled;
    },
    close() {
      this.toggled = false;
    }
  },
  mounted() {
  },
  unmounted() {
  },
}

</script>

<template>
  <header>
    <nav>
      <div class="fada">
        <RouterLink to="/" @click="close">Fada</RouterLink>
        <div><button @click="toggle" class="burger-menu">=</button></div>
      </div>
      <div>
        <RouterLink v-if="toggled" @click="close" to="/contact">Contact</RouterLink>
      </div>
      <div>
        <RouterLink v-if="toggled" @click="close" to="/events">Evènements</RouterLink>
      </div>
      <div>
        <RouterLink v-if="toggled" @click="close" to="/menu">Ardoise</RouterLink>
      </div>
      <div>
        <RouterLink v-if="toggled" @click="close" to="/information">Informations</RouterLink>
      </div>
    </nav>
  </header>

  <RouterView />
</template>

<style scoped>
header {
  position: sticky;
  border-bottom: solid;
}

.fada {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.burger-menu {
  position: sticky;
  min-height: 1.5em;
  aspect-ratio: 1;
}
</style>
