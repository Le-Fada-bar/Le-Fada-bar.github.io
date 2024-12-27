<script setup>
import Footer from './Footer.vue'
import { defineProps } from "vue";

const props = defineProps({
	visible: {
		type: Boolean,
		default: true
	}
});
</script>

<template>
	<!-- Inspired by https://codepen.io/madebygus/pen/ygwxwz -->
	<div class="waiting" :style="'visibility: ' + (props.visible ? 'visible' : 'hidden')">
		<h1>Fada</h1>
		<div class="animation">
			<div class="glass">
				<div class="air"></div>
			</div>
		</div>
		<p>Le temps de servir cette bière et je suis à vous !</p>
		<Footer/>
	</div>
</template>

<style>
.waiting {
	position: fixed;
	z-index: 999;
	height: 100vh;
	width: 100vw;
	background-color: var(--theme-white);
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

.animation {
	width: 10em;
	aspect-ratio: 1 / 1;
	background-color: var(--theme-white);
	display: flex;
	justify-content: center;
}

.glass {
	width: 50%;
	aspect-ratio: 1 / 2;
	background-color: var(--theme-black);
	border: solid 5px var(--theme-black);
	border-top-width: 4px;
	border-bottom-width: 10px;
	border-radius: 5px;
	transform: perspective(500px) rotateX(-45deg);
}

.air {
	background-color: var(--theme-white);
	height: 100%;
	animation: move 7s linear infinite;
}


@keyframes move {
	0% {
		height: 100%;
	}

	70% {
		height: 10%;
	}

	100% {
		height: 10%;
	}
}
</style>
