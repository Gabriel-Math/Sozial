<template>
    <b-form>
      <div class="event_block my-4" style="padding: 2rem 3rem; text-align: left;">
        <!-- RESUMO DO EVENTO -->
        <b-col md="12">
          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h2" style="color: black;">{{ nome }}</p>
            </b-col>
          </b-row>
          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5" style="color: black;">Informações</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Data de inicio: {{ bdate }} às {{ bhour }}</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Data do fim: {{ edate }} às {{ ehour }}</p>
            </b-col>
          </b-row>

          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5" style="color: black;">Localização</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Local: {{ place }}</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Rua/Avenida: {{ adress.logradouro }}, {{ adress.numero }}</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Cidade: {{ adress.localidade }}-{{ adress.uf }}</p>
            </b-col>
          </b-row>

          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5" style="color: black;">Ingresso(s)</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Preço do ingresso: R${{ tprice }}</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Data de inicio: {{ dbticket }} às {{ hbticket }}</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Data do fim: {{ deticket }} às {{ heticket }}</p>
            </b-col>
          </b-row>

          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5" style="color: black;">Programação</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> {{ program }}</p>
            </b-col>
          </b-row>

          <b-row class="justify-content-md-center text-center">
            <b-col md="8">
              <p class="h5" style="color: black;">Resultado dos requisitos:</p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Orçamento: R$X.XXX,XX </p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Total em venda de ingresso: R$X.XXX,XX </p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Total em compra de produtos: R$X.XXX,XX </p>
            </b-col>
          </b-row>
          <b-row>
            <b-col>
              <p> Quantidade a comprar dos produtos: X </p>
            </b-col>
          </b-row>

        </b-col>
        <!-- RESUMO DO EVENTO -->
      </div>
    </b-form>
</template>

<script>

export default {
  data () {
    return {
      nome: '',
      bdate: '',
      bhour: '',
      edate: '',
      ehour: '',
      program: '',
      place: '',
      adress: [],
      tprice: '',
      dbticket: '',
      hdticket: '',
      deticket: '',
      heticket: ''
    }
  },
  mounted () {
    this.nome = localStorage.name
    this.bdate = localStorage.bdate
    this.bhour = localStorage.bhour
    this.edate = localStorage.edate
    this.ehour = localStorage.ehour
    this.program = localStorage.program

    this.place = localStorage.place
    var test = localStorage.endereco
    this.adress = JSON.parse(test)

    this.tprice = localStorage.tprice
    this.dbticket = localStorage.dbticket
    this.hbticket = localStorage.hbticket
    this.deticket = localStorage.deticket
    this.heticket = localStorage.heticket
  }
}
</script>
