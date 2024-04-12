<script>
import PictureText from '../components/PictureText.vue'

export default {
  components: { PictureText }
}
</script>

<template>
  <main>
    <PictureText>
      <div class="carousel">
        <h2>&lt;</h2>
        <h2>BIÈRES</h2>
        <h2>&gt;</h2>
      </div>
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

<style>
.carousel{
  width: 95%;
  display: flex;
  justify-content: space-between;
}
</style>
