<template>
  <b-form>
    <!-- DEFINIÇÕES DO EVENTO -->
    <div class="event_block my-4" style="padding: 2rem 3rem; text-align: left;">
      <b-row>
        <b-col lg="6" md="12" sm="12">
          <b-form-group label="Categoria(as) do evento:" label-for="event_category">
            <b-form-checkbox-group :class="['checkbox', ($v.form.selectedCategory.$error) ? 'is-danger' : '']"
                                    v-model="form.selectedCategory" :options="event_category"
                                    stacked id="event_category">
            </b-form-checkbox-group>
          </b-form-group>
          <p v-if="$v.form.selectedCategory.$error" class="help is-danger" style="color: red;">A categoria é invalida</p>
        </b-col>
      </b-row>
      <b-row lg="6" md="12" sm="12">
        <b-col>
          <b-form-group label="Tipo de evento:" label-for="event_type">
            <b-form-radio-group :class="['radio', ($v.form.selectedCategory.$error) ? 'is-danger' : '']"
                                v-model="form.selectedType" :options="event_type"
                                id="event_type" name="event_type">
            </b-form-radio-group>
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

export default {
  props: ['clickedNext', 'currentStep'],
  mixins: [validationMixin],
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
  },
  validations: {
    form: {
      selectedCategory: {
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
