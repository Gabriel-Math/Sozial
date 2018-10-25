<template>
    <b-form>
        <!-- RESUMO DO EVENTO -->
        <b-col md="6" v-show="showAbstract">

          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h2">{{ form.event_name }}</p>
            </b-col>
          </b-row>
          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5">Informações</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Data de inicio: {{ form.begin_date_event }} às {{ form.begin_hour_event }}</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Data do fim: {{ form.end_date_event }} às {{ form.end_hour_event }}</p>
            </b-col>
          </b-row>

          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5">Localização</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Local: {{ form.event_location }}</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Rua/Avenida: {{ form.event_street }},{{ form.event_street_number }}</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Cidade: {{ form.event_city }}-{{ form.selectedState }}</p>
            </b-col>
          </b-row>

          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5">Ingresso(s)</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Preço do ingresso: {{ form.event_ticket_price }}</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Data de inicio: {{ form.date_ticket_sell }} às {{ form.hour_ticket_sell }}</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Data do fim: {{ form.hour_ticket_sell_over }} às {{ form.hour_ticket_sell_over }}</p>
            </b-col>
          </b-row>

          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5">Programação</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> {{ form.event_program }}</p>
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
    </b-form>
</template>
