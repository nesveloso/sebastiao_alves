<!-- CAIXA BRANCA -->
<div class="container-fluid">
  <div class="row">
      <div class="caixa-branca col d-none d-lg-flex">
          <div class="div-imagem-autor">
            <img class="imagem-autor" src="<?= getImagemHome(); ?>" alt="Escritor">
          </div>

          <div class="texto-caixa-branca col px-5 py-3">
            <div class="texto-caixa-branca-cima">
              <div class="t1 col-12">Bem-vindo ao meu site</div>
              <div class="p col-12 mt-4">
                <?= getTextoHome(); ?>
              </div>
            </div>
            <div class="col-12 d-flex justify-content-end texto-caixa-branca-baixo">
              <a href="autor.php" class="botao-sabermais"></a>
            </div>
          </div>
      </div>

      <!-- MOBILE -->
      <div class="caixa-branca col-12 d-block d-lg-none">
          <div class="div-imagem-autor col-12 text-center">
            <img class="imagem-autor" src="<?= getImagemHome(); ?>" alt="Escritor">
          </div>

          <div class="texto-caixa-branca col mt-5">
            <div class="texto-caixa-branca-cima">
              <div class="t1 col-12">Bem-vindo ao meu site</div>
              <div class="p col-12 mt-4">
                <?= getTextoHome(); ?>
              </div>
            </div>

            <div class="col-12 mt-4 pt-3 d-flex justify-content-center texto-caixa-branca-baixo">
              <div class="botao-sabermais"></div>
            </div>
          </div>
      </div>
  </div>

</div>

<main class="container meio mx-auto">

  <div class="row ultimos-livros">

    <div class="col-11 px-4 mx-auto ultimos-livros-titulo t1">Últimos Livros</div>
      <div class="col-11 px-4 mx-auto ultimos-livros-texto p">
        <?= getTextoUltimosLivros(); ?>
      </div>

      <div class="col-12 ultimos-livros-estante">

        <!-- LIVROS DESTAQUES -->
        <?php for($i=1; $i<=3; $i++): ?>
          <?php
            $destaque_atual = getDestaqueLivro($i);
          ?>

          <?php if(isset($destaque_atual)): ?>
            <div class="livro">
              <div class="livro-img">
                <img src="<?= $destaque_atual["imagem"]; ?>" alt="<?= $destaque_atual["titulo"]; ?>">
              </div>
              <div class="livro-texto p-3">
                <div class="livro-titulo t1"><?= $destaque_atual["titulo"]; ?></div>
                <div class="livro-observacao banner-novidade"><?= $destaque_atual["observacao"]; ?></div>
                <div class="livro-sobre p">
                  <?= $destaque_atual["texto"]; ?> 
                </div>
                <div class="livro-sabermais">
                  <a class="botao-sabermais" href="livro.php?livro=<?= $destaque_atual["id"]; ?>"></a>
                </div>
              </div>
            </div>
          <?php endif; ?>
        <?php endfor; ?>

    </div>
  </div>

</main>
