<template>
  <ul class="collection with-header">
    <li class="collection-header">
      <b>Choisir une équipe</b>
    </li>
    <li class="collection-item" v-for="team in teams" :key="team.id">
      <div>{{ team.name }}
        <a class="secondary-content">
          <i class="material-icons "@click="selectTeam(team)">people</i>
        </a>
      </div>
    </li>
  </ul>
</template>

<script>
export default {
  props: ['teams'],
  methods: {
    selectTeam (team) {
      this.$emit('setTeam', team)
    }
  }
}
</script>

<style>

</style>
