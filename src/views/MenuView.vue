<script>
import PictureText from '../components/PictureText.vue'

export default {
  components: { PictureText }
}
</script>

<template>
  <main>
    <PictureText>
      <h2>Happy hour</h2>
      <table>
        <thead>
          <th></th>
          <th class="table-right">Prix</th>
        </thead>
        <tbody>
          <tr>
            <td>Pinte de FADA</td>
            <td class="table-right">5</td>
          </tr>
          <tr>
            <td>Autres pintes</td>
            <td class="table-right">8</td>
          </tr>
          <tr>
            <td>P'tit Jaune (Ricard)</td>
            <td class="table-right">3</td>
          </tr>
          <tr>
            <td>Spritz</td>
            <td class="table-right">8</td>
          </tr>
          <tr>
            <td>Moscow Mule</td>
            <td class="table-right">8</td>
          </tr>
          <tr>
            <td>Cocktail du Mois</td>
            <td class="table-right">8</td>
          </tr>
          <tr>
            <td>Soda</td>
            <td class="table-right">4</td>
          </tr>
        </tbody>
      </table>
    </PictureText>
    <PictureText :is_left="false">
      <h2>Bières</h2>
      <table>
        <thead>
          <th></th>
          <th class="table-right">25cl</th>
          <th class="table-right">50cl</th>
        </thead>
        <tbody>
          <tr>
            <td>Bière de FADA</td>
            <td class="table-right">3.5</td>
            <td class="table-right">6</td>
          </tr>
          <tr>
            <td>Lagunitas IPA (6.2°), Edelweiss (5°), Ciney (7°)</td>
            <td class="table-right">5</td>
            <td class="table-right">9</td>
          </tr>
          <tr>
            <td>Pression du mois</td>
            <td class="table-right">5</td>
            <td class="table-right">9</td>
          </tr>
          <tr>
            <td>Picon</td>
            <td class="table-right">4.5</td>
            <td class="table-right">7.5</td>
          </tr>
        </tbody>
      </table>
    </PictureText>
    <PictureText :is_left="true">
      <h2>L'Apéro</h2>
      <table>
        <thead>
          <th></th>
          <th class="table-right">Prix</th>
        </thead>
        <tbody>
          <tr>
            <td>P'tit Jaune (Ricard)</td>
            <td class="table-right">4</td>
          </tr>
          <tr>
            <td>Kir vin blanc</td>
            <td class="table-right">5.5</td>
          </tr>
          <tr>
            <td>Martini blanc ou rouge</td>
            <td class="table-right">5.5</td>
          </tr>
          <tr>
            <td>Campari, Suze</td>
            <td class="table-right">6</td>
          </tr>

        </tbody>
      </table>
    </PictureText>
  </main>
</template>

<style>
.table-right {
  text-align: right;
}
</style>
