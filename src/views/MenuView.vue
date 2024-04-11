<script>
import PictureText from '../components/PictureText.vue'

export default {
  components: { PictureText }
}
</script>

<template>
  <main>
    <PictureText>
      <h2>Bières</h2>
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

    <PictureText>
      <h2>Bières pressions</h2>
      <table>
        <thead>
          <th></th>
          <th>Prix</th>
        </thead>
        <tbody>
          <tr>
            <td>Heineken</td>
            <td>5</td>
          </tr>
        </tbody>
      </table>
    </PictureText>
  </main>
</template>

<style></style>
