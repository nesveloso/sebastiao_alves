<?php

verificarLogin();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?= getAssets(); ?>/css/backoffice.css">
    <title>Backoffice</title>
</head>
<body>

    <h1>Backoffice (REDES SOCIAIS)</h1>

    <nav>
    <a class="<?= ($pag_atual == "inicio") ? "active" : ""; ?>" href="../backoffice/inicio.php">Início</a>
        <a class="<?= ($pag_atual == "carousel") ? "active" : ""; ?>" href="../backoffice/carousel.php">Carousel</a>
        <a class="<?= ($pag_atual == "home") ? "active" : ""; ?>" href="../backoffice/home.php">Home</a>
        <a class="<?= ($pag_atual == "autor") ? "active" : ""; ?>" href="../backoffice/autor.php">Autor</a>
        <a class="<?= ($pag_atual == "livros") ? "active" : ""; ?>" href="../backoffice/livros.php">Livros</a>
        <a class="<?= ($pag_atual == "destaques") ? "active" : ""; ?>" href="../backoffice/destaques.php">Destaques</a>
        <a class="<?= ($pag_atual == "contactos") ? "active" : ""; ?>" href="../backoffice/contactos.php">Contactos</a>
        <a class="<?= ($pag_atual == "redes") ? "active" : ""; ?>" href="../backoffice/redes.php">Redes</a>
        <a class="<?= ($pag_atual == "configuracoes") ? "active" : ""; ?>" href="../backoffice/configuracoes.php">Configurações</a>
        <a class="<?= ($pag_atual == "sair") ? "active" : ""; ?>" href="../backoffice/sair.php">Sair</a>
    </nav>

    <div class="quadro">
        <h3>Instagram</h3>
        <p><?= getRedeSocial("facebook"); ?></p>
        
        <br>
        <hr>
        <br>

        <h3>Facebook</h3>
        <p><?= getRedeSocial("instagram"); ?></p>

        <br>
        <hr>
        <br>

        <h3>Linkedin</h3>
        <p><?= getRedeSocial("linkedin"); ?></p>

        <br>
        <hr>
        <br>
        
        <a href="../backoffice/actions/redes-edit.php">
            <button class="botoes">Editar REDES SOCIAIS</button>
        </a>
    </div>
    
</body>
</html>