<script setup>
import PictureText from '../components/PictureText.vue'
import {inject} from "vue";

const dashboard = inject("dashboard").value;
</script>

<template>
	<main>
		<div class="title-wrp">
			<h1>Découvrez notre carte</h1>
		</div>
		<PictureText v-for="(submenu, index) in dashboard.menu" :is_left="index % 2 == 0"
					 :picture="submenu.link">
			<h2>{{ submenu.category }}</h2>
			<table>
				<thead>
				<th class="table-right" v-for="header in submenu.header">{{ header }}</th>
				</thead>
				<tbody>
				<tr v-for="content in submenu.content">
					<td v-for="(cell, id) in content" :class="{ 'table-right': id != 0 }">
						<span v-if="cell[0] !== '#'">{{ cell }}</span>
						<span v-else class="table-title"><br>{{ cell.slice(1) }}</span>
					</td>
				</tr>
				</tbody>
			</table>
		</PictureText>
	</main>
</template>

<style>
.table-right {
	text-align: right;
}

.table-title {
	font-family: "Dancing Script", cursive;
	font-size: 1.2em;
	margin-top: 1em;
}
</style>
