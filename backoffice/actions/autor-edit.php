<?php

require_once "../../GLOBAL.php";
require_once $raiz . "/backoffice/helpers/helpers_list.php";
verificarLogin();

$autor = getAutor();

$check_form = isset($_GET["imagem"]) && isset($_GET["texto"]);
if($check_form){
    date_default_timezone_set("Europe/Lisbon");
    $data_atual = date("H:i - d/m/Y");
    $imagem = $_GET["imagem"];
    $texto = $_GET["texto"];
    $sql = "UPDATE autor SET imagem='$imagem', texto='$texto', data_atualizacao='$data_atual' WHERE id=1";
    $asd = iduSQL($sql);
    header("location: ../autor.php");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?= getAssets(); ?>/css/backoffice.css">
    <script src="https://cdn.ckeditor.com/ckeditor5/31.0.0/classic/ckeditor.js"></script>
    <title>Backoffice</title>
</head>
<body>

    <div class="quadro">
        <h3>Editar (AUTOR)</h3>
        <form action="">
            <label for="imagem">Link da imagem do autor na página (AUTOR): </label>
            <br>
            <input type="text" name="imagem" value="<?= $autor["imagem"]; ?>" required>
            <a target="popup" href="../../tinyfilemanager/tinyfilemanager.php" onclick="window.open('../../tinyfilemanager/tinyfilemanager.php','name','width=800,height=600')">
                <button type="button">Buscar Imagens</button>
            </a>

            <br><br><br>

            <label for="texto">Texto do autor na página (AUTOR):</label>
            <br>
            

            <textarea id="editor" name="texto" required>
                <?= $autor["texto"]; ?>
            </textarea>
            <script>
                ClassicEditor
                    .create( document.querySelector( '#editor' ) )
                    .catch( error => {
                        console.error( error );
                    } );
            </script>

            <br><br><br>

            <input type="submit" value="Editar">
        </form>
    </div>
    
</body>
</html>