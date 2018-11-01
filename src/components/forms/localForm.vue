<template>
  <b-form>
    <!-- LOCALIZAÇÃO DO EVENTO -->
    <div class="event_block my-4">
      <b-row>
        <b-col>
          <b-form-group label="Local do evento:" label-for="event_location">
            <b-form-input v-model="place" id="event_location"  placeholder="Local do evento"></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col>
          <b-form-group label="CEP:" label-for="event_cep">
            <b-form-input maxlength="8" type="text" v-model="cep" @keyup.native="searchCep()" id="event_cep" placeholder="CEP do local"></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="8" md="12" sm="12">
          <b-form-group label="Logradouro:" label-for="event_street">
            <b-form-input v-model="endereco.logradouro" id="event_cep" type="text"  placeholder="Rua ou Avenida"></b-form-input>
          </b-form-group>
        </b-col>
        <b-col lg="4" md="12" sm="12">
          <b-form-group label="Numero:" label-for="event_street_number">
            <b-form-input v-model="endereco.numero" id="event_street_number" type="number"  placeholder="Numero"></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col>
          <b-form-group label="Bairro:" label-for="event_neighbour">
            <b-form-input v-model="endereco.bairro" id="event_beighbour" type="text"  placeholder="Bairro"></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Cidade:" label-for="event_city">
            <b-form-input v-model="endereco.localidade" id="event_city" type="text"  placeholder="Cidade"></b-form-input>
          </b-form-group>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Estado:" label-for="event_state">
            <b-form-input v-model="endereco.uf" id="event_state" type="text"  placeholder="Estado"></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
    </div>
    <!-- FIM LOCALIZAÇÃO DO EVENTO -->
  </b-form>
</template>

<script>
import axios from 'axios'

export default {
  data() {
    return{
      cep: '',
      endereco: []
    }
  },
  methods: {
    searchCep () {
      if (this.cep.length === 8) {
        axios.get(`https://viacep.com.br/ws/${this.cep}/json/`).then(response => (this.endereco = response.data))
      }
    }
  }
}
</script>
