<template>
  <footer class="page-footer">
    <div class="footer-copyright">
      <div class="container">
        {{text}}
      </div>
    </div>
  </footer>
</template>

<script>
export default {
  data () {
    return {
      text: 'RDC footer'
    }
  }
}
</script>

<style scoped>
.page-footer {
  background-color: #dd3333;
}
</style>
