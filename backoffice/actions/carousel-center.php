<?php

require_once "../../GLOBAL.php";
require_once $raiz . "/backoffice/helpers/helpers_list.php";
verificarLogin();

$editar = isset($_GET["editar"]);
$deletar = isset($_GET["deletar"]);
$criar = false;

if($editar){
    $tipo = $_GET["tipo"];
    if($tipo == "desktop"){
        $banner = getBannersDesktopEspecifico($_GET["editar"]);
    }
    else{
        $banner = getBannersMobileEspecifico($_GET["editar"]);
    }
}
elseif($deletar){
    $tipo = $_GET["tipo"];
    if($tipo == "desktop"){
        $banner = getBannersDesktopEspecifico($_GET["deletar"]);
    }
    else{
        $banner = getBannersMobileEspecifico($_GET["deletar"]);
    }
}
else{
    $criar = true;
    $tipo = $_GET["tipo"];
}

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

    <!-- EDITAR -->
    <?php if($editar): ?>
        <div class="quadro">
            <h3>Editar (Banner <?= ($tipo == "desktop") ? "Desktop" : "Mobile"; ?>)</h3>
            <form action="carousel-edit.php">
                <input type="hidden" name="id" value="<?= $_GET["editar"] ?>">
                <input type="hidden" name="tipo" value="<?= $_GET["tipo"] ?>">
                <label for="imagem">Link da imagem do Banner: </label>
                <br>
                <input type="text" name="imagem" value="<?= $banner["imagem"]; ?>" required>
                <a target="popup" href="../../tinyfilemanager/tinyfilemanager.php" onclick="window.open('../../tinyfilemanager/tinyfilemanager.php','name','width=800,height=600')">
                    <button type="button">Buscar Imagens</button>
                </a>

                <br><br><br>

                <label for="titulo">Título do Banner: </label>
                <br>
                <input type="text" name="titulo" value="<?= $banner["titulo"]; ?>" required>
                
                <br><br><br>

                <label for="subtitulo">Subtítulo do Banner:</label>
                <br>
                <textarea name="subtitulo" class="text-area" required>
                    <?= $banner["subtitulo"]; ?>
                </textarea>

                <br><br><br>

                <label for="titulo">Link do Banner 'Saber Mais': </label>
                <br>
                <input type="text" name="link" value="<?= $banner["link"]; ?>" required>

                <br><br><br>

                <input type="submit" value="Editar">
            </form>
        </div>
    
    <!-- DELETAR -->
    <?php elseif($deletar): ?>
        <div class="quadro">
            <input type="hidden" name="id" value="<?= $_GET["deletar"] ?>">
            <input type="hidden" name="tipo" value="<?= $tipo ?>">
            <label for="">Apagar Banner <?= $tipo; ?> (<?= $banner["titulo"]; ?>)?</label>
            <br><br>
            <img src="<?= $banner["imagem"]; ?>" alt="Banner" height="150">
            <br><br>
            <a href="carousel-delete.php?id=<?= $_GET["deletar"]; ?>&tipo=<?= $tipo; ?>"><button>Deletar</button></a>
            <a href="../carousel.php"><button>Cancelar</button></a>
        </div>

    <!-- CRIAR -->
    <?php elseif($criar): ?>
        <div class="quadro">
            <h3>Criar Novo (BANNER <?= strtoupper($tipo); ?>)</h3>
            <form action="carousel-new.php">
                <input type="hidden" name="tipo" value="<?= $_GET["tipo"] ?>">
                <label for="imagem">Link da imagem do Banner: </label>
                <br>
                <input type="text" name="imagem" required>
                <a target="popup" href="../../tinyfilemanager/tinyfilemanager.php" onclick="window.open('../../tinyfilemanager/tinyfilemanager.php','name','width=800,height=600')">
                    <button type="button">Buscar Imagens</button>
                </a>

                <br><br><br>

                <label for="titulo">Título do Banner: </label>
                <br>
                <input type="text" name="titulo" required>
                
                <br><br><br>

                <label for="subtitulo">Descrição do Banner:</label>
                <br>
                <textarea name="subtitulo" class="text-area" required></textarea>

                <br><br><br>

                <label for="link">Link do Banner 'Saber Mais': </label>
                <br>
                <input type="text" name="link" required>
                
                <br><br><br>

                <input type="submit" value="Criar">
            </form>
        </div>

    <?php endif; ?>
    
</body>
</html>