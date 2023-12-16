<?php

require_once "../../GLOBAL.php";
require_once $raiz . "/backoffice/helpers/helpers_list.php";

$check_form = isset($_GET["id"]) && isset($_GET["tipo"]);

if($check_form){
    $id = $_GET["id"];
    $tabela = "banners_" . $_GET["tipo"];
    $sql = "DELETE FROM $tabela WHERE id=$id";
    iduSQL($sql);
    header("location: ../carousel.php");
}
else{
    header("location: ../carousel.php");
}



?>