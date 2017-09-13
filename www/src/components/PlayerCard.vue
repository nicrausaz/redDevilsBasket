<template>
  <div class="col s2">
    <div class="card horizontal hoverable" v-for="player in players" :key="player.id">
      <div class="card-image">
        <img :src="player.photo">
      </div>
      <div class="card-stacked">
        <div class="card-content">
          <p>{{ player.name }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ['players'],
  data () {
    return {
    }
  }
}
</script>

<style>

</style>
