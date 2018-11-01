<template>
  <section class="product_form">
    <b-container>
      <b-row class="justify-content-md-center">
        <!-- FORMULARIO DO EVENTO -->
        <b-col md="8">
          <b-row>
            <form-wizard
                        title="Monte seu evento"
                        subtitle=""
                        shape="circle"
                        back-button-text="Voltar"
                        next-button-text="Avançar"
                        step-size="xs"
                        finish-button-text="Concluir"
                        color="black"
                        error-color="#a94442"
                        @on-complete="onComplete">

              <b-row>
                <b-col>
                  <tab-content title="Requisitos do evento" :before-change="validateRequisite">
                    <requirements-form></requirements-form>
                  </tab-content>
                </b-col>
              </b-row>
              <b-row>
                <b-col>
                  <tab-content title="Informações do evento" :before-change="validateInfo">
                    <info-form></info-form>
                  </tab-content>
                </b-col>
              </b-row>
              <b-row>
                <b-col>
                  <tab-content title="Localização do evento" :before-change="validateLocation">
                    <local-form></local-form>
                  </tab-content>
                </b-col>
              </b-row>
              <b-row>
                <b-col>
                  <tab-content title="Ingressos" :before-change="validateTicket">
                    <ticket-form></ticket-form>
                  </tab-content>
                </b-col>
              </b-row>
              <b-row>
                <b-col>
                  <tab-content title="Definições do evento" :before-change="validateDefinition">
                    <definition-form></definition-form>
                  </tab-content>
                </b-col>
              </b-row>
            </form-wizard>
          </b-row>
        </b-col>
        <!-- FORMULARIO DO EVENTO -->
      </b-row>
    </b-container>
  </section>
</template>

<script>
import infoForm from "./forms/infoForm";
import localForm from "./forms/localForm";
import ticketForm from "./forms/ticketForm";
import definitionForm from "./forms/definitionForm";
import requirementsForm from "./forms/requirementsForm";

export default {
  name: "MyForm",
  components: {
    infoForm,
    localForm,
    ticketForm,
    definitionForm,
    requirementsForm
  },
  data() {
    return {};
  },
  methods: {
    onComplete: function(){
      alert('Concluido');
    },
    validateFirstTab: function() {
      return this.$refs.validateInfo.validate();
    },
    validateSecondTab: function() {
      return this.$refs.validateLocation.validate();
    },
    validateFirstTab: function() {
      return this.$refs.validateTicket.validate();
    },
    validateSecondTab: function() {
      return this.$refs.validateDefinition.validate();
    },
    validateFirstTab: function() {
      return this.$refs.validateRequisite.validate();
    }
  }
};
</script>
