<template>
  <div>
    <section class="product_begin">
      <b-container class="text-center pt-5 pb-5">
        <b-row class="justify-content-md-center">
          <b-col md="10">
            <p class="h2">Gaste menos e lucre mais com <span style="color:#007bff">eventos</span></p>
          </b-col>
        </b-row>
        <b-row class="justify-content-md-center pb-4">
          <b-col md="10">
            <p class="h5">Rápido e fácil, que fará seu evento render mais por menos!</p>
          </b-col>
        </b-row>
        <b-row class="justify-content-md-center">
          <b-col md="8" class="form-group">
            <b-form action="../event">
              <b-input-group>
                <b-form-input size="lg" type="email" required placeholder="Digite o seu e-mail e vamos começar!"></b-form-input>
                <b-input-group-append>
                  <b-btn type="submit" variant="outline-primary">Enviar</b-btn>
                </b-input-group-append>
              </b-input-group>
            </b-form>
          </b-col>
        </b-row>
      </b-container>
    </section>

    <section class="product_description">
      <b-container class="py-4" style="color:white;">
        <b-row class="justify-content-md-center text-center">
          <b-col md="4">
            <b-img fluid class="rounded" src="https://i.imgur.com/idDVYPT.png"/>
            <p><strong>Com tudo que você precisa.</strong> Defina todos os requisitos necessarios para seu evento e lhe daremos o melhor orçamento!</p>
          </b-col>
          <b-col md="4">
            <b-img fluid class="rounded" src="https://i.imgur.com/KykcvPR.png"/>
            <p><strong>Rápido e fácil.</strong> Monte seu evento, veja o resultado na hora e receba tudo no seu e-mail sem gastar nada!</p>
          </b-col>
          <b-col md="4">
            <b-img fluid class="rounded" src="https://i.imgur.com/HGU3las.png"/>
            <p><strong>Diversas opções.</strong> Veja diversas opções de orçamento e escolha qual melhor combina com o seu perfil!</p>
          </b-col>
        </b-row>
      </b-container>
    </section>

    <section class="product_video">
      <b-container class="py-4">
        <b-row class="justify-content-md-center text-center" align-v="center">
          <b-col md="6">
            <p> Conheça um pouco mais de como funciona a Sozial e entre você também! </p>
          </b-col>
          <b-col md="6">
            <b-embed type="iframe" aspect="16by9" src="https://www.youtube.com/embed/aq1ZJo1I8Ig"></b-embed>
          </b-col>
        </b-row>
      </b-container>
    </section>
  </div>
</template>

<script>
export default {
  name: 'MyFeatures'
}
</script>
