<template>
  <header class="product_header">
    <b-navbar toggleable="md">
      <b-navbar-brand tag="h6" class="mb-0"><router-link style="text-decoration: none; color: black;" to="/"><span style="color:#0099FF">SOZIAL</span> EVENTS</router-link></b-navbar-brand>
        <b-navbar-nav class="ml-auto">
          <b-navbar-nav right>
            <b-nav-item><router-link style="text-decoration: none;" to="/event">CONSULTAR</router-link></b-nav-item>
          </b-navbar-nav>
        </b-navbar-nav>
    </b-navbar>
  </header>
</template>

<script>
export default {
  name: 'MyHeader'
}
</script>
