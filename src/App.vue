<script setup>
import axios from 'axios';

import { RouterView, useRoute } from 'vue-router'
import {reactive, onMounted, onUnmounted, watch, ref, provide} from "vue";
import Footer from '@/components/Footer.vue'
import Waiting from '@/components/Waiting.vue'
import NavBar from "@/components/NavBar.vue";

/**********************
 *       STATE        *
 **********************/

const state = reactive({
	loaded: false,
	dashboardError: false,
	toggled: false,
	isSmall: true,
	menu_height: "3.5em",
	menu_inside: "=",
	menu_background_color: "rgba(0, 0, 0, 0.4)",
	menu_color: "var(--theme-white)",
	dashboard: {
		events: [],
		menu: [],
		opening: {}
	},
});

// Create a dashboard provider for all pages
const dashboardRef = ref(state.dashboard);
provide('dashboard', dashboardRef);

/**********************
 *       DATA         *
 **********************/
const loadDashboard = async () => {
	state.loaded = false;
	state.dashboardError = false;

	try {
		const response = await axios.get('https://script.google.com/macros/s/AKfycbw2WXY65EGloNKna0DDHT6EmgulHZ3pRAktWunLAC3BPdsEo-lhkV76yXaM0xpnvnJG/exec', { timeout: 10000 });
		const data = response.data || {};
		state.dashboard.events = Array.isArray(data.events) ? data.events : [];
		state.dashboard.menu = Array.isArray(data.menu) ? data.menu : [];
		state.dashboard.opening = data.opening && typeof data.opening === 'object' ? data.opening : {};
	} catch {
		state.dashboardError = true;
	} finally {
		state.loaded = true;
	}
};

/**********************
 *       EVENTS       *
 **********************/
onMounted(() => {
	loadDashboard();
	onResize();
	window.addEventListener('scroll', onScroll);
	window.addEventListener('resize', onResize);
})

onUnmounted(() => {
	window.removeEventListener('scroll', onScroll);
	window.removeEventListener('resize', onResize);
});

const route = useRoute();

watch(route, (to, from) => {
	onScroll()
});

/**********************
 *     FUNCTIONS      *
 **********************/

const toggle = () => {
	if (state.toggled) {
		closeMenu();
	} else {
		openMenu();
	}
};

const openMenu = () => {
	state.toggled = true;
	state.menu_height = "100vh";
	state.menu_inside = "x";
	colored_menu();
};

const closeMenu = () => {
	state.toggled = false;
	state.menu_height = "3.5em";
	state.menu_inside = "=";
	onScroll()
};

const close_and_move = () => {
	closeMenu();
	window.scrollTo({top: 0});
};
const transparent_menu = () => {
	state.menu_background_color = "rgba(0, 0, 0, 0.4)";
	state.menu_color = "#ffffff";
};
const colored_menu = () => {
	state.menu_background_color = "var(--theme-white)";
	state.menu_color = "var(--theme-black)";
};

const onScroll = () => {
	if ((route.name === "home" || route.name === "book") && !state.toggled && window.scrollY < (.5 * window.innerHeight)) {
		transparent_menu();
	} else {
		colored_menu();
	}
};

const onResize = () => {
	state.isSmall = window.innerWidth < 950;
}

</script>

<template>
	<Waiting :visible="!state.loaded"/>
	<header :style="'height: ' + state.menu_height + '; background-color: ' + state.menu_background_color + '; color: ' + state.menu_color + ';'">
		<NavBar :toggle="toggle" :close_and_move="close_and_move" :menu_inside="state.menu_inside" :toggled="state.toggled" :isSmall="state.isSmall" :dashboard="state.dashboard" />
		<Footer v-if="state.toggled"/>
	</header>
	<div class="container">
		<div v-if="state.dashboardError" class="dashboard-error" role="alert">
			<span>Le contenu dynamique n'a pas pu être chargé.</span>
			<button type="button" @click="loadDashboard">Réessayer</button>
		</div>
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

.container {
	min-height: 100vh;
	display: flex;
	flex-direction: column;
}

.dashboard-error {
	margin: 4.5rem 1rem 0;
	padding: 0.75rem 1rem;
	display: flex;
	align-items: center;
	justify-content: center;
	flex-wrap: wrap;
	gap: 0.75rem;
	background: var(--theme-black);
	color: var(--theme-white);
	text-align: center;
}

.dashboard-error button {
	color: inherit;
	text-decoration: underline;
	text-underline-offset: 0.2em;
}

</style>
