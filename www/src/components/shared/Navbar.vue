<template>
  <nav>
    <div class="nav-wrapper">
      <a @click="setSelectedPage('home')" class="brand-logo"><img src="static/logo.png"/></a>
      <ul class="right">
        <li>
          <a @click="setSelectedPage('teams')">Équipes</a>
        </li>
        <li>
          <a @click="setSelectedPage('players')">Joueurs</a> <!-- <i class="material-icons">assignment_ind</i> -->
        </li>
        <li>
          <a @click="setSelectedPage('games')">Matchs</a>
        </li>
        <li>
          <a @click="setSelectedPage('admin')"><i class="material-icons">lock</i></a>
        </li>
      </ul>
    </div>
  </nav>
</template>

<script>
export default {
  name: 'navbar',
  methods: {
    setSelectedPage (page) {
      this.$emit('page', page)
    }
  }
}
</script>

<style scoped>
.nav-wrapper {
  background-color: #dd3333;
}

img {
  width: 60px;
}
</style>
