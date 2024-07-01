<script>
import axios from 'axios';

import {RouterLink, RouterView} from 'vue-router'
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
			isSmall: true,
			menu_height: "3.5em",
			menu_inside: "=",
			menu_background_color: "rgba(0, 0, 0, 0.4)",
			menu_color: "var(--theme-white)",
			dashboard: 0,
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
			this.menu_height = "3.5em";
			this.menu_inside = "=";
			this.onScroll()
		},
		close_and_move() {
			this.close();
			window.scrollTo({top: 0});
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
		},
		onResize() {
			this.isSmall = window.innerWidth < 950;
		}
	},
	mounted() {
		// setTimeout(() => { this.loaded = true; console.log(this.loaded) }, 2500);
		axios
			.get('https://script.google.com/macros/s/AKfycbw2WXY65EGloNKna0DDHT6EmgulHZ3pRAktWunLAC3BPdsEo-lhkV76yXaM0xpnvnJG/exec')
			.then(
				response => {
					this.dashboard = response["data"]
					console.log(this.dashboard);
					this.loaded = true;
				});
		this.onResize();
		window.addEventListener('scroll', this.onScroll);
		window.addEventListener('resize', this.onResize);
	},
	unmounted() {
		window.removeEventListener('scroll', this.onScroll);
		window.removeEventListener('resize', this.onResize);
	},
	watch: {
		$route(to, from) {
			this.onScroll();
		}
	}
}

</script>

<template>
	<Waiting :visible="!loaded"/>
	<header
		:style="'height: ' + menu_height + '; background-color: ' + menu_background_color + '; color: ' + menu_color + ';'">
		<div class="burger-div bold">
			<button @click="toggle" class="burger-menu">{{ menu_inside }}</button>
		</div>
		<nav>
			<div class="bold brand">
				<RouterLink to="/" @click="close_and_move">Fada</RouterLink>
			</div>
			<div>
				<RouterLink v-if="!isSmall || toggled" @click="close_and_move" to="/book">Réserver</RouterLink>
			</div>
			<div>
				<RouterLink v-if="!isSmall || toggled" @click="close_and_move" to="/menu">Carte</RouterLink>
			</div>
			<div v-if="this.dashboard && (this.dashboard.events.length !== 0)">
				<RouterLink v-if="!isSmall || toggled" @click="close_and_move" to="/events">Evénements</RouterLink>
			</div>
			<div>
				<RouterLink v-if="!isSmall || toggled" @click="close_and_move" to="/contact">Nous contacter</RouterLink>
			</div>
			<div>
				<RouterLink v-if="!isSmall || toggled" @click="close_and_move" to="/information">Informations
				</RouterLink>
			</div>
		</nav>
		<Footer v-if="toggled"/>
	</header>
	<div class="container">
		<RouterView/>
		<Footer/>
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

.container {
	min-height: 100vh;
	display: flex;
	flex-direction: column;
}

@media only screen and (min-width: 950px) {
	.burger-menu {
		visibility: hidden;
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
