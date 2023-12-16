<?php

require_once "../../GLOBAL.php";
require_once $raiz . "/backoffice/helpers/helpers_list.php";
verificarLogin();

$check_form = isset($_GET["telefone"]) && isset($_GET["morada"]) && isset($_GET["email"]) && isset($_GET["horario"]);
if($check_form){
    date_default_timezone_set("Europe/Lisbon");
    $data_atual = date("H:i - d/m/Y");
    $telefone = $_GET["telefone"];
    $morada = $_GET["morada"];
    $email = $_GET["email"];
    $horario = $_GET["horario"];
    $sql = "UPDATE contactos SET telefone='$telefone', morada='$morada', email='$email', horario='$horario', data_atualizacao='$data_atual' WHERE id=1";
    $asd = iduSQL($sql);
    header("location: ../contactos.php");
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
        <h3>Editar (CONTACTOS)</h3>
        <form action="">

            <label for="telefone">Telefone: </label>
            <br>
            <input type="text" name="telefone" value="<?= getcontactos("telefone"); ?>" required>

            <br><br><br>

            <label for="morada">Morada: </label>
            <br>
            <input type="text" name="morada" value="<?= getcontactos("morada"); ?>" required>

            <br><br><br>

            <label for="email">Email: </label>
            <br>
            <input type="text" name="email" value="<?= getcontactos("email"); ?>" required>

            <br><br><br>

            <label for="horario">Horário: </label>
            <br>
            <input type="text" name="horario" value="<?= getcontactos("horario"); ?>" required>

            <br><br><br>

            <input type="submit" value="Editar">
        </form>
    </div>
    
</body>
</html>