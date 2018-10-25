<template>
  <b-form>
    <!-- DEFINIÇÕES DO EVENTO -->
    <div class="event_block my-4">
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Categoria(as) do evento:" label-for="event_category">
            <b-form-checkbox-group v-model="form.selectedCategory" :options="event_category" stacked id="event_category">
            </b-form-checkbox-group>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row lg="6" md="12" sm="12">
        <b-col>
          <b-form-group label="Tipo de evento:" label-for="event_type">
            <b-form-radio-group v-model="form.selectedType" :options="event_type" id="event_type" name="event_type">
            </b-form-radio-group>
          </b-form-group>
        </b-col>
      </b-row>
    </div>
    <!-- FIM DEFINIÇÕES DO EVENTO -->
  </b-form>
</template>

<script>
export default {
  data () {
    return {
      form: {
        selectedCategory: [],
        selectedType: 'public'
      },
      event_category: [
        { text: 'Congresso, seminario', value: '1' },
        { text: 'Curso, workshop', value: '2' },
        { text: 'E-Sports', value: '3' },
        { text: 'Encontro, networking', value: '4' },
        { text: 'Esportivo', value: '5' },
        { text: 'Feira, exposição', value: '6' },
        { text: 'Filme, cinema e teatro', value: '7' },
        { text: 'Gastronômico', value: '8' },
        { text: 'Show, música e festa', value: '9' },
        { text: 'Outra categoria', value: '10' }
      ],
      event_type: [
        { text: 'Publico', value: 'public' },
        { text: 'Privado', value: 'private' }
      ]
    }
  }
}
</script>
