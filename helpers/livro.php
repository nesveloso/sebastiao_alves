<?php

function getLivro($id){
    $sql = "SELECT * FROM livros WHERE id=$id";
    $livro = selectSQLUnico($sql);
    return $livro;
}

function getListaLivros(){
    $sql = "SELECT id,titulo FROM livros";
    $lista = selectSQL($sql);
    return $lista;
}

function getTodosLivros(){
    $sql = "SELECT * FROM livros";
    $lista = selectSQL($sql);
    return $lista;
}

?>