<?php

require_once "../../GLOBAL.php";
require_once $raiz . "/backoffice/helpers/helpers_list.php";
verificarLogin();

$editar = isset($_GET["editar"]);
$deletar = isset($_GET["deletar"]);
$criar = false;

if($editar){
    $livro = getLivro($_GET["editar"]);
}
elseif($deletar){
    $livro = getLivro($_GET["deletar"]);
}
else{
    $criar = true;
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

    <!-- EDITAR -->
    <?php if($editar): ?>
        <div class="quadro">
            <h3>Editar (LIVRO)</h3>
            <form action="livros-edit.php">
                <input type="hidden" name="id" value="<?= $_GET["editar"] ?>">
                <label for="imagem">Link da imagem da capa do livro: </label>
                <br>
                <input type="text" name="imagem" value="<?= $livro["imagem"]; ?>" required>
                <a target="popup" href="../../tinyfilemanager/tinyfilemanager.php" onclick="window.open('../../tinyfilemanager/tinyfilemanager.php','name','width=800,height=600')">
                    <button type="button">Buscar Imagens</button>
                </a>

                <br><br><br>

                <label for="titulo">Título do livro: </label>
                <br>
                <input type="text" name="titulo" value="<?= $livro["titulo"]; ?>" required>
                
                <br><br><br>

                <label for="texto">Descrição do Livro:</label>
                <br>
                <textarea id="editor" name="texto" required>
                    <?= $livro["texto"]; ?>
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
    
    <!-- DELETAR -->
    <?php elseif($deletar): ?>
        <div class="quadro">
            <input type="hidden" name="id" value="<?= $_GET["deletar"] ?>">
            <label for="">Apagar Livro (<?= $livro["titulo"]; ?>)?</label>
            <br><br>
            <img src="<?= $livro["imagem"]; ?>" alt="Capa do Livro" height="150">
            <br><br>
            <a href="livros-delete.php?id=<?= $_GET["deletar"]; ?>"><button>Deletar</button></a>
            <a href="../livros.php"><button>Cancelar</button></a>
        </div>

    <!-- CRIAR -->
    <?php elseif($criar): ?>
        <div class="quadro">
            <h3>Criar Novo (LIVRO)</h3>
            <form action="livros-new.php">
                <label for="imagem">Link da imagem da capa do livro: </label>
                <br>
                <input type="text" name="imagem" required>
                <a target="popup" href="../../tinyfilemanager/tinyfilemanager.php" onclick="window.open('../../tinyfilemanager/tinyfilemanager.php','name','width=800,height=600')">
                    <button type="button">Buscar Imagens</button>
                </a>

                <br><br><br>

                <label for="titulo">Título do livro: </label>
                <br>
                <input type="text" name="titulo" required>
                
                <br><br><br>

                <label for="texto">Descrição do Livro:</label>
                <br>
                <textarea id="editor" name="texto" required>

                </textarea>
                <script>
                    ClassicEditor
                        .create( document.querySelector( '#editor' ) )
                        .catch( error => {
                            console.error( error );
                        } );
                </script>

                <br><br><br>

                <input type="submit" value="Criar">
            </form>
        </div>

    <?php endif; ?>
    
</body>
</html>