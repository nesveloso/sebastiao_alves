<?php

function getDestaqueLivro($id){
    $sql = "SELECT * FROM destaques WHERE id=$id";
    $destaque = selectSQLUnico($sql);
    if(isset($destaque)){
        $livro = getLivro($destaque["id_livro"]);
        $livro["observacao"] = $destaque["observacao"];
        if(strlen($livro["texto"]) > 200){
            $livro["texto"] = substr($livro["texto"], 0, 200) . "...";
        }
        return $livro;
    }
    else{
        return null;
    }
}

function getTodosDestaques(){
    $sql = "SELECT * FROM destaques";
    $destaques = selectSQL($sql);
    return $destaques;
}

function getDestaqueEspecifico($id){
    $sql = "SELECT * FROM destaques WHERE id=$id";
    $destaque = selectSQLUnico($sql);
    return $destaque;
}

?>