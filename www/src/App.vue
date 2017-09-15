<template>
  <div id="app">
    <Navbar @page="setSelectedPage"></Navbar>
    <div class="content">
      <teams v-if="selectedPage == 'teams'"></teams>
      <players v-if="selectedPage == 'players'"></players>
      <games v-if="selectedPage == 'games'"></games>      
    </div>
    <!-- <foot></foot> -->
  </div>
</template>

<script>
import Navbar from './components/shared/Navbar'
import Teams from './components/views/Teams'
import Foot from './components/shared/Foot'
import Players from './components/views/Players'
import Games from './components/views/Games'

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
    Games,
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
