<template>
  <b-form>
    <!-- INGRESSO DO EVENTO -->
    <div class="event_block my-4" id="ticket">
      <b-row>
        <b-col>
          <b-form-group label="Tipo de ingresso:" label-for="event_ticket">
            <b-form-input v-model="form.event_ticket" id="event_ticket" type="text"  placeholder="Meia-entrada, VIP, etc." required></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Preço do ingresso:" label-for="event_ticket_price">
            <b-form-input v-model="form.event_ticket_price" id="event_ticket_price" type="number" required></b-form-input>
          </b-form-group>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Quantidade de ingressos:" label-for="event_ticket_amount">
            <b-form-input v-model="form.event_ticket_amount" id="begin_hour_event" type="number" required></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Data inicio da venda:" label-for="date_ticket_sell">
            <b-form-input v-model="form.date_ticket_sell" id="date_ticket_sell" type="date" required></b-form-input>
          </b-form-group>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Horario inicio da venda:" label-for="hour_ticket_sell">
            <b-form-input v-model="form.hour_ticket_sell" id="hour_ticket_sell" type="time" required></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Data fim da venda:" label-for="date_ticket_sell_over">
            <b-form-input v-model="form.date_ticket_sell_over" id="date_ticket_sell_over" type="date" required></b-form-input>
          </b-form-group>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Horario fim da venda:" label-for="hour_ticket_sell_over">
            <b-form-input v-model="form.hour_ticket_sell_over" id="hour_ticket_sell_over" type="time" required></b-form-input>
          </b-form-group>
        </b-col>
      </b-row>
    </div>
    <!-- FIM INGRESSO DO EVENTO -->
  </b-form>
</template>

<script>
export default {
  data () {
    return {
      form: {
        event_ticket: '',
        event_ticket_price: '',
        event_ticket_amount: '',
        date_ticket_sell: '',
        hour_ticket_sell: '',
        date_ticket_sell_over: '',
        hour_ticket_sell_over: ''
      }
    }
  }
}
</script>
