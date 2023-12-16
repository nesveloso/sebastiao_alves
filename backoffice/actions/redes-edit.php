<?php

require_once "../../GLOBAL.php";
require_once $raiz . "/backoffice/helpers/helpers_list.php";
verificarLogin();

$check_form = isset($_GET["instagram"]) && isset($_GET["facebook"]) && isset($_GET["linkedin"]);
if($check_form){
    date_default_timezone_set("Europe/Lisbon");
    $data_atual = date("H:i - d/m/Y");
    $facebook = $_GET["facebook"];
    $instagram = $_GET["instagram"];
    $linkedin = $_GET["linkedin"];
    $sql = "UPDATE redes_sociais SET facebook='$facebook', instagram='$instagram', linkedin='$linkedin', data_atualizacao='$data_atual' WHERE id=1";
    $asd = iduSQL($sql);
    header("location: ../redes.php");
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
        <h3>Editar (REDES SOCIAIS)</h3>
        <form action="">

            <label for="telefone">Facebook: </label>
            <br>
            <input type="text" name="facebook" value="<?= getRedeSocial("facebook"); ?>" required>

            <br><br><br>

            <label for="morada">Instagram: </label>
            <br>
            <input type="text" name="instagram" value="<?= getRedeSocial("instagram"); ?>" required>

            <br><br><br>

            <label for="email">Linkedin: </label>
            <br>
            <input type="text" name="linkedin" value="<?= getRedeSocial("linkedin"); ?>" required>

            <br><br><br>

            <input type="submit" value="Editar">
        </form>
    </div>
    
</body>
</html>