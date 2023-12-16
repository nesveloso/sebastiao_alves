<?php

// Globais
$base_url = "http://localhost/sebastiao_alves/";
$pag_atual;
$raiz = __DIR__;

function getAssets(){
    global $base_url;
    return $base_url . "assets/";
}

// Novos dados de hospedagem
$base_dados = [
    "host" => "localhost",
    "user" => "root",
    "password" => "",
    "database" => "sebastiao_alves_bd"
];


$pdo = new PDO("mysql:dbname=" . $base_dados["database"] . ";host=" . $base_dados["host"], $base_dados["user"], $base_dados["password"]);

//Funçoes
function selectSQL($sql){
    global $pdo;
    $query = $pdo->query($sql);
    return $query->fetchAll(PDO::FETCH_ASSOC);
}

function selectSQLUnico($sql){
    global $pdo;
    $query = $pdo->query($sql);
    return $query->fetch(PDO::FETCH_ASSOC);
}

function iduSQL($sql){
    global $pdo;
    $pdo->query($sql);
}

?>