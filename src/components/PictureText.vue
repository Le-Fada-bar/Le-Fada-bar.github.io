<template>
  <div class="picture-container">
    <div class="picture"> </div>
    <div class="text">
      <slot></slot>
    </div>
  </div>
</template>

<style>
.picture-container {
  margin-top: var(--theme-spacing);
  width: 100%;
}

.picture {
  width: 80%;
  aspect-ratio: 4/3;
  background-color: blue;
}

.text {
  margin-left: 10%;
  margin-top: -20%;
  top: 5em;
  width: 85%;
  padding-left: 5%;
  padding-top: 1%;
  padding-bottom: 1%;
  background-color: var(--theme-black);
  color: var(--theme-white);
}
</style>
