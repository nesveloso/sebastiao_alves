<?php

function getAutor(){
    $sql = "SELECT * FROM autor WHERE id=1";
    $autor = selectSQLUnico($sql);
    return $autor;
    
}

?>