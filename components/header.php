<!DOCTYPE html>
<html lang="pt">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sebastião Alves</title>
  <!-- CSS -->
  <link rel="stylesheet" href="<?= getAssets(); ?>fonts/fonts.css">
  <link rel="stylesheet" href="<?= getAssets(); ?>css/estilo.css">
  <!-- BOOTSTRAP -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>
  <!-- JQUERY -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <!-- JS -->
  <script>
    var base_url = "<?= $base_url; ?>";
    var base_url_assets = "<?= getAssets(); ?>";
    var pag_atual = "<?= $pag_atual; ?>";
  </script>
  <script src="<?= getAssets(); ?>javascript/funcoes.js"></script>
    
</head>
<body>

  <div id="parte-superior" class="container-fluid">
      <header class="row">
          <!-- TOPO -->
          <div class="col-11 mx-auto d-none d-md-block">
              <div class="row">
                  <div class="col-12 titulo-pagina titulo">Sebastião Alves</div>
              </div>
              <hr class="row linha-titulo-pagina">
              <div class="row">
                  <nav class="navbar navbar-expand-md">
                      <div class="container-fluid">
                        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                          <ul class="navbar-nav">
                            <li class="nav-item">
                              <a class="nav-link menus <?= ($pag_atual == "home") ? "active" : ""; ?>" aria-current="page" href="<?= $base_url; ?>">Home</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link menus <?= ($pag_atual == "autor") ? "active" : ""; ?>" href="<?= $base_url . "autor.php"; ?>">Autor</a>
                            </li>
                            <li id="menu-livros" class="nav-item dropdown">
                              <a class="nav-link menus <?= ($pag_atual == "livro") ? "active" : ""; ?>" href="#" id="botao-livros" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Livros
                              </a>
                              <ul class="dropdown-menu" aria-labelledby="botao-livros">
                                <?php $lista_livros = getListaLivros(); ?>
                                <?php foreach($lista_livros as $l): ?>
                                  <?php if($pag_atual == "livro" && $livro_id == $l["id"]): ?>
                                    <li><a class="dropdown-item submenus active" href="<?= $base_url . "livro.php?livro=" . $l["id"]; ?>"><?= $l["titulo"]; ?></a></li>
                                  <?php else: ?>
                                    <li><a class="dropdown-item submenus" href="<?= $base_url . "livro.php?livro=" . $l["id"]; ?>"><?= $l["titulo"]; ?></a></li>
                                  <?php endif; ?>
                                <?php endforeach; ?>
                              </ul>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link menus <?= ($pag_atual == "contactos") ? "active" : ""; ?>" href="<?= $base_url . "contactos.php"; ?>">Contactos</a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </nav>
              </div>
          </div>

          <!-- MOBILE -->
          <div class="col-12 mx-auto d-block d-md-none">
              <div class="row">
                  <div class="col-12 titulo-pagina titulo mobile">
                    <div>Sebastião Alves</div>
                    <button onclick="menuMobile()" class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon">
                        <img id="botao-menu-mobile" src="<?= getAssets(); ?>imagens/desktop/menu.svg" alt="Menu">
                      </span>
                    </button>
                  </div>
              </div>
              <hr class="row linha-titulo-pagina">
              <div class="row">
                  <nav id="nav-mobile" class="navbar navbar-expand-md mobile">
                      <div class="container-fluid">
                        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                          <ul class="navbar-nav mobile">
                            <li class="nav-item">
                              <a class="nav-link menus <?= ($pag_atual == "home") ? "active" : ""; ?>" aria-current="page" href="<?= $base_url; ?>">Home</a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link menus <?= ($pag_atual == "autor") ? "active" : ""; ?>" href="<?= $base_url . "autor.php"; ?>">Autor</a>
                            </li>
                            <li class="nav-item dropdown">
                              <a class="nav-link menus <?= ($pag_atual == "livro") ? "active" : ""; ?>" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Livros
                              </a>
                              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                              <?php $lista_livros = getListaLivros(); ?>
                                <?php foreach($lista_livros as $l): ?>
                                  <?php if($pag_atual == "livro" && $livro_id == $l["id"]): ?>
                                    <li><a class="dropdown-item submenus active" href="<?= $base_url . "livro.php?livro=" . $l["id"]; ?>"><?= $l["titulo"]; ?></a></li>
                                  <?php else: ?>
                                    <li><a class="dropdown-item submenus" href="<?= $base_url . "livro.php?livro=" . $l["id"]; ?>"><?= $l["titulo"]; ?></a></li>
                                  <?php endif; ?>
                                <?php endforeach; ?>
                              </ul>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link menus <?= ($pag_atual == "contactos") ? "active" : ""; ?>" href="<?= $base_url . "contactos.php"; ?>">Contactos</a>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </nav>
              </div>
          </div>

      </header>
      
      <!-- Carousel Desktop -->
      <?php
        $carousel_desktop = getBannersDesktop();
      ?>
      <div class="row d-none d-md-block">

          <div id="carousel-desktop" class="carousel slide p-0" data-bs-ride="carousel">
              <div class="carousel-indicators">
                <?php for($i=0; $i<count($carousel_desktop); $i++): ?>
                  <?php if($i == 0): ?>
                    <button type="button" data-bs-target="#carousel-desktop" data-bs-slide-to="<?= $i; ?>" class="active" aria-current="true" aria-label="Slide <?= $i+1; ?>"></button>
                  <?php else: ?>
                    <button type="button" data-bs-target="#carousel-desktop" data-bs-slide-to="<?= $i; ?>" aria-label="Slide <?= $i+1; ?>"></button>
                  <?php endif; ?>
                <?php endfor; ?>
              </div>
              <div class="carousel-inner">
                <?php for($i=0; $i<count($carousel_desktop); $i++): ?>
                  <div class="carousel-item <?= ($i == 0) ? "active" : ""; ?>">
                    <img src="<?= $carousel_desktop[$i]["imagem"]; ?>" class="d-block w-100" alt="<?= $carousel_desktop[$i]["titulo"]; ?>">
                    <div class="carousel-caption desktop">
                      <div class="observacao banner-novidade desktop"><?= $carousel_desktop[$i]["observacao"]; ?></div>
                      <br>
                      <h5 class="banner-titulo desktop"><?= $carousel_desktop[$i]["titulo"]; ?></h5>
                      <br>
                      <p class="banner-texto desktop">
                        <?= $carousel_desktop[$i]["subtitulo"]; ?>
                      </p>
                      <br>
                      <div class="banner-sabermais desktop">
                        <a class="botao-sabermais" href="<?= $carousel_desktop[$i]["link"]; ?>"></a>
                      </div>
                    </div>
                  </div>
                <?php endfor; ?>
              </div>
            </div>

      </div>

      <!-- Mobile -->
      <?php
        $carousel_mobile = getBannersMobile();
      ?>
      <div class="row d-block d-md-none">

          <div id="carousel-mobile" class="carousel slide p-0" data-bs-ride="carousel">
              <div class="carousel-indicators mobile">
                <?php for($i=0; $i<count($carousel_mobile); $i++): ?>
                  <?php if($i == 0): ?>
                    <button type="button" data-bs-target="#carousel-mobile" data-bs-slide-to="<?= $i; ?>" class="active" aria-current="true" aria-label="Slide <?= $i; ?>"></button>
                  <?php else: ?>
                    <button type="button" data-bs-target="#carousel-mobile" data-bs-slide-to="<?= $i; ?>" aria-label="Slide <?= $i; ?>"></button>
                  <?php endif; ?>
                <?php endfor; ?>
              </div>
              <div class="carousel-inner">
                <?php for($i=0; $i<count($carousel_mobile); $i++): ?>
                  <div class="carousel-item <?= ($i == 0) ? "active" : ""; ?>">
                    <img src="<?= $carousel_mobile[$i]["imagem"]; ?>" class="d-block w-100" alt="<?= $carousel_mobile[$i]["titulo"]; ?>">
                    <div class="carousel-caption mobile">
                      <div class="observacao banner-novidade mobile"><?= $carousel_mobile[$i]["observacao"]; ?></div>
                      <br>
                      <h5 class="banner-titulo mobile"><?= $carousel_mobile[$i]["titulo"]; ?></h5>
                      <br>
                      <p class="banner-texto mobile">
                        <?= $carousel_mobile[$i]["subtitulo"]; ?>
                      </p>
                      <br>
                      <div class="banner-sabermais mobile">
                        <a class="botao-sabermais" href="<?= $carousel_mobile[$i]["link"]; ?>"></a>
                      </div>
                    </div>
                  </div>
                <?php endfor; ?>
              </div>
            </div>

      </div>

  </div>
