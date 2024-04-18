<template>
  <div class="contact">
    <div>
      <h2>APPELEZ PAUL</h2>
      <ul>
        <li>+33 6 12 34 56 78</li>
      </ul>
    </div>
    <div class="round-picture">
      <img class="" src="/paul.jpg">
    </div>
  </div>
</template>

<style>
.contact {
  display: flex;
  width: 100%;
  justify-content: space-between;
  align-items: center;
}

.contact>div {
  width: 45%;
}

.round-picture>img {
  width: 100%;
  aspect-ratio: 1/1;
  border-radius: 100%;
}
</style>
