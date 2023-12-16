<?php

function login($nome, $senha){
    $sql = "SELECT * FROM usuarios WHERE nome='$nome' AND senha='$senha'";
    $usuario = selectSQLUnico($sql);
    if(isset($usuario)){
        session_start();
        $_SESSION["id"] = $usuario["id"];
        $_SESSION["data_ultimo_acesso"] = $usuario["data_ultimo_acesso"];
        $_SESSION["nome"] = $usuario["nome"];
        $_SESSION["senha"] = $usuario["senha"];
        salvarDataAcesso();
        header("location: backoffice/inicio.php");
        exit();
    }
    else{
        return false;
    }
}

function logout(){
    session_destroy();
}

function verificarLogin(){
    session_start();
    $check_session = isset($_SESSION["nome"]) && isset($_SESSION["id"]) &&  isset($_SESSION["data_ultimo_acesso"]);
    if(!$check_session){
        header("location: ../backoffice.php");
    }
}

function salvarDataAcesso(){
    date_default_timezone_set("Europe/Lisbon");    
    $data_atual = date("H:i - d/m/Y");
    $id = $_SESSION["id"];
    $sql = "UPDATE usuarios SET data_ultimo_acesso='$data_atual' WHERE id=$id";
    iduSQL($sql);
}

?>