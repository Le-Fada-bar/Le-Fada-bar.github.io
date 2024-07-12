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
	<div class="logo"><a :href="address"><img style="height: 1em; margin-right: 0.5em"
			:src="'/icons/' + logo + (is_white ? '_white' : '') + '.svg'" alt="Logo du Fada">
		<slot></slot>
	</a></div>

</template>

<style scoped>
.logo {
	padding-top: 0.5em;
	padding-bottom: 0.5em;
}
</style>
