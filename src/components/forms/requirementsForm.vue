<template>
  <b-form>
    <!-- REQUISITOS DO EVENTO -->
    <div class="event_block my-4" style="padding: 2rem 3rem; text-align: left;">
      <b-row>
        <b-col lg="12" md="12" sm="12">
          <b-form-group label="Orçamento inicial do evento:" label-for="event_cash">
            <b-form-input :class="['input', ($v.form.cash.$error) ? 'is-danger' : '']"
                          v-model="form.cash"
                          id="event_cash" type="text"  placeholder="Orçamento do evento">
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.cash.$error" class="help is-danger" style="color: red;">O orçamento é invalido</p>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="12" md="12" sm="12">
          <b-form-group label="Requisitos do evento:">
            <multiselect v-model="form.value" :options="options" :multiple="true"
                        group-values="libs" group-label="language" :group-select="true" placeholder="Procure e adicione tags"
                        track-by="name" label="name" :close-on-select="false">
                        <span slot="noResult">Desculpa, nenhum requisito encontrado, procure de outra forma.</span>
            </multiselect>
          </b-form-group>
        </b-col>
      </b-row>
    </div>
    <!-- FIM DEFINIÇÕES DO EVENTO -->
  </b-form>
</template>

<script>
import { validationMixin } from 'vuelidate'
import { required } from 'vuelidate/lib/validators'

import Multiselect from 'vue-multiselect'

export default {
  components: { Multiselect },
  props: ['clickedNext', 'currentStep'],
  mixins: [validationMixin],
  data () {
    return {
      form: {
        cash: '',
        value: []
      },
      options: [
        {
          language: 'Bebidas',
          libs: [
            { name: 'Refrigerante', category: '1' },
            { name: 'Cerveja', category: '1' },
            { name: 'Agua', category: '1' },
            { name: 'Suco', category: '1' },
            { name: 'Whisky', category: '1' },
            { name: 'Vodka', category: '1' },
            { name: 'Saquê', category: '1' }
          ]
        },
        {
          language: 'Comidas',
          libs: [
            { name: 'Coxinha', category: '2' },
            { name: 'Pastel', category: '2' },
            { name: 'Esfiha', category: '2' },
            { name: 'Pizza', category: '2' },
            { name: 'Bolo de chocolate', category: '2' }
          ]
        }
      ]
    }
  },
  validations: {
    form: {
      cash: {
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

<style src="vue-multiselect/dist/vue-multiselect.min.css"></style>
