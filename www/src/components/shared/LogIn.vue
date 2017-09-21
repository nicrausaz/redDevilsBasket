<template>
  <div class="card">
    <div class="card-content">
      <div class="input-field col s6">
        <input id="username" type="text" class="validate">
        <label for="username">Nom de compte</label>
      </div>
      <div class="input-field col s6">
        <input id="password" type="text" class="validate">
        <label for="password">Mot de passe</label>
      </div>
    </div>
    <div class="card-action">
      <a class="waves-effect waves-light btn"><i class="material-icons left">login</i>Connexion</a>
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {

    }
  }
}
</script>

<style>
.card {
  width: 400px;
}
</style>
