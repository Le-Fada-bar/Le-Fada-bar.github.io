<script>
import PictureText from '../components/PictureText.vue'

export default {
  components: { PictureText }
}
</script>

<template>
  <main>
    <PictureText>
      <h2>BIÈRES</h2>
      <table>
        <thead>
          <th></th>
          <th class="table-right">Prix</th>
        </thead>
        <tbody>
          <tr>
            <td>Triple Karmeliet</td>
            <td class="table-right">5</td>
          </tr>
        </tbody>
      </table>
    </PictureText>
    <PictureText :is_left="false">
      <h2>BIÈRES</h2>
      <table>
        <thead>
          <th></th>
          <th class="table-right">Prix</th>
        </thead>
        <tbody>
          <tr>
            <td>Triple Karmeliet</td>
            <td class="table-right">5</td>
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
