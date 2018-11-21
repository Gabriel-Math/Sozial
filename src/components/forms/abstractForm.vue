<template>
    <b-form>
      <div class="event_block my-4" style="padding: 2rem 3rem; text-align: left;">
        <!-- RESUMO DO EVENTO -->
        <b-col md="12">
          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h2" style="color: black;">TESTE EVENTO</p>
            </b-col>
          </b-row>
          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5">Informações</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Data de inicio: TESTE às TESTE</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Data do fim: TESTE às TESTE</p>
            </b-col>
          </b-row>

          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5">Localização</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Local: TESTE</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Rua/Avenida: TESTE,TESTE</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Cidade: TESTE-TESTE</p>
            </b-col>
          </b-row>

          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5">Ingresso(s)</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Preço do ingresso: TESTE</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Data de inicio: TESTE às TESTE</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Data do fim: TESTE às TESTE</p>
            </b-col>
          </b-row>

          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5">Programação</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> TESTE</p>
            </b-col>
          </b-row>

          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5">Resultado dos requisitos:</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> AQUI FICARÁ O RESULTADO DA ANALISE DOS REQUISITOS </p>
            </b-col>
          </b-row>

        </b-col>
        <!-- RESUMO DO EVENTO -->
      </div>
    </b-form>
</template>

<script>
import infoForm from './infoForm.vue'
import localForm from './localForm.vue'
import ticketForm from './ticketForm.vue'
import definitionForm from './definitionForm.vue'
import requirementsForm from './requirementsForm.vue'
import abstractForm from './abstractForm.vue'

export default {
  components: {
    infoForm,
    localForm,
    ticketForm,
    definitionForm,
    requirementsForm,
    abstractForm
  }
}
</script>
