<!-- CAIXA BRANCA -->
<div id="caixa-branca" class="container-fluid">

  <div class="row">
    <div class="col caixa-branca-simples">
      <div class="col-11 subtitulo-topo">AUTOR</div>
      <div class="col-11 t1">SOBRE MIM</div>
    </div>
  </div>

</div>

<!-- MEIO -->
<main class="container meio mx-auto">

  <div class="row">
    <img id="imagem-autor" class="mx-auto" src="<?= getAutor()["imagem"]; ?>">
  </div>

  <div class="row p mt-5">
    <!-- DESKTOP -->
    <div class="col-10 mx-auto d-none d-md-block">
      <?= getAutor()["texto"]; ?>
    </div>
    <!-- MOBILE -->
    <div class="col-10 mx-auto d-block d-md-none">
      <div id="texto-abreviado">
        <?= substr(getAutor()["texto"], 0, 500) . "..."; ?>
      </div>
      <div id="texto-completo">
        <?= getAutor()["texto"]; ?>
      </div>
    </div>
  </div>

  <div class="row mt-5">
    <div class="col-10 mx-auto pt-0 pt-md-4 d-flex flex-column flex-wrap align-items-center align-items-md-start gap-3">
      <div id="botao-vermais" class="botao-vermais d-block d-md-none" onclick="abrirTextoAutor()"></div>
      <div class="botao-voltar-atras" onclick="voltarAtras()"></div>
    </div>
  </div>

</main>
