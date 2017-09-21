<template>
  <ul class="collection">
    <game-card :games="games"></game-card>
  </ul>
</template>

<script>
import GameCard from '@/components/shared/GameCard'

export default {
  data () {
    return {
      games: [
        { id: 1, team1: 'RDB', team2: 'nyon', date: '02/02/2018' },
        { id: 2, team1: 'RDB', team2: 'nyon', date: '02/02/2018' },
        { id: 3, team1: 'RDB', team2: 'nyon', date: '02/02/2018' }
      ]
    }
  },
  components: {
    GameCard
  }
}
</script>

<style>

</style>
