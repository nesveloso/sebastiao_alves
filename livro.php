<?php

//Globais
require_once "GLOBAL.php";
require_once "helpers/helpers_list.php";

$pag_atual = "livro";
$livro_id = 0;

if(isset($_GET["livro"])){
    $livro_id = $_GET["livro"];
}

//Topo
require_once "components/header.php";

//Meio
require_once "pages/livro.php";

//Footer
require_once "components/footer.php";

?>