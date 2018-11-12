<template>
  <b-form>
    <!-- REQUISITOS DO EVENTO -->
    <div class="event_block my-4">
      <b-row>
        <b-col lg="12" md="12" sm="12">
          <b-form-group label="Requisitos do evento:">
            <multiselect v-model="value" :options="options" :multiple="true" group-values="libs" group-label="language" :group-select="true" placeholder="Procure e adicione tags" track-by="name" label="name" :close-on-select="false"><span slot="noResult">Desculpa, nenhum requisito encontrado, procure de outra forma.</span></multiselect>
          </b-form-group>
        </b-col>
      </b-row>
    </div>
    <!-- FIM DEFINIÇÕES DO EVENTO -->
  </b-form>
</template>

<script>
import Multiselect from 'vue-multiselect'

export default {
  components: {
    Multiselect
  },
  data () {
    return {
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
      ],
      value: []
    }
  }
}
</script>

<style src="vue-multiselect/dist/vue-multiselect.min.css"></style>
