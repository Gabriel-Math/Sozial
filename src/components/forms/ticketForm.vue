<template>
  <b-form>
    <!-- INGRESSO DO EVENTO -->
    <div class="event_block my-4" id="ticket" style="padding: 2rem 3rem; text-align: left;">
      <b-row>
        <b-col>
          <b-form-group label="Tipo de ingresso:" label-for="event_ticket">
            <b-form-input :class="['input', ($v.form.event_ticket.$error) ? 'is-danger' : '']"
                          v-model="form.event_ticket" id="event_ticket" type="text"
                          placeholder="Meia-entrada, VIP, etc." required>
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.event_ticket.$error" class="help is-danger" style="color: red;">O ingresso é invalido</p>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Preço do ingresso:" label-for="event_ticket_price">
            <b-form-input :class="['input', ($v.form.event_ticket_price.$error) ? 'is-danger' : '']"
                          v-model="form.event_ticket_price" id="event_ticket_price"
                          type="number" required>
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.event_ticket_price.$error" class="help is-danger" style="color: red;">O preço é invalido</p>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Quantidade de ingressos:" label-for="event_ticket_amount">
            <b-form-input :class="['input', ($v.form.event_ticket_amount.$error) ? 'is-danger' : '']"
                          v-model="form.event_ticket_amount"
                          id="begin_hour_event" type="number" required>
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.event_ticket_amount.$error" class="help is-danger" style="color: red;">A quantidade é invalida</p>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Data inicio da venda:" label-for="date_ticket_sell">
            <b-form-input :class="['input', ($v.form.date_ticket_sell.$error) ? 'is-danger' : '']"
                          v-model="form.date_ticket_sell" id="date_ticket_sell"
                          type="date" required>
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.date_ticket_sell.$error" class="help is-danger" style="color: red;">A data do inicio da venda é invalida</p>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Horario inicio da venda:" label-for="hour_ticket_sell">
            <b-form-input :class="['input', ($v.form.hour_ticket_sell.$error) ? 'is-danger' : '']"
                          v-model="form.hour_ticket_sell" id="hour_ticket_sell"
                          type="time" required>
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.hour_ticket_sell.$error" class="help is-danger" style="color: red;">A hora do inicio da venda é invalida</p>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Data fim da venda:" label-for="date_ticket_sell_over">
            <b-form-input :class="['input', ($v.form.date_ticket_sell_over.$error) ? 'is-danger' : '']"
                          v-model="form.date_ticket_sell_over" id="date_ticket_sell_over"
                          type="date" required>
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.date_ticket_sell_over.$error" class="help is-danger" style="color: red;">A data do fim da venda é invalida</p>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Horario fim da venda:" label-for="hour_ticket_sell_over">
            <b-form-input :class="['input', ($v.form.hour_ticket_sell_over.$error) ? 'is-danger' : '']"
                          v-model="form.hour_ticket_sell_over" id="hour_ticket_sell_over"
                          type="time" required>
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.hour_ticket_sell_over.$error" class="help is-danger" style="color: red;">A hora do fim da venda é invalida</p>
        </b-col>
      </b-row>
    </div>
    <!-- FIM INGRESSO DO EVENTO -->
  </b-form>
</template>

<script>
import { validationMixin } from 'vuelidate'
import { required } from 'vuelidate/lib/validators'

export default {
  props: ['clickedNext', 'currentStep'],
  mixins: [validationMixin],
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
  },
  validations: {
    form: {
      event_ticket: {
        required
      },
      event_ticket_price: {
        required
      },
      event_ticket_amount: {
        required
      },
      date_ticket_sell: {
        required
      },
      hour_ticket_sell: {
        required
      },
      date_ticket_sell_over: {
        required
      },
      hour_ticket_sell_over: {
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
