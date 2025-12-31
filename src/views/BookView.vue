<script setup>
import Contact from '../components/Contact.vue'
import WordCarousel from '../components/WordCarousel.vue'
</script>

<template>
	<div class="button-picture">
		<div class="book-button">
			<a href=" https://prvt.re/ADH1uq" target="_blank">
				<button>Réserver</button>
			</a>
		</div>
	</div>
	<main>
		<WordCarousel/>
		<Contact></Contact>
	</main>
</template>

<style>
.button-picture {
	width: 100%;
	background-size: cover;
	background-position: center;
	background-image: url('/salle_etage.jpg');
	position: relative;
	height: 50vh;
}

.book-button {
	width: 100%;
	font-weight: 700;
	display: flex;
	justify-content: center;
	z-index: 888;
	position: absolute;
	bottom: 1rem;
}

.book-button > a > button {
	background-color: var(--theme-black);
	color: var(--theme-white);
	margin: auto;
	min-width: 15em;
	font-weight: 700;
	padding: var(--theme-small-spacing);
	margin-bottom: var(--theme-small-spacing);
}

.book-button > a > button:hover {
	background-color: var(--theme-white);
	color: var(--theme-black);
}

</style>
