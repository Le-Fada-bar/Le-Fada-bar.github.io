<script>
import PictureText from '../components/PictureText.vue'
import LogoLink from '../components/LogoLink.vue'

export default {
  components: { PictureText, LogoLink }
}
</script>

<template>
  <main>
    <PictureText>
      <h2>HORAIRES</h2>
      <ul>
        <li>#TODO</li>
      </ul>
    </PictureText>
    <PictureText maps="true">
      <h2>OÙ NOUS TROUVER</h2>
      <LogoLink address="https://maps.app.goo.gl/eBKBerbVwWXnuEybA" logo="maps">64 Rue Jean-Jacques Rousseau</LogoLink>
      <p>Proximité métro #TODO</p>
    </PictureText>
  </main>
</template>

<style></style>
