<template>
  <div class="row">
    <div class="col s3">
      <team-selector :teams="teams" @setTeam="setTeam"></team-selector>
    </div>

    <div class="">
      <player-card :players="teamPlayers"></player-card>
    </div>
  </div>
</template>

<script>
import TeamSelector from '@/components/TeamSelector'
import PlayerCard from '@/components/PlayerCard'

export default {
  data () {
    return {
      teams: [
        { id: 1, name: 'Red Devils', town: 'Morges St-Prex', photo: 'static/teams/reddevils.png' },
        { id: 2, name: 'BBC', town: 'Nyon', photo: 'static/teams/reddevils.png' },
        { id: 3, name: 'BBC', town: 'Lausanne', photo: 'static/teams/reddevils.png' },
        { id: 4, name: 'Red Devils', town: 'Morges St-Prex', photo: 'static/teams/reddevils.png' },
        { id: 5, name: 'Red Devils', town: 'Morges St-Prex', photo: 'static/teams/reddevils.png' },
        { id: 6, name: 'Red Devils', town: 'Morges St-Prex', photo: 'static/teams/reddevils.png' }
      ],
      teamPlayers: [
        { id: 1, name: 'Nicolas', familyName: 'Morges St-Prex', photo: 'static/players/default.png' },
        { id: 2, name: 'Alec', familyName: 'Bugnon', photo: 'static/players/default.png' },
        { id: 3, name: 'David', familyName: 'Amstuz', photo: 'static/players/default.png' },
        { id: 4, name: 'Nicolas', familyName: 'Morges St-Prex', photo: 'static/players/default.png' },
        { id: 5, name: 'Nicolas', familyName: 'Morges St-Prex', photo: 'static/players/default.png' }
      ],
      selectedTeam: ''
    }
  },
  methods: {
    setTeam (team) {
      this.selectedTeam = team.name
    }
  },
  components: {
    TeamSelector,
    PlayerCard
  }
}
</script>

<style>

</style>
