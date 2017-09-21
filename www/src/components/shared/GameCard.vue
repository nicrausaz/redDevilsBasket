<template>
  <div id="gamecard">
    <li class="collection-item avatar" v-for="game in games" :key="game.id">
      <img src="static/logo.png" alt="" class="circle">
      <span class="title"></span>
      <p>{{ game.team1 }} vs {{ game.team2 }}</p>
      <a href="#!" class="secondary-content">
        <img src="static/logo.png" class="circle awayPic">
      </a>
    </li>
  </div>
</template>

<script>
export default {
  props: ['games']
}
</script>

<style>

</style>
