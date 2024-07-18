<script setup>
import Contact from '../components/Contact.vue'
import WordCarousel from '../components/WordCarousel.vue'
</script>

<template>
	<div class="button-picture">
		<div>
			<div class="book-button">
				<a href="https://www.privateaser.com/lieu/38031-fada" target="_blank">
					<button>Réserver</button>
				</a>
			</div>
		</div>
	</div>
	<main>
		<WordCarousel/>
		<Contact></Contact>
	</main>
</template>

<style>
.book-button {
	width: 100%;
	font-weight: 700;
	display: flex;
	justify-content: center;
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

.button-picture {
	width: 100%;
	background-size: cover;
	background-position: center;
	display: flex;
	justify-content: center;
	align-items: flex-end;
	background-image: url('/salle_etage.jpg');
	min-height: 20vh;
}

.button-picture > div {
	width: 100%;
}

@media only screen and (min-width: 700px) {
	.button-picture {
		aspect-ratio: 4;
	}

	.button-picture > div {
		width: 100%;
	}
}
</style>
