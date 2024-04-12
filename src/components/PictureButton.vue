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
  width: 100%;
  aspect-ratio: 4/3;
  color: var(--theme-white);
  background-image: url('/bar.jpg');
}

.button-picture>button {
  margin-bottom: var(--theme-small-spacing);
}
</style>
