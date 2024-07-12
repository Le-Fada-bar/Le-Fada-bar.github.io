<script setup>
import PictureText from '../components/PictureText.vue'
import LogoLink from '../components/LogoLink.vue'
</script>

<template>
	<main>
		<PictureText v-if="this.$root.dashboard">
			<h2>Horaires</h2>
			<p v-if="this.$root.dashboard.opening.message"><strong>{{ this.$root.dashboard.opening.message }}</strong>
			</p>
			<table>
				<tbody>
				<tr v-for="time in this.$root.dashboard.opening.times">
					<td>{{ time[0] }}</td>
					<td class="table-right">{{ time[1] }} - {{ time[2] }}</td>
				</tr>
				</tbody>
			</table>
		</PictureText>
		<PictureText :maps="true" :is_left="false">
			<h2>Où nous trouver</h2>
			<LogoLink address="https://maps.app.goo.gl/eBKBerbVwWXnuEybA" logo="maps">64 Rue Jean-Jacques Rousseau
			</LogoLink>
			<LogoLink address="https://maps.app.goo.gl/eBKBerbVwWXnuEybA" logo="maps" :is_white="false">75001, Paris
			</LogoLink>
			<LogoLink address="#" logo="ratp">Châtelet
				<img class="metro" src="/ratp/1.svg" alt="Métro ligne 1" />
				<img class="metro" src="/ratp/7.svg" alt="Métro ligne 7" />
				<img class="metro" src="/ratp/11.svg" alt="Métro ligne 11" />
				<img class="metro" src="/ratp/14.svg" alt="Métro ligne 14" />
			</LogoLink>
			<LogoLink address="#" logo="ratp" :is_white="false">Les Halles
				<img class="metro" src="/ratp/4.svg" alt="Métro ligne 4" />
			</LogoLink>
			<LogoLink address="#" logo="ratp" :is_white="false">Châtelet - Les Halles
				<img class="metro" src="/ratp/A.svg" alt="RER ligne A" />
				<img class="metro" src="/ratp/B.svg" alt="RER ligne B"/>
				<img class="metro" src="/ratp/D.svg" alt="RER ligne D"/>
			</LogoLink>
		</PictureText>
	</main>
</template>

<style>
.metro {
	height: 1em;
	padding-left: 0.3em;
}

.table-right {
	text-align: right;
}
</style>
