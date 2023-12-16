<?php

$livro_actual = getLivro($livro_id);

?>

<!-- CAIXA BRANCA -->
<div id="caixa-branca" class="container-fluid">

  <div class="row">
    <div class="col caixa-branca-simples">
      <div class="col-11 subtitulo-topo">LIVROS</div>
      <div class="col-11 t1"><?= (isset($livro_actual)) ? $livro_actual["titulo"] : "Livro não encontrado"; ?></div>
    </div>
  </div>

</div>

<!-- MEIO -->
<main class="container meio mx-auto">

  <?php if(isset($livro_actual)): ?>
    <div class="row">
      <div class="col-10 mx-auto">
        <div class="div-imagem-livro">
          <img src="<?= $livro_actual["imagem"]; ?>" alt="<?= $livro_actual["titulo"]; ?>">
        </div>
        <div class="p col-12 col-md">
          <?= $livro_actual["texto"]; ?>
          <div href="#" style="float: right;" class="botao-voltar-atras pagina-livro" onclick="voltarAtras()"></div>
        </div>
      </div>
    </div>

  <?php else: ?>

    <div class="row">
      <div class="col text-center">
        Livro não encontrado.
      </div>
    </div>

  <?php endif; ?>

</main>
