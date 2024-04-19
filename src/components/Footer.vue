<template>
  <footer>
    <div>
      <div><img width="25px" src="/icons/instagram.svg"></div>
      <div style="padding-left: .5em"><img width="25px" src="/icons/privateaser.svg"></div>
    </div>
    <div class="copyright">© BAMSE, 2024 </div>
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

footer>div {
  display: flex;
  flex-direction: row;
}

.copyright {
  font-size: 0.8em;
}
</style>
