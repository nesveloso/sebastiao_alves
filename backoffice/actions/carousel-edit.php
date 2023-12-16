<?php

require_once "../../GLOBAL.php";
require_once $raiz . "/backoffice/helpers/helpers_list.php";

$check_form = isset($_GET["id"]) && isset($_GET["imagem"]) &&
isset($_GET["titulo"]) && isset($_GET["subtitulo"]) && isset($_GET["link"]);

if($check_form){
    date_default_timezone_set("Europe/Lisbon");
    $data_atual = date("H:i - d/m/Y");
    $id = $_GET["id"];
    $imagem = $_GET["imagem"];
    $titulo = $_GET["titulo"];
    $subtitulo = $_GET["subtitulo"];
    $link = $_GET["link"];
    $tabela = "banners_" . $_GET["tipo"];
    $sql = "UPDATE $tabela SET imagem='$imagem', titulo='$titulo', subtitulo='$subtitulo', link='$link', data_atualizacao='$data_atual' WHERE id=$id";
    iduSQL($sql);
    header("location: ../carousel.php");
}
else{
    header("location: ../carousel.php");
}



?>