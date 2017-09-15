<template>
  <div id="teams">
    <mobile-team-card v-if="isMobile" :teams="teams"></mobile-team-card>
    <team-card v-else :teams="teams"></team-card>
  </div>
</template>

<script>
import mobileTeamCard from '@/components/shared/MobileTeamCard'
import TeamCard from '@/components/shared/TeamCard'

export default {
  data () {
    return {
      title: 'Équipes',
      teams: [
        { id: 1, name: 'Red Devils', town: 'Morges St-Prex', photo: 'static/teams/reddevils.png' },
        { id: 2, name: 'BBC', town: 'Nyon', photo: 'static/teams/reddevils.png' },
        { id: 3, name: 'BBC', town: 'Lausanne', photo: 'static/teams/reddevils.png' },
        { id: 4, name: 'Red Devils', town: 'Morges St-Prex', photo: 'static/teams/reddevils.png' },
        { id: 5, name: 'Red Devils', town: 'Morges St-Prex', photo: 'static/teams/reddevils.png' },
        { id: 6, name: 'Red Devils', town: 'Morges St-Prex', photo: 'static/teams/reddevils.png' }
      ]
    }
  },
  computed: {
    isMobile () {
      return window.innerWidth < 600
    }
  },
  components: {
    mobileTeamCard,
    TeamCard
  }
}
</script>

<style scoped>

</style>
