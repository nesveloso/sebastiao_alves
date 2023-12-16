<?php

function getImagemHome(){
    $sql = "SELECT imagem FROM home WHERE id=1";
    $resultado = selectSQLUnico($sql);
    return $resultado["imagem"];
}

function getTextoHome(){
    $sql = "SELECT texto FROM autor WHERE id=1";
    $resultado = selectSQLUnico($sql);
    $texto = $resultado["texto"];

    if(strlen($texto) > 1000){
        return substr($texto, 0, 1000) . "...";
    }


    else{
        return $texto;
    }
    
}

function getTextoUltimosLivros(){
    $sql = "SELECT ultimos_livros FROM home WHERE id=1";
    $resultado = selectSQLUnico($sql);
    return $resultado["ultimos_livros"];
}

?>