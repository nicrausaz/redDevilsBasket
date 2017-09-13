<template>
  <div class="col s2 m2">
    <div class="card horizontal" v-for="player in players" :key="player.id">
      <div class="card-image">
        <img src="static/logo.png">
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
