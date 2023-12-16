<?php

function getRedeSocial($campo){
    $sql = "SELECT $campo FROM redes_sociais WHERE id=1";
    $resultado = selectSQLUnico($sql);
    return $resultado["$campo"];
}

?>