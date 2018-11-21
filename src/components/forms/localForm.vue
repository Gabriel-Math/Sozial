<template>
  <b-form>
    <!-- LOCALIZAÇÃO DO EVENTO -->
    <div class="event_block my-4" style="padding: 2rem 3rem; text-align: left;">
      <b-row>
        <b-col>
          <b-form-group label="Local do evento:" label-for="event_location">
            <b-form-input :class="['input', ($v.form.place.$error) ? 'is-danger' : '']"
                          v-model="form.place"
                          id="event_location"  placeholder="Local do evento">
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.place.$error" class="help is-danger" style="color: red;">O local é invalido</p>
        </b-col>
      </b-row>
      <b-row>
        <b-col>
          <b-form-group label="CEP:" label-for="event_cep">
            <b-form-input :class="['input', ($v.form.cep.$error) ? 'is-danger' : '']"
                          maxlength="8" type="text"
                          v-model="form.cep" @keyup.native="searchCep()"
                          id="event_cep" placeholder="CEP do local">
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.cep.$error" class="help is-danger" style="color: red;">O CEP não é invalido</p>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="8" md="12" sm="12">
          <b-form-group label="Logradouro:" label-for="event_street">
            <b-form-input v-model="endereco.logradouro"
                          id="event_street" type="text"  placeholder="Rua ou Avenida">
            </b-form-input>
          </b-form-group>
        </b-col>
        <b-col lg="4" md="12" sm="12">
          <b-form-group label="Numero:" label-for="event_street_number">
            <b-form-input v-model="endereco.numero"
                          id="event_street_number" type="number" placeholder="Numero">
            </b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col>
          <b-form-group label="Bairro:" label-for="event_neighbour">
            <b-form-input v-model="endereco.bairro"
                          id="event_beighbour" type="text"  placeholder="Bairro">
            </b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Cidade:" label-for="event_city">
            <b-form-input v-model="endereco.localidade"
                          id="event_city" type="text"  placeholder="Cidade">
            </b-form-input>
          </b-form-group>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Estado:" label-for="event_state">
            <b-form-input v-model="endereco.uf"
                          id="event_state" type="text"  placeholder="Estado">
            </b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
    </div>
    <!-- FIM LOCALIZAÇÃO DO EVENTO -->
  </b-form>
</template>

<script>
import { validationMixin } from 'vuelidate'
import { required } from 'vuelidate/lib/validators'

import axios from 'axios'

export default {
  props: ['clickedNext', 'currentStep'],
  mixins: [validationMixin],
  data () {
    return {
      form: {
        place: '',
        cep: ''
      },
      endereco: []
    }
  },
  methods: {
    searchCep () {
      if (this.form.cep.length === 8) {
        axios
          .get(`https://viacep.com.br/ws/${this.form.cep}/json/`)
          .then(response => (this.endereco = response.data))
      }
    }
  },
  validations: {
    form: {
      place: {
        required
      },
      cep: {
        required
      }
    }
  },
  watch: {
    $v: {
      handler: function (val) {
        if (!val.$invalid) {
          this.$emit('can-continue', { value: true })
        } else {
          this.$emit('can-continue', { value: false })
        }
      },
      deep: true
    },
    clickedNext (val) {
      if (val === true) {
        this.$v.form.$touch()
      }
    }
  },
  mounted () {
    if (!this.$v.$invalid) {
      this.$emit('can-continue', { value: true })
    } else {
      this.$emit('can-continue', { value: false })
    }
  }
}
</script>
