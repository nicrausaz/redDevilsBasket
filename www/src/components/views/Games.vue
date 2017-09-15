<template>
  <ul class="collection">
    <li class="collection-item avatar" v-for="game in games" :key="game.id">
      <img src="static/logo.png" alt="" class="circle">
      
      <span class="title"></span>
      <p>{{ game.team1 }} vs {{ game.team2 }}</p>
      <a href="#!" class="secondary-content">
        <img src="static/logo.png" alt="" class="circle">
      </a>
    </li>
  </ul>
</template>

<script>
export default {
  data () {
    return {
      games: [
        {id: 1, team1: 'RDB', team2: 'nyon', date: '02/02/2018'},
        {id: 2, team1: 'RDB', team2: 'nyon', date: '02/02/2018'},
        {id: 3, team1: 'RDB', team2: 'nyon', date: '02/02/2018'}
      ]
    }
  }
}
</script>

<style>

</style>
