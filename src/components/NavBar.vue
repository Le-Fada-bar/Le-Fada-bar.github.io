<script setup>
import { RouterLink } from "vue-router";
import { defineProps, computed, ref } from "vue";

const props = defineProps({
	toggle: Function,
	close_and_move: Function,
	menu_inside: String,
	isSmall: Boolean,
	toggled: Boolean,
	dashboard: Object
});

const dashboardRef = ref(props.dashboard);
const dashboardCondition = computed(() => {
	if (dashboardRef && Object.hasOwn(dashboardRef, 'events')) {
		return dashboardRef.events.length !== 0;
	}
	return false;
});
</script>

<template>
	<div>
		<div class="burger-div bold">
			<button @click="toggle" class="burger-menu">{{ menu_inside }}</button>
		</div>
		<nav>
			<div class="bold brand">
				<RouterLink to="/" @click="close_and_move">Fada</RouterLink>
			</div>
			<div>
				<RouterLink v-if="!isSmall || toggled" @click="close_and_move" to="/book">Réservation</RouterLink>
			</div>
			<div>
				<RouterLink v-if="!isSmall || toggled" @click="close_and_move" to="/menu">Carte</RouterLink>
			</div>
			<div v-if="dashboardCondition">
				<RouterLink v-if="!isSmall || toggled" @click="close_and_move" to="/events">Evénements</RouterLink>
			</div>
			<div>
				<RouterLink v-if="!isSmall || toggled" @click="close_and_move" to="/contact">Contact</RouterLink>
			</div>
			<div>
				<RouterLink v-if="!isSmall || toggled" @click="close_and_move" to="/information">Informations</RouterLink>
			</div>
		</nav>
	</div>
</template>

<style scoped>

nav {
	display: flex;
	width: 100%;
	flex-direction: column;
	align-items: center;
	justify-content: space-between;
}

nav > div {
	display: flex;
	align-items: center;
	justify-content: center;
	height: 2em;
	font-weight: 400;
	font-size: 1.5em;
}

.burger-div {
	top: 0;
	position: fixed;
}

.brand {
	font-size: 2em;
}

.burger-menu {
	height: 2em;
	aspect-ratio: 1;
	font-family: "Archivo Black", sans-serif;
	font-size: 2em;
}

@media only screen and (min-width: 950px) {
	.burger-menu {
		display: none;
	}

	nav {
		flex-direction: row;
		align-items: center;
		justify-content: flex-end;
	}

	.brand {
		margin-right: auto;
		font-size: 2em;
	}

	nav > div {
		padding-left: var(--theme-small-spacing);
		padding-right: var(--theme-small-spacing);
	}
}


.router-link-active {
	opacity: 0.7;
}

nav > div > a {
	text-decoration: underline;
	text-decoration-color: transparent;
}

nav > div > a:hover {
	text-decoration-color: inherit;
	transition: text-decoration-color 0.4s ease-in;
}

nav > div > .router-link-active:hover,
.brand > a:hover {
	text-decoration-color: transparent;
}

.brand > .router-link-active {
	opacity: inherit;
}

</style>