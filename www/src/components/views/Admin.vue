<template>
  <div id="admin">
    <div v-if="!isConnected">
      <log-in></log-in>
    </div>
    <div v-else>Connected</div>
  </div>
</template>

<script>
import LogIn from '@/components/shared/LogIn'
export default {
  data () {
    return {
      connectedUser: {
        name: '',
        isSuperAdmin: false
      }
    }
  },
  computed: {
    isConnected () {
      return this.connectedUser.name !== ''
    }
  },
  components: {
    LogIn
  }
}
</script>

<style>

</style>
