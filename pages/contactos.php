<!-- CAIXA BRANCA -->
<div id="caixa-branca" class="container-fluid">

  <div class="row">
    <div class="col caixa-branca-simples">
      <div class="col-11 subtitulo-topo">CONTACTOS</div>
      <div class="col-11 t1">PODE CONTACTAR-ME ATRAVÉS DO E-MAIL OU TELEFONE</div>
    </div>
  </div>

</div>

<!-- MEIO -->
<main class="container meio mx-auto">

  <div class="row text-center d-flex justify-content-center">
    
    <div class="col-12 col-md-3">
      <div class="col-12 contactos-conteudo">Telefone</div>
      <div class="col-9 mx-auto mt-2 p"><?= getContactos("telefone"); ?></div>
    </div>

    <div class="col-12 col-md-3 mt-5 mt-md-0">
      <div class="col-12 contactos-conteudo">Morada</div>
      <div class="col-9 mx-auto mt-2 p"><?= getContactos("morada"); ?></div>
    </div>

    <div class="col-12 col-md-3 mt-5 mt-md-0">
      <div class="col-12 contactos-conteudo">Email</div>
      <div class="col-9 mx-auto mt-2 p"><?= getContactos("email"); ?></div>
    </div>
    
  </div>

  <hr class="divisor-contactos">

  <div class="row text-center">

    <div class="col-12">
      <div class="col-12 contactos-conteudo">Horário</div>
      <div class="col-9 mx-auto mt-2 p"><?= getContactos("horario"); ?></div>
    </div>

  </div>

</main>
