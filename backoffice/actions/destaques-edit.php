<?php

require_once "../../GLOBAL.php";
require_once $raiz . "/backoffice/helpers/helpers_list.php";
verificarLogin();

$check_form = isset($_GET["id"]) && isset($_GET["id_livro"]) && isset($_GET["observacao"]);
if($check_form){
    $id = $_GET["id"];
    $id_livro = $_GET["id_livro"];
    $observacao = $_GET["observacao"];
    $sql = "UPDATE destaques SET id_livro='$id_livro', observacao='$observacao' WHERE id=$id";
    $asd = iduSQL($sql);
    header("location: ../destaques.php");
    exit();
}
else{
    $lista_livros = getListaLivros();
    $destaque = getDestaqueEspecifico($_GET["id"]);
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
        <h3>Editar (DESTAQUES)</h3>
        <form action="">
            <input type="hidden" name="id" value="<?= $_GET["id"]; ?>">
            <label for="id_livro">Livro do DESTAQUE:</label>
            <br>
            <select name="id_livro">
                <?php foreach($lista_livros as $l): ?>
                    <option value="<?= $l["id"]; ?>" <?= ($l["id"] == $destaque["id_livro"]) ? "selected" : ""; ?>><?= $l["titulo"]; ?></option>
                <?php endforeach; ?>
            </select>

            <br><br><br>

            <label for="observacao">Observação do DESTAQUE:</label>
            <br>
            <input type="text" name="observacao" value="<?= $destaque["observacao"]; ?>" required>

            <br><br><br>

            <input type="submit" value="Editar">
        </form>
    </div>
    
</body>
</html>