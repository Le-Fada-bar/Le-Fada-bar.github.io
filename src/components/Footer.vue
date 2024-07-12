<template>
	<footer>
		<div>
			<div>
				<a href="https://www.instagram.com/fadabar/" target="_blank">
					<img width="25px" alt="Instagram" src="/icons/instagram.svg"/>
				</a>
			</div>
			<div style="padding-left: .5em">
				<a href="https://www.privateaser.com/lieu/38031-fada" target="_blank">
					<img width="25px" alt="Privateaser" src="/icons/privateaser.svg"/>
				</a>
			</div>
		</div>
		<div class="copyright">© BAMSE, 2024</div>
	</footer>
</template>

<style>
footer {
	margin-top: auto;
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	margin-bottom: var(--theme-small-spacing);
	margin-bottom: var(--theme-spacing);
}

footer > div {
	display: flex;
	flex-direction: row;
}

.copyright {
	font-size: 0.8em;
}
</style>