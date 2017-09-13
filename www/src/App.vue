<template>
  <div id="app">
    <Navbar @page="setSelectedPage"></Navbar>
    <div class="content">
      <teams v-if="selectedPage == 'teams'"></teams>
      <players v-if="selectedPage == 'players'"></players>
    </div>
    <foot></foot>
  </div>
</template>

<script>
import Navbar from './components/Navbar'
import Teams from './components/Teams'
import Foot from './components/Foot'
import Players from './components/Players'

export default {
  name: 'app',
  data () {
    return {
      selectedPage: 'home'
    }
  },
  methods: {
    setSelectedPage (page) {
      this.selectedPage = page
    }
  },
  components: {
    Navbar,
    Teams,
    Players,
    Foot
  }
}
</script>

<style scoped>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
.content {
  padding: 25px;
}
</style>
