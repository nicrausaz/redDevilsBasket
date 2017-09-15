<template>
  <div id="admin">
    {{ isConnected }}
  </div>
</template>

<script>
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
  }
}
</script>

<style>

</style>
