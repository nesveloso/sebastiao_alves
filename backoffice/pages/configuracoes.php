<?php

verificarLogin();

$check_form = isset($_POST["antiga"]) && isset($_POST["nova1"]) && isset($_POST["nova2"]);
if($check_form){
    $senha_antiga = $_POST["antiga"];
    $senha_nova = $_POST["nova1"];
    if($_SESSION["senha"] == $senha_antiga){
        $sql = "UPDATE usuarios SET senha='$senha_nova' WHERE id=$_SESSION[id]";
        iduSQL($sql);
        $_SESSION["senha"] = $senha_nova;
        echo "Sucesso!";
        //header("location: configuracoes.php");
    }
    else{
        echo "Senha atual Incorrecta!";
    }
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

    <style>
        input[type="password"]{
            width: 250px;
            text-align: center;
        }
    </style>

</head>
<body>

    <h1>Backoffice (CONFIGURAÇÕES)</h1>

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
        <h3>Alterar Senha</h3>
        <form action="" method="POST" id="formulario">
            <input type="password" placeholder="Senha atual" name="antiga">
            <br><br>
            <input type="password" placeholder="Nova Senha" name="nova1" id="nova1">
            <br><br>
            <input type="password" placeholder="Digite Novamente a Nova Senha" name="nova2" id="nova2">
            <br><br>
            <button type="button" onclick="verificarSenhas()">Alterar Senha</button>
        </form>
    </div>

    <script>
        function verificarSenhas(){
            let form = document.getElementById("formulario");
            let nova1 = document.getElementById("nova1").value;
            let nova2 = document.getElementById("nova2").value;
            if(nova1 != nova2){
                alert("As novas senhas digitadas não são iguais.");
            }
            else{
                form.submit();
            }
        }
    </script>
    
</body>
</html>