<template>
<div id="app">
  <MyHeader></MyHeader>
  <router-view></router-view>
  <MyFooter></MyFooter>
</div>
</template>

<script>
import MyHeader from '@/components/Header'
import MyFooter from '@/components/Footer'

export default {
  name: 'App',
  components: {
    MyHeader,
    MyFooter
  }
}
</script>

<style>
@import "https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css";
@import "https://code.jquery.com/jquery-3.3.1.slim.min.js";
@import "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js";
@import "https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js";
@import "https://fonts.googleapis.com/css?family=Montserrat";
@import "./styles/style.css";
</style>
