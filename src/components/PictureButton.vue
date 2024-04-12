<template>
  <div class="button-picture">
    <button>Réservez</button>
  </div>
</template>

<style>
.button-picture {
  display: flex;
  justify-content: center;
  align-items: flex-end;
  margin-top: var(--theme-spacing);
  width: 100%;
  aspect-ratio: 4/3;
  background-color: red;
  color: var(--theme-white);
}

.button-picture>button {
  margin-bottom: var(--theme-spacing)
}
</style>
