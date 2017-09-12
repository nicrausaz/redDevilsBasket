<template>
  <div class="row">
    <div class="col s3" v-for="team in teams" :key="team.id">
      <div class="card card-panel hoverable" @click="openInfos(team)">
        <div class="card-image">
          <img :src="team.photo" draggable="false">
        </div>
        <div class="card-content">
          <p>{{ team.town + ' ' + team.name }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ['teams'],
  methods: {
    openInfos (team) {
      console.log(team)
    }
  }
}
</script>

<style>

</style>
