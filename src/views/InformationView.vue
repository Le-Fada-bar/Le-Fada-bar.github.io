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
            <td class="table-right">-</td>
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
      <LogoLink address="https://maps.app.goo.gl/eBKBerbVwWXnuEybA" logo="maps" :is_white="false">75001, Paris
      </LogoLink>
      <LogoLink address="#" logo="ratp">Châtelet
        <img class="metro" src="/ratp/1.svg">
        <img class="metro" src="/ratp/7.svg">
        <img class="metro" src="/ratp/11.svg">
        <img class="metro" src="/ratp/14.svg">
      </LogoLink>
      <LogoLink address="#" logo="ratp" :is_white="false">Les Halles
        <img class="metro" src="/ratp/4.svg">
      </LogoLink>
      <LogoLink address="#" logo="ratp" :is_white="false">Châtelet - Les Halles
        <img class="metro" src="/ratp/A.svg">
        <img class="metro" src="/ratp/B.svg">
        <img class="metro" src="/ratp/D.svg">
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
