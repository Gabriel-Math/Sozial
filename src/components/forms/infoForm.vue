<template>
  <b-form>
    <!-- INFORMAÇÕES DO EVENTO -->
    <div class="event_block my-4">
      <b-row>
        <b-col>
          <b-form-group label="Nome do evento:" label-for="event_name">
            <b-form-input  v-model="form.event_name" id="event_name" type="text"  placeholder="Nome do evento"></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Data inicio do evento:" label-for="begin_date_event">
            <b-form-input v-model="form.begin_date_event" id="begin_date_event" type="date"></b-form-input>
          </b-form-group>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Horario inicio:" label-for="begin_hour_event">
            <b-form-input v-model="form.begin_hour_event" id="begin_hour_event" type="time"></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Data fim do evento:" label-for="end_date_event">
            <b-form-input v-model="form.end_date_event" id="end_date_event" type="date"></b-form-input>
          </b-form-group>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Horario fim:" label-for="end_hour_event">
            <b-form-input v-model="form.end_hour_event" id="end_hour_event" type="time"></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col>
          <b-form-group label="Programação do evento:" label-for="event_program">
            <b-form-textarea v-model="form.event_program" id="event_program" placeholder="Programação do seu evento" :rows="3"></b-form-textarea>
          </b-form-group>
        </b-col>
      </b-row>
    </div>
    <!-- FIM INFORMAÇÕES DO EVENTO -->
  </b-form>
</template>

<script>
export default {
  data () {
    return {
      form: {
        event_name: '',
        begin_date_event: '',
        begin_hour_event: '',
        end_date_event: '',
        end_hour_event: '',
        event_program: ''
      }
    }
  }
}
</script>
