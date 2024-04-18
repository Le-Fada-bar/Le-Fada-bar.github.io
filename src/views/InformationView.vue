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
      <table>
        <tbody>
          <tr>
            <td>Lundi</td>
            <td class="table-right">17:00 - 02:00</td>
          </tr>
          <tr>
            <td>Mardi</td>
            <td class="table-right">17:00 - 02:00</td>
          </tr>
          <tr>
            <td>Mercredi</td>
            <td class="table-right">17:00 - 02:00</td>
          </tr>
          <tr>
            <td>Jeudi</td>
            <td class="table-right">17:00 - 02:00</td>
          </tr>
          <tr>
            <td>Vendredi</td>
            <td class="table-right">17:00 - 02:00</td>
          </tr>
          <tr>
            <td>Samedi</td>
            <td class="table-right">17:00 - 02:00</td>
          </tr>
          <tr>
            <td>Dimanche</td>
            <td class="table-right">-</td>
          </tr>
        </tbody>
      </table>
    </PictureText>
    <PictureText :maps="true" :is_left="false">
      <h2>OÙ NOUS TROUVER</h2>
      <LogoLink address="https://maps.app.goo.gl/eBKBerbVwWXnuEybA" logo="maps">64 Rue Jean-Jacques Rousseau</LogoLink>
      <LogoLink address="#" logo="ratp">Châtelet
        <div class="metro">1</div>
        <div class="metro">4</div>
        <div class="metro">7</div>
        <div class="metro">11</div>
        <div class="metro">14</div>
        <div class="metro rer">A</div>
        <div class="metro rer">B</div>
        <div class="metro rer">D</div>
      </LogoLink>
    </PictureText>
  </main>
</template>

<style>
.metro {
  display: inline-block;
  text-align: center;
  vertical-align: middle;
  border-radius: 100%;
  width: 1.2em;
  height: 1.2em;
  margin-left: .2em;
  background-color: var(--theme-white);
  color: var(--theme-black);
}

.rer {
  border-radius: 25%;
}

.table-right {
  text-align: right;
}
</style>
