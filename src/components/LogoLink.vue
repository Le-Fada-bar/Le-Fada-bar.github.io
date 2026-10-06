<script setup>
import { defineProps } from "vue";

const props = defineProps({
	displayed: {
		type: String
	},
	address: {
		type: String
	},
	logo: {
		type: String,
		default: "maps"
	},
	is_white: {
		type: Boolean,
		default: true
	}
});
</script>

<template>
		<div class="logo">
			<a v-if="address && address !== '#'" :href="address">
				<img :src="'/icons/' + logo + (is_white ? '_white' : '') + '.svg'" alt="" aria-hidden="true">
				<slot></slot>
			</a>
			<span v-else class="logo-content">
				<img :src="'/icons/' + logo + (is_white ? '_white' : '') + '.svg'" alt="" aria-hidden="true">
				<slot></slot>
			</span>
		</div>

</template>

<style scoped>
.logo {
	padding-top: 0.5em;
	padding-bottom: 0.5em;
}

.logo a,
.logo-content {
		display: inline-flex;
		align-items: center;
}

.logo img {
		height: 1em;
		margin-right: 0.5em;
}
</style>
