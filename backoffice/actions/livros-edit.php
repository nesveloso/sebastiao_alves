<?php

require_once "../../GLOBAL.php";
require_once $raiz . "/backoffice/helpers/helpers_list.php";

$check_form = isset($_GET["id"]) && isset($_GET["imagem"]) && isset($_GET["titulo"]) && isset($_GET["texto"]);

if($check_form){
    date_default_timezone_set("Europe/Lisbon");
    $data_atual = date("H:i - d/m/Y");
    $id = $_GET["id"];
    $imagem = $_GET["imagem"];
    $titulo = $_GET["titulo"];
    $texto = $_GET["texto"];
    $sql = "UPDATE livros SET imagem='$imagem', titulo='$titulo', texto='$texto', data_atualizacao='$data_atual' WHERE id=$id";
    iduSQL($sql);
    header("location: ../livros.php");
}
else{
    header("location: ../livros.php");
}



?>