<template>
  <footer>
    <div>
      <div><img width="25px" src="/icons/instagram.svg"></div>
      <div style="padding-left: .5em"><img width="25px" src="/icons/privateaser.svg"></div>
    </div>
  </footer>
</template>

<style>
footer {
  margin-top: var(--theme-spacing);
  width: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  margin-bottom: var(--theme-small-spacing);
}

footer>div {
  display: flex;
  flex-direction: row;
}
</style>
