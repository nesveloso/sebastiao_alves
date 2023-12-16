<?php

function getContactos($campo){
    $sql = "SELECT $campo FROM contactos WHERE id=1";
    $resultado = selectSQLUnico($sql);
    return $resultado["$campo"];
}

?>