<template>
  <b-form>
    <!-- REQUISITOS DO EVENTO -->
    <div class="event_block my-4">
      <b-row>
        <b-col md="12">
          <b-form-group label="Tipo de serviço de Buffet:" label-for="buffet_service">
            <b-form-select v-model="form.selectedService" :options="event_service" id="buffet_service" />
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Bebida(s) alcoolica(s):" label-for="buffet_alcohol">
            <b-form-select v-model="form.selectedAlcohol" :options="event_alcohol_drinks" id="buffet_alcohol" />
          </b-form-group>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="bebida(s) não alcoolica(s):" label-for="buffet_noalcohol">
            <b-form-select v-model="form.selectedNonalcohol" :options="event_nonalcohol_drinks" id="buffet_noalcohol" />
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col md="12">
          <b-form-group label="Entrada:" label-for="buffet_start">
            <b-form-select v-model="form.selectedStart" :options="event_start" id="buffet_start" />
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col md="12">
          <b-form-group label="Saladas:" label-for="buffet_green">
            <b-form-select v-model="form.selectedGreen" :options="event_green" id="buffet_green" />
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col md="12">
          <b-form-group label="Pratos principais:" label-for="buffet_principal">
            <b-form-select v-model="form.selectedPrincipal" :options="event_principal" id="buffet_principal" />
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

    }
  }
}
</script>
