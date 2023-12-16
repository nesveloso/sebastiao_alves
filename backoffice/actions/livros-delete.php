<?php

require_once "../../GLOBAL.php";
require_once $raiz . "/backoffice/helpers/helpers_list.php";

$check_form = isset($_GET["id"]);

if($check_form){
    $id = $_GET["id"];
    $sql = "DELETE FROM livros WHERE id=$id";
    iduSQL($sql);
    header("location: ../livros.php");
}
else{
    header("location: ../livros.php");
}



?>