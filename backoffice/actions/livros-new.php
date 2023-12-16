<?php

require_once "../../GLOBAL.php";
require_once $raiz . "/backoffice/helpers/helpers_list.php";

$check_form = isset($_GET["imagem"]) && isset($_GET["titulo"]) && isset($_GET["texto"]);

if($check_form){
    date_default_timezone_set("Europe/Lisbon");
    $data_atual = date("H:i - d/m/Y");
    $imagem = $_GET["imagem"];
    $titulo = $_GET["titulo"];
    $texto = $_GET["texto"];
    $sql = "INSERT INTO livros (imagem, titulo, texto, data_criacao, data_atualizacao) VALUES ('$imagem', '$titulo', '$texto', '$data_atual', '$data_atual')";
    iduSQL($sql);
    header("location: ../livros.php");
}
else{
    header("location: ../livros.php");
}



?>