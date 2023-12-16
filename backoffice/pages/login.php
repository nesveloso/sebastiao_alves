<?php

session_start();
$check_session = isset($_SESSION["nome"]) && isset($_SESSION["id"]) && isset($_SESSION["data_ultimo_acesso"]);
if($check_session){
    header("location: backoffice/inicio.php");
}

$check_form = isset($_POST["nome"]) && isset($_POST["senha"]);
if($check_form){
    $nome = $_POST["nome"];
    $senha = $_POST["senha"];
    $esta_logado = login($nome, $senha);
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

    <h1>Bem-vindo ao Backoffice</h1>

    <div class="quadro">
        <h3>Login</h3>
        <?php if(isset($esta_logado) && !$esta_logado): ?>
            <div class="erro">Login Inválido</div>
        <?php endif; ?>
        <form action="" method="post" autocomplete="off">
            <input type="text" name="nome" placeholder="Usuário" style="width: 169px;" required autofocus>
            <br><br>
            <input type="password" name="senha" placeholder="Senha" required>
            <br><br>
            <input type="submit" value="Entrar">
        </form>
    </div>
    
</body>
</html>