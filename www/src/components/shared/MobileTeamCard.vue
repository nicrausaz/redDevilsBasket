<template>
  <div class="row">
    <div class="col s12 m8 offset-m2 l6 offset-l3 hoverable" v-for="team in teams" :key="team.id">
      <div class="card-panel grey lighten-5 z-depth-1" @click="openInfos(team)">
        <div class="row valign-wrapper">
          <div class="col s2">
            <img :src="team.photo" draggable="false" class="circle responsive-img">
          </div>
          <div class="col s10">
            <span class="black-text">
              <p>{{ team.town + ' ' + team.name }}</p>
            </span>
          </div>
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
