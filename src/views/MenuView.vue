<script>
import PictureText from '../components/PictureText.vue'

export default {
  components: { PictureText }
}
</script>

<template>
  <main>
    <PictureText v-for="(submenu, index) in this.$root.dashboard.menu" :is_left="index % 2 == 0">
      <h2>{{ submenu.category }}</h2>
      <table>
        <thead>
          <th class="table-right" v-for="header in submenu.header">{{ header }}</th>
        </thead>
        <tbody>
          <tr v-for="content in submenu.content">
            <td v-for="(cell, id) in content" :class="{ 'table-right': id != 0 }">{{ cell }}</td>
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
