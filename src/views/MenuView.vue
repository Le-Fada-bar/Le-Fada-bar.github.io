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
          <th>Prix</th>
        </thead>
        <tbody>
          <tr>
            <td>Triple Karmeliet</td>
            <td>5</td>
          </tr>
        </tbody>
      </table>
    </PictureText>
    <PictureText :is_left="false">
      <h2>BIÈRES</h2>
      <table>
        <thead>
          <th></th>
          <th>Prix</th>
        </thead>
        <tbody>
          <tr>
            <td>Triple Karmeliet</td>
            <td>5</td>
          </tr>
        </tbody>
      </table>
    </PictureText>
  </main>
</template>

<style></style>
