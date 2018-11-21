<template>
  <section class="product_form">
    <b-container>
      <b-row class="justify-content-md-center">
        <!-- FORMULARIO DO EVENTO -->
        <b-col lg="12" md="12" sm="12">
            <horizontal-stepper :steps="demoSteps" locale="pt" @completed-step="completeStep" @active-step="isStepActive" @stepper-finished="alert">
            </horizontal-stepper>
        </b-col>
        <!-- FORMULARIO DO EVENTO -->
      </b-row>
    </b-container>
  </section>
</template>

<script>
import HorizontalStepper from 'vue-stepper'

import StepOne from './forms/infoForm.vue'
import StepTwo from './forms/localForm.vue'
import StepThree from './forms/ticketForm.vue'
import StepFour from './forms/definitionForm.vue'
import StepFive from './forms/requirementsForm.vue'
import StepSix from './forms/abstractForm.vue'

export default {
  components: {
    HorizontalStepper
  },
  data () {
    return {
      demoSteps: [
        {
          icon: 'build',
          name: 'Informações',
          title: 'Informações',
          subtitle: 'Informações do evento',
          component: StepOne,
          completed: false
        },
        {
          icon: 'add_location',
          name: 'Localização',
          title: 'Localização',
          subtitle: 'Local do evento',
          component: StepTwo,
          completed: false
        },
        {
          icon: 'star',
          name: 'Ingresso',
          title: 'Ingresso',
          subtitle: 'Ingressos do evento',
          component: StepThree,
          completed: false
        },
        {
          icon: 'done',
          name: 'Definições',
          title: 'Definições',
          subtitle: 'Definições do evento',
          component: StepFour,
          completed: false
        },
        {
          icon: 'free_breakfast',
          name: 'Requisitos',
          title: 'Requisitos',
          subtitle: 'Requisitos do evento',
          component: StepFive,
          completed: false
        },
        {
          icon: 'free_breakfast',
          name: 'Resumo',
          title: 'Resumo',
          subtitle: 'Resumo do evento',
          component: StepSix,
          completed: false
        }
      ]
    }
  },
  methods: {
    // Executed when @completed-step event is triggered
    completeStep (payload) {
      this.demoSteps.forEach(step => {
        if (step.name === payload.name) {
          step.completed = true
        }
      })
    },
    // Executed when @active-step event is triggered
    isStepActive (payload) {
      this.demoSteps.forEach(step => {
        if (step.name === payload.name) {
          if (step.completed === true) {
            step.completed = false
          }
        }
      })
    },
    // Executed when @stepper-finished event is triggered
    alert (payload) {
      alert('Aguarde alguns momentos...')
    }
  }
}
</script>

<style>
    label {
      color: black;
    }
    p {
      color: black;
    }
</style>
