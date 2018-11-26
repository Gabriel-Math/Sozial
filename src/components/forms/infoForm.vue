<template>
  <b-form>
    <!-- INFORMAÇÕES DO EVENTO -->
    <div class="event_block my-4" style="padding: 2rem 3rem; text-align: left;">
      <b-row>
        <b-col>
          <b-form-group label="Nome do evento:" label-for="event_name">
            <b-form-input :class="['input', ($v.form.event_name.$error) ? 'is-danger' : '']"
                          v-model="form.event_name" @keyup.native="infoSave()" id="event_name" type="text"
                          placeholder="Nome do evento">
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.event_name.$error" class="help is-danger" style="color: red;">O nome do evento é invalido</p>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Data inicio do evento:" label-for="begin_date_event">
            <b-form-input :class="['input', ($v.form.begin_date_event.$error) ? 'is-danger' : '']"
                          v-model="form.begin_date_event" @keyup.native="infoSave()"
                          id="begin_date_event" type="date">
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.begin_date_event.$error" class="help is-danger" style="color: red;">A data do inicio do evento é invalida</p>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Horario inicio:" label-for="begin_hour_event">
            <b-form-input :class="['input', ($v.form.begin_hour_event.$error) ? 'is-danger' : '']"
                          v-model="form.begin_hour_event" @keyup.native="infoSave()"
                          id="begin_hour_event" type="time">
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.begin_hour_event.$error" class="help is-danger" style="color: red;">O horario do inicio do evento é invalido</p>
        </b-col>
      </b-row>
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Data fim do evento:" label-for="end_date_event">
            <b-form-input :class="['input', ($v.form.end_date_event.$error) ? 'is-danger' : '']"
                          v-model="form.end_date_event" @keyup.native="infoSave()"
                          id="end_date_event" type="date">
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.end_date_event.$error" class="help is-danger" style="color: red;">A data do fim do evento é invalida</p>
        </b-col>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Horario fim:" label-for="end_hour_event">
            <b-form-input :class="['input', ($v.form.end_hour_event.$error) ? 'is-danger' : '']"
                          v-model="form.end_hour_event" @keyup.native="infoSave()"
                          id="end_hour_event" type="time">
            </b-form-input>
          </b-form-group>
          <p v-if="$v.form.end_hour_event.$error" class="help is-danger" style="color: red;">O horario do fim do evento é invalido</p>
        </b-col>
      </b-row>
      <b-row>
        <b-col>
          <b-form-group label="Programação do evento:" label-for="event_program">
            <b-form-textarea :class="['textarea', ($v.form.event_program.$error) ? 'is-danger' : '']"
                              v-model="form.event_program" @keyup.native="infoSave()"
                              id="event_program" placeholder="Programação do seu evento"
                              :rows="3">
            </b-form-textarea>
          </b-form-group>
          <p v-if="$v.form.event_program.$error" class="help is-danger" style="color: red;">A programação do evento é invalida</p>
        </b-col>
      </b-row>
    </div>
    <!-- FIM INFORMAÇÕES DO EVENTO -->
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
        event_name: '',
        begin_date_event: '',
        begin_hour_event: '',
        end_date_event: '',
        end_hour_event: '',
        event_program: ''
      }
    }
  },
  validations: {
    form: {
      event_name: {
        required
      },
      begin_date_event: {
        required
      },
      begin_hour_event: {
        required
      },
      end_date_event: {
        required
      },
      end_hour_event: {
        required
      },
      event_program: {
        required
      }
    }
  },
  methods: {
    infoSave () {
      localStorage.name = this.form.event_name
      localStorage.bdate = this.form.begin_date_event
      localStorage.bhour = this.form.begin_hour_event
      localStorage.edate = this.form.end_date_event
      localStorage.ehour = this.form.end_hour_event
      localStorage.program = this.form.event_program
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
