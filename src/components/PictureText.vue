<script setup>
import { defineProps } from "vue";

const props = defineProps({
	picture: {
		type: String,
		default: "/fada.jpg"
	},
	alt: {
		type: String,
		default: ""
	},
	maps: {
		type: Boolean,
		default: false
	},
	is_left: {
		type: Boolean,
		default: true
	}
});
</script>

<template>
  <div :class="'picture-container ' + (is_left ? 'left' : 'right')">
    <div class="picture">
      <iframe v-if="maps"
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2624.6949556800496!2d2.341438676415349!3d48.864027000309925!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e66fcb46714f95%3A0xf1b183cbdf0c8ac4!2sFada!5e0!3m2!1sfr!2sfr!4v1712934595465!5m2!1sfr!2sfr"
        width="100%" height="100%" style="border:0;filter: grayscale(50%) invert(90%) contrast(100%);"
        allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      <img v-else :src="picture" :alt="alt" />
    </div>
    <div class="text">
      <slot></slot>
    </div>
  </div>
</template>

<style>
.picture-container {
  width: 100%;
}

.text {
  width: 80%;
}

.picture {
  width: 88%;
  aspect-ratio: 4/3;
}

.picture>img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.right>.picture {
  margin-left: auto;
}

.left>.text {
  margin-left: auto;
}

.text {
  position: relative;
  top: -3em;
  padding: 4%;
  background-color: var(--theme-black);
  color: var(--theme-white);
}
</style>
